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
VALUES ('126', '名词', '名词', 'subject_type', '试卷类别', 10, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('127', '代词', '代词', 'subject_type', '试卷类别', 20, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('128', '形容词', '形容词', 'subject_type', '试卷类别', 30, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('129', '动词', '动词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('130', '冠词', '冠词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('131', '副词', '副词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('132', '连词', '连词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('133', '介词', '介词', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('134', '系助情态动词', '系助情态动词', 'subjec
t_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('135', '从句', '从句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('136', '主谓一致', '主谓一致', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('137', '疑问句', '疑问句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('138', '感叹句', '感叹句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('139', '动词时态', '动词时态', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('140', '被动语态', '被动语态', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');
INSERT INTO engweb.sys_dict (id, value, label, type, description, sort, parent_id, create_by, create_date, update_by, update_date, remarks, del_flag)
VALUES ('141', '疑问句', '疑问句', 'subject_type', '试卷类别', 40, '0', '1', now() , '1', now(), null, '0');





