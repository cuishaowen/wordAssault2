-- ----------------------------
-- Table structure for `enguser`
-- ----------------------------
DROP TABLE IF EXISTS `enguser`;
CREATE TABLE `enguser` (
   `ID_` varchar(64) NOT NULL COMMENT '编号',
   `IMG_` varchar(255) DEFAULT NULL COMMENT '头像',
   `NAME_` varchar(20) DEFAULT NULL COMMENT '姓名',
   `SEX_` char(1) DEFAULT NULL COMMENT '性别',
   `AGE_` int(11) DEFAULT NULL COMMENT '年龄',
   `TEL_` varchar(20) DEFAULT NULL COMMENT '手机号码',
   `WE_CHAT_` varchar(20) DEFAULT NULL COMMENT '微信号',
   `LOGIN_NAME_` varchar(50) DEFAULT NULL COMMENT '登录名',
   `PASSWORD_` varchar(50) DEFAULT NULL COMMENT '密码',
   `SCHOOL_` varchar(20) DEFAULT NULL COMMENT '学校',
   `CLASS_R` varchar(20) DEFAULT NULL COMMENT '班级',
   `CITY_` varchar(20) DEFAULT NULL COMMENT '城市',
   `PROVINCE` varchar(20) DEFAULT NULL COMMENT '省份',
   `CREATE_DATE_` datetime DEFAULT NULL COMMENT '创建时间',
   `UPDATE_DATE_` datetime DEFAULT NULL COMMENT '修改时间',
   `REMARKS_` varchar(255) DEFAULT NULL COMMENT '备注',
   `DEL_FLAG_` char(1) DEFAULT NULL COMMENT '删除标识 1 正常 2 删除',
   `BLANK_ONE_` text COMMENT '预留字段1',
   `BLANK_TWO_` text COMMENT '预留字段2',
   `LOGIN_TIME_` int(11) DEFAULT NULL COMMENT '登录次数',
   `NUM_` int(11) DEFAULT '12530' COMMENT '编号',
   `MP3_TYPE` char(1) DEFAULT NULL COMMENT '''(1英式发音，2美式发音)''',
   `J_PAN_TYPE` char(1) DEFAULT NULL COMMENT '(1软键盘，2硬键盘)',
   PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of enguser
-- ----------------------------

-- ----------------------------
-- Table structure for errorExplain
-- ----------------------------
DROP TABLE IF EXISTS `everyday_memory_word`;
create table everyday_memory_word
(
    ID_          varchar(64)  not null comment '每日记忆单词'
        primary key,
    EVERYDAY_    date         not null comment '每日日期',
    USER_ID_     varchar(64)  null comment '用户id',
    COURSE_ID_   varchar(64)  null comment '课程id',
    CHAPTER_ID_  varchar(64)  null comment '章节id',
    WORD_ID_     varchar(64)  null comment '单词id',
    CREATE_DATE_ datetime     null comment '创建时间',
    UPDATE_DATE_ datetime     null comment '修改时间',
    REMARKS_     varchar(255) null comment '备注',
    DEL_FLAG_    char         null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_   text         null,
    BLANK_TWO_   text         null
)
    comment '每日记忆表';

-- ----------------------------
--  Records of  everyday_memory_word
-- ----------------------------

-- ----------------------------
-- Table structure for enguser_option
-- ----------------------------
DROP TABLE IF EXISTS `enguser_option`;
CREATE TABLE `enguser_option` (
      `ID_` varchar(64) NOT NULL COMMENT '用户操作表id',
      `USER_ID_` varchar(64) DEFAULT NULL COMMENT '用户id',
      `LOGIN_IN_TIME_` datetime DEFAULT NULL COMMENT '登入时间',
      `LOGIN_OUT_TIME_` datetime DEFAULT NULL COMMENT '登出时间',
      `CURRENT_TIME_` date DEFAULT NULL COMMENT '当前时间',
      `AUTO_LOGIN_OUT_` char(1) DEFAULT NULL COMMENT 'T 是 F 不是',
      `CURRENT_STUDY_TIME_` varchar(5) DEFAULT NULL COMMENT '本次学习时间',
      `CREATE_DATE_` datetime DEFAULT NULL COMMENT '创建时间',
      `UPDATE_DATE_` datetime DEFAULT NULL COMMENT '修改时间',
      `REMARKS_` varchar(255) DEFAULT NULL COMMENT '备注',
      `DEL_FLAG_` char(1) DEFAULT NULL COMMENT '删除标识 1 正常 2 删除',
      `BLANK_ONE_` text,
      `BLANK_TWO_` text,
      PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作表';
-- ----------------------------
--  Records of  enguser_option
-- ----------------------------

-- ----------------------------
-- Table structure for errorExplain
-- ----------------------------
DROP TABLE IF EXISTS `error_explain`;
create table error_explain
(
    ID_ varchar(64) not null,
    WRONG_ varchar(255) null comment '错误释义',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint errorExplain_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='混淆释义表';
-- ----------------------------
--  Records of  errorExplain
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
create table course
(
    ID_ varchar(64) not null,
    NAME_ varchar(20) null comment '课程名称',
    DETAIL_ varchar(50) null comment '详情',
    STATUS_ varchar(2) null comment '课程状态 ',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint course_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';
-- ----------------------------
--  Records of  course
-- ----------------------------

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
create table chapter
(
    ID_ varchar(64) not null,
    PARENT_ID_ varchar(64) null comment '父级id (课程id)',
    NAME_ varchar(20) null comment '章节名称',
    DETAIL_ varchar(50) null comment '简述',
    STATUS_ varchar(2) null comment '章节状态 ',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint chapter_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='章节表';
-- ----------------------------
--  Records of  chapter
-- ----------------------------

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
create table word
(
    ID_ varchar(64) not null,
    ENGLISH_ varchar(255) null comment '英语单词',
    PHONETIC_TRANSCRIPTION_ varchar(255) null comment '音标',
    ENG_VOICE_ varchar(255) null comment '英式语音',
    AME_VOICE_ varchar(255) null comment '美式语音',
    IMG_ varchar(255) null comment '图片',
    CHINESE_ varchar(255) null comment '中文释义',
    CREATE_DATE_ datetime null comment '创建时间',
    CREATE_BY_ varchar(64) null comment '创建人',
    UPDATE_DATE_ datetime null comment '修改时间',
    UPDATE_BY_ varchar(64) null comment '修改人',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    BLANK_THREE_ text null,
    BLANK_FOUR_ text null,
    constraint word_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单词表';
-- ----------------------------
--  Records of  word
-- ----------------------------

-- ----------------------------
-- Table structure for chapter_word
-- ----------------------------
DROP TABLE IF EXISTS `chapter_word`;
create table chapter_word
(
    ID_ varchar(64) not null,
    COURSE_ID_ varchar(64) null comment '课程id',
    CHAPTER_ID_ varchar(64) null comment '章节id',
    WORD_IDS_ varchar(4000) null comment '单词池',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint chapter_word_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='章节单词表';
-- ----------------------------
--  Records of  chapter_word
-- ----------------------------

-- ----------------------------
-- Table structure for chapter_example
-- ----------------------------
DROP TABLE IF EXISTS `chapter_example`;
create table chapter_example
(
    ID_ varchar(64) not null,
    COURSE_ID_ varchar(64) null comment '课程id',
    CHAPTER_ID_ varchar(64) null comment '章节id',
    WORD_EXAMPLE_ID_ varchar(64) null comment '单词例句id',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint chapter_example_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单词例句关联表';
-- ----------------------------
-- Table structure for chapter_example
-- ----------------------------

-- ----------------------------
-- Table structure for word_example
-- ----------------------------
DROP TABLE IF EXISTS `word_example`;
create table word_example
(

    ID_ varchar(64) not null,
    WORD_ID_ varchar(64) null comment '单词id',
    EXAMPLE_ varchar(64) null comment '例句',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint word_example_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单词例句关联表';
-- ----------------------------
--  Records of  word_example
-- ----------------------------

-- ----------------------------
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
create table user_course
(
    ID_ varchar(64) not null,
    USER_ID_ varchar(64) null comment '用户id',
    COURSE_ID_ varchar(64) null comment '课程id',
    IS_OPEN_ varchar(2) null comment '是否开通 1 开通 2 未开通',
    STATUS_ char(2) null comment '用户课程状态',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    END_DATE_ datetime null comment '结束时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    SCORE varchar(64) null  comment '分数',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint user_course_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户课程表';
-- ----------------------------
--  Records of  user_course
-- ----------------------------

-- ----------------------------
-- Table structure for user_chapter
-- ----------------------------
DROP TABLE IF EXISTS `user_chapter`;
create table user_chapter
(
    ID_           varchar(64)         not null
        primary key,
    USER_ID_      varchar(64)         null comment '用户id',
    CHAPTER_ID_   varchar(64)         null comment '章节id',
    STUDY_STATUS_ varchar(2)          null comment '学习状态 1未开始 2 学习中 3 完成',
    IS_OPEN_      char(2) default '2' null comment '开通状态 1，开通  2，未开通',
    CREATE_DATE_  datetime            null comment '创建时间',
    UPDATE_DATE_  datetime            null comment '修改时间',
    REMARKS_      varchar(255)        null comment '备注',
    DEL_FLAG_     char                null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_    text                null,
    BLANK_TWO_    text                null
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户章节表';
-- ----------------------------
--  Records of  user_chapter
-- ----------------------------

-- ----------------------------
-- Table structure for user_chapter_word
-- ----------------------------
DROP TABLE IF EXISTS `user_chapter_word`;
create table user_chapter_word
(
    ID_           varchar(64)      not null
        primary key,
    USER_ID_      varchar(64)      null comment '用户id',
    COURSE_ID_    varchar(64)      null comment '课程id',
    CHAPTER_ID_   varchar(64)      null comment '章节id',
    WORD_ID_      varchar(64)      null comment '单词id',
    STUDY_STATUS_ char             null comment '学习状态 1 待学习 2 待复习 3 已完成',
    STRANGE_WORD_ char default 'F' null comment '生词状态 T 是 F 不是',
    SKILLED_WORD_ char default 'F' null comment '熟词状态 T 是 F 不是',
    IS_MEMO_      char default 'F' null comment '是否备忘 T 是 F 不是',
    WRONG_TIME_   int              null comment '错误次数',
    CREATE_DATE_  datetime         null comment '创建时间',
    UPDATE_DATE_  datetime         null comment '修改时间',
    REMARKS_      varchar(255)     null comment '备注',
    DEL_FLAG_     char             null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_    text             null,
    BLANK_TWO_    text             null
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户章节单词表';
-- ----------------------------
--  Records of  user_chapter_word
-- ----------------------------



-- --------------------题目------------------------------
-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
create table subject
(
    ID_          varchar(64)  not null comment '练习题id'
        primary key,
    SORT_        varchar(10) null comment '题目分类',
    VERSION_     varchar(64) null comment '版本信息',
    NUMBER_      varchar(25)  null comment '编号',
    QUESTION_    varchar(255) null comment '问题',
    SELECT_A_    varchar(255) null comment '选择a',
    SELECT_B_    varchar(255) null comment '选择b',
    SELECT_C_    varchar(255) null comment '选择c',
    SELECT_D_    varchar(255) null comment '选择d',
    ANSWER_      char         null comment '正确答案 A B C D',
    ANALYSIS_    varchar(255) null comment '答案解析',
    CREATE_DATE_ datetime     null comment '创建时间',
    UPDATE_DATE_ datetime     null comment '修改时间',
    REMARKS_     varchar(255) null comment '备注',
    DEL_FLAG_    char         null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_   text         null,
    BLANK_TWO_   text         null
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目表';
-- ----------------------------
--  Records of  subject
-- ----------------------------

-- ----------------------------
--  Records of  subject
-- ----------------------------
DROP TABLE IF EXISTS `subject_version`;
CREATE TABLE subject_version
(
    id_ varchar(64) PRIMARY KEY NOT NULL,
    name_ varchar(64) COMMENT '语法题名称',
    type_ varchar(10) COMMENT '类型',
    create_date_ date COMMENT '语法题个数',
    update_date_ date,
    blank_one_ varchar(255),
    blank_two_ varchar(255)
);
ALTER TABLE subject_version COMMENT = '语法题版本';
-- ----------------------------
--  Records of  subject
-- ----------------------------
-- ----------------------------
-- Table structure for user_subject
-- ----------------------------
DROP TABLE IF EXISTS `user_chapter_subject`;
DROP TABLE IF EXISTS `user_subject`;
create table user_subject
(
    ID_ varchar(64) not null comment '用户练习题id',
    USER_ID_ varchar(64) null comment '用户id',
    SUBJECT_VERSION_ID_ VARCHAR(64) NULL COMMENT '题目版本id',
    SUBJECT_ID_ varchar(64) null comment '练习题id',
    STUDY_STATUS_ varchar(2) null comment '用户章节题目的学习状态 1.待学习 2.待复习 3.已完成',
    IS_MEMO_ boolean null comment '是否备忘 true 是 false 不是',
    IS_WRONG_ boolean null comment '是否错题 true 是  flase 不是',
    WRONG_TIME_ int null comment '错误次数',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint user_subject_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户题目关联表';
-- ----------------------------
--  Records of  user_subject
-- ----------------------------

-- ----------------------------
--  Records of  user_enguser
-- ----------------------------
DROP TABLE IF EXISTS `user_enguser`;
create table user_enguser
(
    ID_ varchar(64) not null comment '校长学生关联id',
    USER_ID_ varchar(64) null comment '校长id',
    ENGUSER_ID_ varchar(64) null comment '用户id',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint user_enguser_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='校长用户关联表';
--  Records of  user_chapter_subject
-- ----------------------------

-- ----------------------------
--  Records of  user_subject_version
-- ----------------------------
CREATE TABLE user_subject_version
(
    id_ varchar(64) PRIMARY KEY NOT NULL,
    user_id_ varchar(64) COMMENT '用户id',
    subject_version_name_ varchar(100) COMMENT '题目版本名称',
    subject_type_ varchar(20) COMMENT '题目类型',
    score_ varchar(20) COMMENT '得分',
    create_date_ date,
    update_date_ date,
    blank_one_ varchar(255),
    blank_two_ varchar(255)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户题目版本';
-- ----------------------------
--  Records of  user_subject_version
-- ----------------------------

