package com.thinkgem.jeesite.modules.word.pojo;

import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.word.entity.Word;

import java.util.Date;

public class SkilledWord {

    private Word word;

    private UserChapterWord userChapterWord;

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public UserChapterWord getUserChapterWord() {
        return userChapterWord;
    }

    public void setUserChapterWord(UserChapterWord userChapterWord) {
        this.userChapterWord = userChapterWord;
    }
}
