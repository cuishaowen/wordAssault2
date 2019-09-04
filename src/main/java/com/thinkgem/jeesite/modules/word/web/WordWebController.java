package com.thinkgem.jeesite.modules.word.web;

import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "word")
public class WordWebController {

    @Autowired
    private WordService wordService;

    @ResponseBody
    @RequestMapping(value = "selectRandWordWithoutThis")
    public List<Word> selectRandWordWithoutThis(String id){
        return wordService.selectRandWordWithoutThis(id);
    }

    @ResponseBody
    @RequestMapping(value = "selectTenRandWord")
    public List<Word> selectTenRandWord(String courseId){
        return wordService.selectTenRandWord(courseId);
    }

}
