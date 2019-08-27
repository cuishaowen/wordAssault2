package com.thinkgem.jeesite.modules.sys.service;

import com.thinkgem.jeesite.common.service.ServiceException;
import com.thinkgem.jeesite.common.utils.IdGen;
import com.thinkgem.jeesite.modules.enguser.dao.EnguserDao;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.Date;

@Service
public class RegisterValidateService {

    @Autowired
    private EnguserDao enguserDao;

    // 处理注册
//    public void processregister(Enguser enguser){
//        ///邮件的内容
//        enguser.setStatus("0");
//        enguser.setRegistertime(new Date());
//
//        // 密码加密
//        String password = MD5Util.encode2hex(enguser.getPassword());
//        enguser.setPassword(password);
//
//        String email = enguser.getEmail();
//        StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
//        sb.append("<a href=\"http://localhost:8080/springmvc/user/register?action=activate&email=");
//        sb.append(email);
//        sb.append("&validateCode=");
//        sb.append(enguser.getValidateCode());
//        sb.append("\">http://localhost:8080/springmvc/user/register?action=activate&email=");
//        sb.append(email);
//        sb.append("&validateCode=");
//        sb.append(enguser.getValidateCode());
//        sb.append("</a>");
//
//        //发送邮件
//        SendEmail.send(email, sb.toString());
//        System.out.println("发送邮件");
//    }

    /**
     * 处理激活
     * @throws ParseException
     */
    ///传递激活码和email过来
//    public void processActivate(String email , String validateCode)throws ServiceException, ParseException {
//        //数据访问层，通过email获取用户信息
//        Enguser user=enguserDao.findByEmail(email);
//        //验证用户是否存在
//        if(user!=null) {
//            //验证用户激活状态
//            if(user.getStatus().equals("0")) {
//                ///没激活
//                Date currentTime = new Date();//获取当前时间
//                //验证链接是否过期
//                if(currentTime.before(user.getRegistertime())) {
//                    //验证激活码是否正确
//                    if(validateCode.equals(user.getValidateCode())) {
//                        //激活成功， //并更新用户的激活状态，为已激活
//                        user.setStatus("1");//把状态改为激活
//                        enguserDao.update(user);
//                    } else {
//                        throw new ServiceException("激活码不正确");
//                    }
//                } else { throw new ServiceException("激活码已过期！");
//                }
//            } else {
//                throw new ServiceException("邮箱已激活，请登录！");
//            }
//        } else {
//            throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");
//        }
//
//    }
}
