package com.thinkgem.jeesite.modules.usercourse.service;

import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.usercourse.dao.UserCourseDao;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Component
@EnableScheduling
@Lazy(false)
@Service
public class userCourseTaskService extends CrudService<UserCourseDao, UserCourse> {

    @Autowired
    private UserCourseDao userCourseDao;

    private final static String IS_OPEN_OPEN = "1";
    private final static String IS_OPEN_CLOSE = "1";
    private final static Logger log = LogManager.getLogger(userCourseTaskService.class);

    /* quartz支持年份，而Spring Task不支持,所以cron只支持6位
     * 定时任务方法不能带参数，不能有返回值
     * 每日凌晨两点执行
     * 关闭过期用户课程
     */
    @Scheduled(cron="0 0 2 * * ?")
    @Transactional(readOnly = false)
    public void updateUserCourseIsOpenTask() {
        Calendar calendar= Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
        calendar.setTime(new Date());
        calendar.set(Calendar.DAY_OF_MONTH,calendar.get(Calendar.DAY_OF_MONTH)-120);
        List<UserCourse> userCourses = userCourseDao.findExpiredCourses(calendar.getTime(),IS_OPEN_OPEN);
        for (UserCourse userCourse : userCourses){
            log.info("userId:" + userCourse.getEngUserId());
            log.info("courseId:" + userCourse.getCourseId());
            userCourse.setIsOpen(IS_OPEN_CLOSE);
            userCourseDao.update(userCourse);
        }
    }
}
