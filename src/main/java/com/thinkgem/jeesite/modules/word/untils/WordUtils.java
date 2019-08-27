package com.thinkgem.jeesite.modules.word.untils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.chapterword.service.ChapterWordService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public class WordUtils {

    public static List<Word> getWordWithoutSelected(String chapterId) {
        WordService wordService = SpringContextHolder.getBean(WordService.class);
        ChapterWordService chapterWordService = SpringContextHolder.getBean(ChapterWordService.class);

        // 查询所有的单词信息
        List<Word> wordList = wordService.findList(null);

        // 查询所有已选择的单词信息
        ChapterWord chapterWord = chapterWordService.getByChapterId(chapterId).get(0);
        String words = chapterWord.getWordIds();
        String[] arr = words.split(",");

        // 在所有单词中 移除已选择的单词
        Iterator<Word> iterator = wordList.iterator();
        while (iterator.hasNext()) {
            Word word = iterator.next();
            for (int i = 0; i < arr.length; i++){
                if (word.getId().equals(arr[i])){
                    iterator.remove();
                }
            }
        }
        return wordList;
    }

    // 查询章节下选择的所有单词
    public static List<Word> getWordByChapter(String chapterId) {
        List<Word> wordList = new ArrayList<Word>();

        // 根据章节id 插叙章节单词信息
        ChapterWordService chapterWordService = SpringContextHolder.getBean(ChapterWordService.class);
        List<ChapterWord> chapterWords = chapterWordService.getByChapterId(chapterId);
        ChapterWord chapterWord = chapterWords.get(0);

        // 遍历单词id 查询单词信息
        WordService wordService= SpringContextHolder.getBean(WordService.class);
        String words = chapterWord.getWordIds();
        String[] arr = words.split(",");
        for (int i = 0; i < arr.length; i++){
            Word word = wordService.get(arr[i]);
            wordList.add(word);
        }
        return wordList;
    }

    // 获取所有单词
    public static List<Word> getWord(){
        WordService wordService = SpringContextHolder.getBean(WordService.class);
        return wordService.findList(null);
    }
}
