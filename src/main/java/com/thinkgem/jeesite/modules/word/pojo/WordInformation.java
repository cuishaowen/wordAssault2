package com.thinkgem.jeesite.modules.word.pojo;

import com.thinkgem.jeesite.common.persistence.BaseEntity;
import com.thinkgem.jeesite.common.persistence.DataEntity;
import com.thinkgem.jeesite.modules.chapterexample.entity.ChapterExample;
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;

import java.util.List;


public class WordInformation extends DataEntity<WordInformation> {

    private Word word;

    private List<String> errorCh;

    private WordExample wordExample;

    private ChapterExample chapterExample;

    private UserChapterWord userChapterWord;

    public UserChapterWord getUserChapterWord() {
        return userChapterWord;
    }

    public void setUserChapterWord(UserChapterWord userChapterWord) {
        this.userChapterWord = userChapterWord;
    }

    public List<String> getErrorCh() {
        return errorCh;
    }

    public void setErrorCh(List<String> errorCh) {
        this.errorCh = errorCh;
    }

    public ChapterExample getChapterExample() {
        return chapterExample;
    }

    public void setChapterExample(ChapterExample chapterExample) {
        this.chapterExample = chapterExample;
    }

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public WordExample getWordExample() {
        return wordExample;
    }

    public void setWordExample(WordExample wordExample) {
        this.wordExample = wordExample;
    }

}
