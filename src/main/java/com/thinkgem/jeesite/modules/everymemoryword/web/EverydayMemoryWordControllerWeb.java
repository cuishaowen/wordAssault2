package com.thinkgem.jeesite.modules.everymemoryword.web;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.everymemoryword.entity.EverydayMemoryWord;
import com.thinkgem.jeesite.modules.everymemoryword.service.EverydayMemoryWordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "everyDayWords")
public class EverydayMemoryWordControllerWeb {

    @Autowired
    private EverydayMemoryWordService everydayMemoryWordService;

    @ResponseBody
    @RequestMapping(value = "getList")
    public List<EverydayMemoryWord> getTodatWords(String courseId,String date,String enguserId){
        EverydayMemoryWord everydayMemoryWord = new EverydayMemoryWord();
        Date date1 = new Date();
        if (date != null && !date.equals("")){
            date1 = DateUtils.parseDate(date);
        }
        everydayMemoryWord.setEveryday(date1);
        everydayMemoryWord.setCourseId(courseId);
        everydayMemoryWord.setEnguserId(enguserId);
        return everydayMemoryWordService.findList(everydayMemoryWord);
    }
}
