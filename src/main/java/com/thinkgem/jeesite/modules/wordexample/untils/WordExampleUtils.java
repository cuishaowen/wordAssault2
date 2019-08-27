package com.thinkgem.jeesite.modules.wordexample.untils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
import com.thinkgem.jeesite.modules.wordexample.service.WordExampleService;

import java.util.List;

public class WordExampleUtils {

    // 获取单词关联的所有例句列表
    public static List<WordExample> getExamples(String wordId){
        WordExampleService wordExampleService = SpringContextHolder.getBean(WordExampleService.class);
        WordExample wordExample = new WordExample();
        wordExample.setWordId(wordId);
        return wordExampleService.findList(wordExample);
    }
}
