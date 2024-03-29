package com.thinkgem.jeesite.modules.userchapterword.web;

import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.word.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "userchapterword")
public class UserChapterWordWebController {
    private final static String IS_MEMO_F= "F";
    private final static String SKILL_WORD_F = "F";

    @Autowired
    private UserChapterWordService userChapterWordService;

    @ResponseBody
    @RequestMapping(value = "getWordDccx")
    public WordDccx getWordDccx(String userId, String courseId, String wordId){
        return userChapterWordService.getWordDccx(userId, courseId, wordId);
    }

    @ResponseBody
    @RequestMapping(value = "getUserChapterWordList")
    public List<UserChapterWord> getUserChapterWord(UserChapterWord userChapterWord){
        return userChapterWordService.findList(userChapterWord);
    }

    @ResponseBody
    @RequestMapping(value = "updateWord", method = RequestMethod.POST)
    public void updateWord(UserChapterWord userChapterWord){
        userChapterWord.setUpdateDate(new Date());
        userChapterWordService.save(userChapterWord);
    }

    @ResponseBody
    @RequestMapping(value = "getEveryDayWord")
    public List<EverydayMemoryWord> getEveryWord(String userId, String courseId, String date) throws ParseException {
        return userChapterWordService.getEveryWord(userId, courseId, date);
    }

    /**
     * 已学词汇
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "completeword")
    public List<CompletionWord> getCompletionWord(String userId, String courseId){
        return userChapterWordService.getCompletionWord(userId,courseId);
    }


    /**
     * 未学词汇
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "waitLearning")
    public List<WaitLearningWord> getWaitLearningWord(String userId, String courseId){
        return userChapterWordService.getWaitLearningWord(userId,courseId);
    }

    /**
     * 熟记词汇
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getSkilled")
    public List<SkilledWord> getSkilledWord(String userId, String courseId){
        return userChapterWordService.getSkilledWord(userId,courseId);
    }

    /**
     * 备忘词汇
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getStrengthenMemory")
    public List<StrengthenMemoryWord> getStrengthenMemoryWord(String userId, String courseId){
        return userChapterWordService.getStrengthenMemoryWord(userId, courseId);
    }

    /**
     * 消灭生词
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getKillCourseHard")
    public List<HardKilledWord> getKillCourseHardWord(String userId, String courseId){
        return userChapterWordService.getKillCourseHardWord(userId, courseId);
    }

    /**
     * 生词本
     * @param userId
     * @param courseId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getCourseHard")
    public List<WordInformation> getCourseHardWord(String userId, String courseId){
        return userChapterWordService.getCourseHardWord(userId, courseId);
    }

    /**
     * 获取章节下的所有的单词信息和例句
     * @param chapterId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getWordInformation")
    public List<WordInformation> getWordInformation(String chapterId){
        return userChapterWordService.getWordInformation(chapterId);
    }

    @ResponseBody
    @RequestMapping(value = "getCourseWordInformation")
    public List<WordInformation> getCourseWordInformation(String courseId){
        return userChapterWordService.getCourseWordInformation(courseId);
    }

    @ResponseBody
    @RequestMapping(value = "getAllCourseWordInformation")
    public List<WordInformation> getCSCourseWordInformation(String courseId){
        return userChapterWordService.getCSWord(courseId,null);
    }

    @ResponseBody
    @RequestMapping(value = "getCSChapterWordInformation")
    public List<WordInformation> getCSChapterWordInformation(String chapterId){
        return userChapterWordService.getCSWord(null,chapterId);
    }

//    /**
//     * 获取章节下的所有的单词信息和例句
//     * @param chapterId
//     * @return
//     */
//    @ResponseBody
//    @RequestMapping(value = "getWordInformationPage")
//    public Page<WordInformation> getWordInformationPage(String chapterId,Integer pageNum){
//        List<WordInformation> wordInformations =  userChapterWordService.getWordInformation(chapterId);
//        Page<WordInformation> wordInformationPage = new Page<WordInformation>();
//        WordInformation wordInformation = new WordInformation();
//        wordInformation.setPage(wordInformationPage);
//        wordInformationPage.setCount(wordInformations.size());
//        wordInformationPage.setPageSize(1);
//        wordInformationPage.setPageNo(pageNum);
//        wordInformationPage.setList(wordInformations);
//        return wordInformationPage;
//    }

    @ResponseBody
    @RequestMapping(value = "getCourseScoreByIds")
    public String getCourseScoreByIds(String userId, String  courseId){
        return userChapterWordService.getCourseScoreByIds(userId, courseId);
    }

    /**
     * 批量修改备忘状态
     * @param ids
     */
    @ResponseBody
    @RequestMapping(value="updateIsMemoById")
    public void updateSelectById(StringBuffer ids){
        String idStr = ids.toString();
        String[] idArr = idStr.split(",");
        UserChapterWord userChapterWord = new UserChapterWord();
        userChapterWord.setIsMemo(IS_MEMO_F);
        userChapterWordService.updateSelectById(userChapterWord,idArr);
    }

    /**
     * 批量修改熟词状态
     * @param ids
     */
    @ResponseBody
    @RequestMapping(value="updateSkillWordById")
    public void updateSkillWordById(StringBuffer ids){
        String idStr = ids.toString();
        String[] idArr = idStr.split(",");
        UserChapterWord userChapterWord = new UserChapterWord();
        userChapterWord.setSkilledWord(SKILL_WORD_F);
        userChapterWordService.updateSelectById(userChapterWord,idArr);
    }
}
