package com.thinkgem.jeesite.modules.everymemoryword.pojo;

import com.thinkgem.jeesite.modules.everymemoryword.entity.EverydayMemoryWord;
import com.thinkgem.jeesite.modules.word.entity.Word;

public class SEverydayMemoryWord {

    private Word word;

    private EverydayMemoryWord everydayMemoryWord;

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public EverydayMemoryWord getEverydayMemoryWord() {
        return everydayMemoryWord;
    }

    public void setEverydayMemoryWord(EverydayMemoryWord everydayMemoryWord) {
        this.everydayMemoryWord = everydayMemoryWord;
    }
}
