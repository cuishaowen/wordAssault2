-- ----------------------------
-- Table structure for enguser
-- ----------------------------
DROP TABLE IF EXISTS `enguser`;
create table enguser
(
    ID_ varchar(64) not null comment '编号',
    IMG_ varchar(255) null comment '头像',
    NAME_ varchar(20) null comment '姓名',
    SEX_ char(1) null comment  '性别',
    AGE_ int null comment '年龄',
    TEL_ varchar(20) null comment '手机号码',
    WE_CHAT_ varchar(20) null comment '微信号',
    LOGIN_NAME_ varchar(50) null comment '登录名',
    PASSWORD_ varchar(50) null comment '密码',
    SCHOOL_ varchar(20) null comment '学校',
    CLASS_R varchar(20) null comment '班级',
    CITY_ varchar(20) null comment '城市',
    PROVINCE varchar(20) null comment '省份',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null comment '预留字段1',
    BLANK_TWO_ text null comment '预留字段2',
    constraint enguser_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
-- ----------------------------
--  Records of  enguser
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
    ENG_VOICE_ varchar(64) null comment '英式语音',
    AME_VOICE_ varchar(64) null comment '美式语音',
    IMG_ varchar(64) null comment '图片',
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
    ID_ varchar(64) not null,
    USER_ID_ varchar(64) null comment '用户id',
    CHAPTER_WORD_ID_ varchar(64) null comment '章节单词id',
    STUDY_STATUS_ varchar(2) null comment '用户章节单词的学习状态 1.待学习 2.待复习 3.已完成',
    MEMORY_STATUS_ varchar(2) null comment '记忆状态 1.生词 2.熟词',
    IS_MEMO_ boolean null comment '是否备忘 true 是 false 不是',
    IS_WRONG_ boolean null comment '是否错词 true 是  flase 不是',
    WRONG_TIME_ int null comment '错误次数',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint user_chapter_word_pk
        primary key (ID_)
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
    SORT_        varchar(100) null comment '题目分类',
    VERSION_     varchar(100) null comment '版本信息',
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
-- Table structure for chapter_subject
-- ----------------------------
DROP TABLE IF EXISTS `chapter_subject`;
create table chapter_subject
(
    ID_ varchar(64) not null comment '章节练习题id',
    CHAPTER_ID_ varchar(64) null comment '章节id',
    SUBJECT_ID_ varchar(64) null comment '题目id',
    CREATE_DATE_ datetime null comment '创建时间',
    UPDATE_DATE_ datetime null comment '修改时间',
    REMARKS_ varchar(255) null comment '备注',
    DEL_FLAG_ char(1) null comment '删除标识 1 正常 2 删除',
    BLANK_ONE_ text null,
    BLANK_TWO_ text null,
    constraint chapter_subject_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='章节练习题关联表';
-- ----------------------------
--  Records of  chapter_subject
-- ----------------------------


-- ----------------------------
-- Table structure for user_chapter_subject
-- ----------------------------
DROP TABLE IF EXISTS `user_chapter_subject`;
create table user_chapter_subject
(
    ID_ varchar(64) not null comment '用户练习题id',
    USER_ID_ varchar(64) null comment '用户id',
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
    constraint user_chapter_subject_pk
        primary key (ID_)
)
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户题目关联表';
-- ----------------------------
--  Records of  user_chapter_subject
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
