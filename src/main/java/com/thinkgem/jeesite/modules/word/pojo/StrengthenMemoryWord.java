package com.thinkgem.jeesite.modules.word.pojo;

import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.word.entity.Word;


public class StrengthenMemoryWord {
    
    private UserChapterWord userChapterWord;
    
    private Word word;

    public UserChapterWord getUserChapterWord() {
        return userChapterWord;
    }

    public void setUserChapterWord(UserChapterWord userChapterWord) {
        this.userChapterWord = userChapterWord;
    }

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }
}
