package com.thinkgem.jeesite.modules.word.pojo;

import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;

import java.util.List;

public class WordDccx {

    private Word word;

    private List<WordExample> wordExamples;

    private UserChapterWord userChapterWord;

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public List<WordExample> getWordExamples() {
        return wordExamples;
    }

    public void setWordExamples(List<WordExample> wordExamples) {
        this.wordExamples = wordExamples;
    }

    public UserChapterWord getUserChapterWord() {
        return userChapterWord;
    }

    public void setUserChapterWord(UserChapterWord userChapterWord) {
        this.userChapterWord = userChapterWord;
    }
}
