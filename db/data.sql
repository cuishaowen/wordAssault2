-- 课程状态
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('120', '0', '体验', 'course_status', '课程状态', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('121', '1', '热销', 'course_status', '课程状态', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('122', '2', '折扣', 'course_status', '课程状态', 10, '0', '1', now() , '1', now(), null, '0');

-- 章节状态
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('123', '0', '预上架', 'chapter_status', '章节状态', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('124', '0', '上架中', 'chapter_status', '章节状态', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('125', '0', '下架', 'chapter_status', '章节状态', 10, '0', '1', now() , '1', now(), null, '0');

-- 试卷类别
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('126', '1', '名词', 'subject_type', '试卷类别', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('127', '2', '代词', 'subject_type', '试卷类别', 20, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('128', '3', '形容词', 'subject_type', '试卷类别', 30, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('129', '4', '动词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('130', '5', '冠词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('131', '6', '副词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('132', '7', '连词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('133', '8', '介词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('134', '9', '系助情态动词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('135', '10', '从句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('136', '11', '主谓一致', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('137', '12', '疑问句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('138', '13', '感叹句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('139', '14', '动词时态', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('140', '15', '被动语态', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('141', '16', '疑问句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');

-- 9.04
alter table user_subject modify IS_MEMO_ char(2) null comment '是否备忘 T 是 F 不是';
alter table user_subject modify IS_WRONG_ char(2) null comment '是否错题 T 是 F 不是';

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

DROP TABLE IF EXISTS `user_subject_version`;
CREATE TABLE user_subject_version
(
    id_ varchar(64) PRIMARY KEY NOT NULL,
    user_id_ varchar(64) COMMENT '用户id',
    subject_version_id_ varchar(100) COMMENT '题目版本名称',
    subject_type_ varchar(20) COMMENT '题目类型',
    score_ varchar(20) COMMENT '得分',
    create_date_ date,
    update_date_ date,
    blank_one_ varchar(255),
    blank_two_ varchar(255)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户题目版本';


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
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语法题版本';



