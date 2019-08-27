/*
Navicat MySQL Data Transfer

Source Server         : 192.168.31.102
Source Server Version : 50624
Source Host           : 192.168.31.102:3306
Source Database       : kexue

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-04 09:42:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
                            `id` varchar(64) NOT NULL COMMENT '编号',
                            `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
                            `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
                            `name` varchar(100) NOT NULL COMMENT '名称',
                            `sort` decimal(10,0) NOT NULL COMMENT '排序',
                            `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
                            `type` char(1) DEFAULT NULL COMMENT '区域类型',
                            `create_by` varchar(64) NOT NULL COMMENT '创建者',
                            `create_date` datetime NOT NULL COMMENT '创建时间',
                            `update_by` varchar(64) NOT NULL COMMENT '更新者',
                            `update_date` datetime NOT NULL COMMENT '更新时间',
                            `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
                            `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371000', '370000', '370000,', '威海市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371100', '370000', '370000,', '日照市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371200', '370000', '370000,', '莱芜市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371300', '370000', '370000,', '临沂市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371400', '370000', '370000,', '德州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371500', '370000', '370000,', '聊城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371600', '370000', '370000,', '滨州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371700', '370000', '370000,', '菏泽市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410100', '410000', '410000,', '郑州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410200', '410000', '410000,', '开封市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410300', '410000', '410000,', '洛阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410400', '410000', '410000,', '平顶山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410500', '410000', '410000,', '安阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410600', '410000', '410000,', '鹤壁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410700', '410000', '410000,', '新乡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410800', '410000', '410000,', '焦作市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410900', '410000', '410000,', '濮阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411000', '410000', '410000,', '许昌市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411100', '410000', '410000,', '漯河市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411200', '410000', '410000,', '三门峡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411300', '410000', '410000,', '南阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411400', '410000', '410000,', '商丘市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411500', '410000', '410000,', '信阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411600', '410000', '410000,', '周口市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411700', '410000', '410000,', '驻马店市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('419000', '410000', '410000,', '省直辖县级行政区划', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420100', '420000', '420000,', '武汉市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420200', '420000', '420000,', '黄石市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420300', '420000', '420000,', '十堰市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420500', '420000', '420000,', '宜昌市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420600', '420000', '420000,', '襄阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420700', '420000', '420000,', '鄂州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420800', '420000', '420000,', '荆门市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420900', '420000', '420000,', '孝感市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421000', '420000', '420000,', '荆州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421100', '420000', '420000,', '黄冈市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421200', '420000', '420000,', '咸宁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421300', '420000', '420000,', '随州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422800', '420000', '420000,', '恩施土家族苗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('429000', '420000', '420000,', '省直辖县级行政区划', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211303', '211300', '210000,211300,', '龙城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211321', '211300', '210000,211300,', '朝阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211322', '211300', '210000,211300,', '建平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211324', '211300', '210000,211300,', '喀喇沁左翼蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211381', '211300', '210000,211300,', '北票市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211382', '211300', '210000,211300,', '凌源市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211401', '211400', '210000,211400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211402', '211400', '210000,211400,', '连山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211403', '211400', '210000,211400,', '龙港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211404', '211400', '210000,211400,', '南票区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211421', '211400', '210000,211400,', '绥中县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211422', '211400', '210000,211400,', '建昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211481', '211400', '210000,211400,', '兴城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220101', '220100', '220000,220100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220102', '220100', '220000,220100,', '南关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220103', '220100', '220000,220100,', '宽城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220104', '220100', '220000,220100,', '朝阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220105', '220100', '220000,220100,', '二道区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220106', '220100', '220000,220100,', '绿园区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220112', '220100', '220000,220100,', '双阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220122', '220100', '220000,220100,', '农安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220181', '220100', '220000,220100,', '九台市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220182', '220100', '220000,220100,', '榆树市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220183', '220100', '220000,220100,', '德惠市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220201', '220200', '220000,220200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220202', '220200', '220000,220200,', '昌邑区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220203', '220200', '220000,220200,', '龙潭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220204', '220200', '220000,220200,', '船营区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220211', '220200', '220000,220200,', '丰满区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220221', '220200', '220000,220200,', '永吉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220281', '220200', '220000,220200,', '蛟河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220282', '220200', '220000,220200,', '桦甸市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220283', '220200', '220000,220200,', '舒兰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220284', '220200', '220000,220200,', '磐石市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220301', '220300', '220000,220300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220302', '220300', '220000,220300,', '铁西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220303', '220300', '220000,220300,', '铁东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220322', '220300', '220000,220300,', '梨树县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220323', '220300', '220000,220300,', '伊通满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220381', '220300', '220000,220300,', '公主岭市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220382', '220300', '220000,220300,', '双辽市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220401', '220400', '220000,220400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220402', '220400', '220000,220400,', '龙山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220403', '220400', '220000,220400,', '西安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220421', '220400', '220000,220400,', '东丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220422', '220400', '220000,220400,', '东辽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220501', '220500', '220000,220500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220502', '220500', '220000,220500,', '东昌区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220503', '220500', '220000,220500,', '二道江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220521', '220500', '220000,220500,', '通化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220523', '220500', '220000,220500,', '辉南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220524', '220500', '220000,220500,', '柳河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220581', '220500', '220000,220500,', '梅河口市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220582', '220500', '220000,220500,', '集安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220602', '220600', '220000,220600,', '浑江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220605', '220600', '220000,220600,', '江源区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220601', '220600', '220000,220600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220621', '220600', '220000,220600,', '抚松县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220622', '220600', '220000,220600,', '靖宇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220623', '220600', '220000,220600,', '长白朝鲜族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220681', '220600', '220000,220600,', '临江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220701', '220700', '220000,220700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220702', '220700', '220000,220700,', '宁江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220721', '220700', '220000,220700,', '前郭尔罗斯蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220722', '220700', '220000,220700,', '长岭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220723', '220700', '220000,220700,', '乾安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220724', '220700', '220000,220700,', '扶余县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220801', '220800', '220000,220800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220802', '220800', '220000,220800,', '洮北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220821', '220800', '220000,220800,', '镇赉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220822', '220800', '220000,220800,', '通榆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220881', '220800', '220000,220800,', '洮南市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220882', '220800', '220000,220800,', '大安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222401', '222400', '220000,222400,', '延吉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222402', '222400', '220000,222400,', '图们市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222403', '222400', '220000,222400,', '敦化市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222404', '222400', '220000,222400,', '珲春市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222405', '222400', '220000,222400,', '龙井市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222406', '222400', '220000,222400,', '和龙市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222424', '222400', '220000,222400,', '汪清县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222426', '222400', '220000,222400,', '安图县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230101', '230100', '230000,230100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230102', '230100', '230000,230100,', '道里区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230103', '230100', '230000,230100,', '南岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230104', '230100', '230000,230100,', '道外区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230108', '230100', '230000,230100,', '平房区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230109', '230100', '230000,230100,', '松北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230110', '230100', '230000,230100,', '香坊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230111', '230100', '230000,230100,', '呼兰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230112', '230100', '230000,230100,', '阿城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230123', '230100', '230000,230100,', '依兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230124', '230100', '230000,230100,', '方正县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230125', '230100', '230000,230100,', '宾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230126', '230100', '230000,230100,', '巴彦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230127', '230100', '230000,230100,', '木兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230128', '230100', '230000,230100,', '通河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230129', '230100', '230000,230100,', '延寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230182', '230100', '230000,230100,', '双城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230183', '230100', '230000,230100,', '尚志市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230184', '230100', '230000,230100,', '五常市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230201', '230200', '230000,230200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230202', '230200', '230000,230200,', '龙沙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230203', '230200', '230000,230200,', '建华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230204', '230200', '230000,230200,', '铁锋区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230205', '230200', '230000,230200,', '昂昂溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230206', '230200', '230000,230200,', '富拉尔基区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230207', '230200', '230000,230200,', '碾子山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230208', '230200', '230000,230200,', '梅里斯达斡尔族区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230221', '230200', '230000,230200,', '龙江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230223', '230200', '230000,230200,', '依安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230224', '230200', '230000,230200,', '泰来县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230225', '230200', '230000,230200,', '甘南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230229', '230200', '230000,230200,', '克山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230230', '230200', '230000,230200,', '克东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230231', '230200', '230000,230200,', '拜泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230281', '230200', '230000,230200,', '讷河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230302', '230300', '230000,230300,', '鸡冠区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230303', '230300', '230000,230300,', '恒山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230304', '230300', '230000,230300,', '滴道区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230306', '230300', '230000,230300,', '城子河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230307', '230300', '230000,230300,', '麻山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230321', '230300', '230000,230300,', '鸡东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230382', '230300', '230000,230300,', '密山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230401', '230400', '230000,230400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230402', '230400', '230000,230400,', '向阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230403', '230400', '230000,230400,', '工农区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230405', '230400', '230000,230400,', '兴安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230406', '230400', '230000,230400,', '东山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230407', '230400', '230000,230400,', '兴山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230422', '230400', '230000,230400,', '绥滨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230501', '230500', '230000,230500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230502', '230500', '230000,230500,', '尖山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230503', '230500', '230000,230500,', '岭东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230506', '230500', '230000,230500,', '宝山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230521', '230500', '230000,230500,', '集贤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230522', '230500', '230000,230500,', '友谊县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230524', '230500', '230000,230500,', '饶河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230601', '230600', '230000,230600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230602', '230600', '230000,230600,', '萨尔图区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230603', '230600', '230000,230600,', '龙凤区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230605', '230600', '230000,230600,', '红岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230606', '230600', '230000,230600,', '大同区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230621', '230600', '230000,230600,', '肇州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230623', '230600', '230000,230600,', '林甸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230624', '230600', '230000,230600,', '杜尔伯特蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230701', '230700', '230000,230700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230702', '230700', '230000,230700,', '伊春区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230704', '230700', '230000,230700,', '友好区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230705', '230700', '230000,230700,', '西林区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230706', '230700', '230000,230700,', '翠峦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230708', '230700', '230000,230700,', '美溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230709', '230700', '230000,230700,', '金山屯区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230710', '230700', '230000,230700,', '五营区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230711', '230700', '230000,230700,', '乌马河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230713', '230700', '230000,230700,', '带岭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230714', '230700', '230000,230700,', '乌伊岭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230715', '230700', '230000,230700,', '红星区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230722', '230700', '230000,230700,', '嘉荫县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230781', '230700', '230000,230700,', '铁力市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230801', '230800', '230000,230800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230803', '230800', '230000,230800,', '向阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140781', '140700', '140000,140700,', '介休市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140801', '140800', '140000,140800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140802', '140800', '140000,140800,', '盐湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140821', '140800', '140000,140800,', '临猗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140822', '140800', '140000,140800,', '万荣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140823', '140800', '140000,140800,', '闻喜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140824', '140800', '140000,140800,', '稷山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140825', '140800', '140000,140800,', '新绛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130000', '0', '0,', '河北省', 10, '130000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110000', '0', '0,', '北京市', 10, '110000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120000', '0', '0,', '天津市', 10, '120000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140000', '0', '0,', '山西省', 10, '140000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150000', '0', '0,', '内蒙古自治区', 10, '150000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210000', '0', '0,', '辽宁省', 10, '210000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220000', '0', '0,', '吉林省', 10, '220000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230000', '0', '0,', '黑龙江省', 10, '230000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310000', '0', '0,', '上海市', 10, '310000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320000', '0', '0,', '江苏省', 10, '320000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330000', '0', '0,', '浙江省', 10, '330000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340000', '0', '0,', '安徽省', 10, '340000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350000', '0', '0,', '福建省', 10, '350000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360000', '0', '0,', '江西省', 10, '360000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370000', '0', '0,', '山东省', 10, '370000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410000', '0', '0,', '河南省', 10, '410000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420000', '0', '0,', '湖北省', 10, '420000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430000', '0', '0,', '湖南省', 10, '430000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440000', '0', '0,', '广东省', 10, '440000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450000', '0', '0,', '广西壮族自治区', 10, '450000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460000', '0', '0,', '海南省', 10, '460000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500000', '0', '0,', '重庆市', 10, '500000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510000', '0', '0,', '四川省', 10, '510000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520000', '0', '0,', '贵州省', 10, '520000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530000', '0', '0,', '云南省', 10, '530000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540000', '0', '0,', '西藏自治区', 10, '540000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610000', '0', '0,', '陕西省', 10, '610000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620000', '0', '0,', '甘肃省', 10, '620000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630000', '0', '0,', '青海省', 10, '630000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640000', '0', '0,', '宁夏回族自治区', 10, '640000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650000', '0', '0,', '新疆维吾尔自治区', 10, '650000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('710000', '0', '0,', '台湾省', 10, '710000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('810000', '0', '0,', '香港特别行政区', 10, '810000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('820000', '0', '0,', '澳门特别行政区', 10, '820000', '2', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430300', '430000', '430000,', '湘潭市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430100', '430000', '430000,', '长沙市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430200', '430000', '430000,', '株洲市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430400', '430000', '430000,', '衡阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430500', '430000', '430000,', '邵阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430600', '430000', '430000,', '岳阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430700', '430000', '430000,', '常德市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430800', '430000', '430000,', '张家界市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430900', '430000', '430000,', '益阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431000', '430000', '430000,', '郴州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431100', '430000', '430000,', '永州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431200', '430000', '430000,', '怀化市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431300', '430000', '430000,', '娄底市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433100', '430000', '430000,', '湘西土家族苗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440100', '440000', '440000,', '广州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440200', '440000', '440000,', '韶关市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440300', '440000', '440000,', '深圳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440400', '440000', '440000,', '珠海市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440500', '440000', '440000,', '汕头市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440600', '440000', '440000,', '佛山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440700', '440000', '440000,', '江门市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440800', '440000', '440000,', '湛江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440900', '440000', '440000,', '茂名市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441200', '440000', '440000,', '肇庆市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441300', '440000', '440000,', '惠州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441400', '440000', '440000,', '梅州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441500', '440000', '440000,', '汕尾市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441600', '440000', '440000,', '河源市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441700', '440000', '440000,', '阳江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441800', '440000', '440000,', '清远市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441900', '440000', '440000,', '东莞市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('442000', '440000', '440000,', '中山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445100', '440000', '440000,', '潮州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445200', '440000', '440000,', '揭阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445300', '440000', '440000,', '云浮市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450100', '450000', '450000,', '南宁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450200', '450000', '450000,', '柳州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450300', '450000', '450000,', '桂林市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450400', '450000', '450000,', '梧州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450500', '450000', '450000,', '北海市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450600', '450000', '450000,', '防城港市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450700', '450000', '450000,', '钦州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450800', '450000', '450000,', '贵港市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450900', '450000', '450000,', '玉林市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451000', '450000', '450000,', '百色市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451100', '450000', '450000,', '贺州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451200', '450000', '450000,', '河池市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451300', '450000', '450000,', '来宾市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451400', '450000', '450000,', '崇左市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460100', '460000', '460000,', '海口市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460200', '460000', '460000,', '三亚市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460300', '460000', '460000,', '三沙市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469000', '460000', '460000,', '省直辖县级行政区划', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500100', '500000', '500000,', '市辖区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500200', '500000', '500000,', '县', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510100', '510000', '510000,', '成都市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510300', '510000', '510000,', '自贡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510400', '510000', '510000,', '攀枝花市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510500', '510000', '510000,', '泸州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510600', '510000', '510000,', '德阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510700', '510000', '510000,', '绵阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510800', '510000', '510000,', '广元市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510900', '510000', '510000,', '遂宁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511000', '510000', '510000,', '内江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511100', '510000', '510000,', '乐山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511300', '510000', '510000,', '南充市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511400', '510000', '510000,', '眉山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511500', '510000', '510000,', '宜宾市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511600', '510000', '510000,', '广安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511700', '510000', '510000,', '达州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511800', '510000', '510000,', '雅安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511900', '510000', '510000,', '巴中市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512000', '510000', '510000,', '资阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513200', '510000', '510000,', '阿坝藏族羌族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513300', '510000', '510000,', '甘孜藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513400', '510000', '510000,', '凉山彝族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520100', '520000', '520000,', '贵阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520200', '520000', '520000,', '六盘水市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520300', '520000', '520000,', '遵义市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520400', '520000', '520000,', '安顺市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520500', '520000', '520000,', '毕节市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520600', '520000', '520000,', '铜仁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522300', '520000', '520000,', '黔西南布依族苗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522600', '520000', '520000,', '黔东南苗族侗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522700', '520000', '520000,', '黔南布依族苗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530100', '530000', '530000,', '昆明市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530300', '530000', '530000,', '曲靖市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530400', '530000', '530000,', '玉溪市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530500', '530000', '530000,', '保山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530600', '530000', '530000,', '昭通市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530700', '530000', '530000,', '丽江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530800', '530000', '530000,', '普洱市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530900', '530000', '530000,', '临沧市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532300', '530000', '530000,', '楚雄彝族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532500', '530000', '530000,', '红河哈尼族彝族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532600', '530000', '530000,', '文山壮族苗族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532800', '530000', '530000,', '西双版纳傣族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532900', '530000', '530000,', '大理白族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533100', '530000', '530000,', '德宏傣族景颇族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533300', '530000', '530000,', '怒江傈僳族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533400', '530000', '530000,', '迪庆藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540100', '540000', '540000,', '拉萨市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542100', '540000', '540000,', '昌都地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542200', '540000', '540000,', '山南地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542300', '540000', '540000,', '日喀则地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542400', '540000', '540000,', '那曲地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542500', '540000', '540000,', '阿里地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542600', '540000', '540000,', '林芝地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610100', '610000', '610000,', '西安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610200', '610000', '610000,', '铜川市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610300', '610000', '610000,', '宝鸡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610400', '610000', '610000,', '咸阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610500', '610000', '610000,', '渭南市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610600', '610000', '610000,', '延安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610700', '610000', '610000,', '汉中市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610800', '610000', '610000,', '榆林市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610900', '610000', '610000,', '安康市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611000', '610000', '610000,', '商洛市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620100', '620000', '620000,', '兰州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620200', '620000', '620000,', '嘉峪关市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620300', '620000', '620000,', '金昌市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620400', '620000', '620000,', '白银市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620500', '620000', '620000,', '天水市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620600', '620000', '620000,', '武威市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620700', '620000', '620000,', '张掖市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620800', '620000', '620000,', '平凉市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620900', '620000', '620000,', '酒泉市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621000', '620000', '620000,', '庆阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621100', '620000', '620000,', '定西市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621200', '620000', '620000,', '陇南市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622900', '620000', '620000,', '临夏回族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623000', '620000', '620000,', '甘南藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630100', '630000', '630000,', '西宁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632100', '630000', '630000,', '海东地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632200', '630000', '630000,', '海北藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632300', '630000', '630000,', '黄南藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632500', '630000', '630000,', '海南藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632600', '630000', '630000,', '果洛藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632700', '630000', '630000,', '玉树藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632800', '630000', '630000,', '海西蒙古族藏族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640100', '640000', '640000,', '银川市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640200', '640000', '640000,', '石嘴山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640300', '640000', '640000,', '吴忠市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640400', '640000', '640000,', '固原市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640500', '640000', '640000,', '中卫市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650100', '650000', '650000,', '乌鲁木齐市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650200', '650000', '650000,', '克拉玛依市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652100', '650000', '650000,', '吐鲁番地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652200', '650000', '650000,', '哈密地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652300', '650000', '650000,', '昌吉回族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652700', '650000', '650000,', '博尔塔拉蒙古自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652800', '650000', '650000,', '巴音郭楞蒙古自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652900', '650000', '650000,', '阿克苏地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653000', '650000', '650000,', '克孜勒苏柯尔克孜自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653100', '650000', '650000,', '喀什地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653200', '650000', '650000,', '和田地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654000', '650000', '650000,', '伊犁哈萨克自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654200', '650000', '650000,', '塔城地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654300', '650000', '650000,', '阿勒泰地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('659000', '650000', '650000,', '自治区直辖县级行政区划', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110100', '110000', '110000,', '市辖区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110200', '110000', '110000,', '县', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120100', '120000', '120000,', '市辖区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120200', '120000', '120000,', '县', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130100', '130000', '130000,', '石家庄市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130200', '130000', '130000,', '唐山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130300', '130000', '130000,', '秦皇岛市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130400', '130000', '130000,', '邯郸市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130500', '130000', '130000,', '邢台市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130600', '130000', '130000,', '保定市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130700', '130000', '130000,', '张家口市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130800', '130000', '130000,', '承德市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130900', '130000', '130000,', '沧州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131000', '130000', '130000,', '廊坊市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131100', '130000', '130000,', '衡水市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140100', '140000', '140000,', '太原市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140200', '140000', '140000,', '大同市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140300', '140000', '140000,', '阳泉市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140400', '140000', '140000,', '长治市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140500', '140000', '140000,', '晋城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140600', '140000', '140000,', '朔州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140700', '140000', '140000,', '晋中市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140800', '140000', '140000,', '运城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140900', '140000', '140000,', '忻州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141000', '140000', '140000,', '临汾市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141100', '140000', '140000,', '吕梁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150100', '150000', '150000,', '呼和浩特市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150200', '150000', '150000,', '包头市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150300', '150000', '150000,', '乌海市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150400', '150000', '150000,', '赤峰市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150500', '150000', '150000,', '通辽市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150600', '150000', '150000,', '鄂尔多斯市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150700', '150000', '150000,', '呼伦贝尔市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150800', '150000', '150000,', '巴彦淖尔市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150900', '150000', '150000,', '乌兰察布市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152200', '150000', '150000,', '兴安盟', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152500', '150000', '150000,', '锡林郭勒盟', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152900', '150000', '150000,', '阿拉善盟', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210100', '210000', '210000,', '沈阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210200', '210000', '210000,', '大连市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210300', '210000', '210000,', '鞍山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210400', '210000', '210000,', '抚顺市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210500', '210000', '210000,', '本溪市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210600', '210000', '210000,', '丹东市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210700', '210000', '210000,', '锦州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210800', '210000', '210000,', '营口市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210900', '210000', '210000,', '阜新市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211000', '210000', '210000,', '辽阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211100', '210000', '210000,', '盘锦市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211200', '210000', '210000,', '铁岭市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211300', '210000', '210000,', '朝阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211400', '210000', '210000,', '葫芦岛市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220100', '220000', '220000,', '长春市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220200', '220000', '220000,', '吉林市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220300', '220000', '220000,', '四平市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220400', '220000', '220000,', '辽源市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220500', '220000', '220000,', '通化市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220600', '220000', '220000,', '白山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220700', '220000', '220000,', '松原市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('220800', '220000', '220000,', '白城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('222400', '220000', '220000,', '延边朝鲜族自治州', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230100', '230000', '230000,', '哈尔滨市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230200', '230000', '230000,', '齐齐哈尔市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230300', '230000', '230000,', '鸡西市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230400', '230000', '230000,', '鹤岗市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230500', '230000', '230000,', '双鸭山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230600', '230000', '230000,', '大庆市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230700', '230000', '230000,', '伊春市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230800', '230000', '230000,', '佳木斯市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230900', '230000', '230000,', '七台河市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231000', '230000', '230000,', '牡丹江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231100', '230000', '230000,', '黑河市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231200', '230000', '230000,', '绥化市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('232700', '230000', '230000,', '大兴安岭地区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310100', '310000', '310000,', '市辖区', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310200', '310000', '310000,', '县', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320100', '320000', '320000,', '南京市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320200', '320000', '320000,', '无锡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320300', '320000', '320000,', '徐州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320400', '320000', '320000,', '常州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320500', '320000', '320000,', '苏州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320600', '320000', '320000,', '南通市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320700', '320000', '320000,', '连云港市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320800', '320000', '320000,', '淮安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320900', '320000', '320000,', '盐城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321000', '320000', '320000,', '扬州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321100', '320000', '320000,', '镇江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321200', '320000', '320000,', '泰州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321300', '320000', '320000,', '宿迁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330100', '330000', '330000,', '杭州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330200', '330000', '330000,', '宁波市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330300', '330000', '330000,', '温州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330400', '330000', '330000,', '嘉兴市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330500', '330000', '330000,', '湖州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330600', '330000', '330000,', '绍兴市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330700', '330000', '330000,', '金华市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330800', '330000', '330000,', '衢州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330900', '330000', '330000,', '舟山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331000', '330000', '330000,', '台州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331100', '330000', '330000,', '丽水市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340100', '340000', '340000,', '合肥市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340200', '340000', '340000,', '芜湖市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340300', '340000', '340000,', '蚌埠市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340400', '340000', '340000,', '淮南市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340500', '340000', '340000,', '马鞍山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340600', '340000', '340000,', '淮北市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340700', '340000', '340000,', '铜陵市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340800', '340000', '340000,', '安庆市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341000', '340000', '340000,', '黄山市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341100', '340000', '340000,', '滁州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341200', '340000', '340000,', '阜阳市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341300', '340000', '340000,', '宿州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341500', '340000', '340000,', '六安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341600', '340000', '340000,', '亳州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341700', '340000', '340000,', '池州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341800', '340000', '340000,', '宣城市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350100', '350000', '350000,', '福州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350200', '350000', '350000,', '厦门市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350300', '350000', '350000,', '莆田市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350400', '350000', '350000,', '三明市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350500', '350000', '350000,', '泉州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350600', '350000', '350000,', '漳州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350700', '350000', '350000,', '南平市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350800', '350000', '350000,', '龙岩市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350900', '350000', '350000,', '宁德市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360100', '360000', '360000,', '南昌市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360200', '360000', '360000,', '景德镇市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360300', '360000', '360000,', '萍乡市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360400', '360000', '360000,', '九江市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360500', '360000', '360000,', '新余市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360600', '360000', '360000,', '鹰潭市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360700', '360000', '360000,', '赣州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360800', '360000', '360000,', '吉安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360900', '360000', '360000,', '宜春市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361000', '360000', '360000,', '抚州市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361100', '360000', '360000,', '上饶市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370100', '370000', '370000,', '济南市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370200', '370000', '370000,', '青岛市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370300', '370000', '370000,', '淄博市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370400', '370000', '370000,', '枣庄市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370500', '370000', '370000,', '东营市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370600', '370000', '370000,', '烟台市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370700', '370000', '370000,', '潍坊市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370800', '370000', '370000,', '济宁市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370900', '370000', '370000,', '泰安市', 10, null, '3', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360829', '360800', '360000,360800,', '安福县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360881', '360800', '360000,360800,', '井冈山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360901', '360900', '360000,360900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360902', '360900', '360000,360900,', '袁州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360922', '360900', '360000,360900,', '万载县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360923', '360900', '360000,360900,', '上高县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360924', '360900', '360000,360900,', '宜丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360925', '360900', '360000,360900,', '靖安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360981', '360900', '360000,360900,', '丰城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360982', '360900', '360000,360900,', '樟树市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230804', '230800', '230000,230800,', '前进区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230805', '230800', '230000,230800,', '东风区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230811', '230800', '230000,230800,', '郊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230822', '230800', '230000,230800,', '桦南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230826', '230800', '230000,230800,', '桦川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230828', '230800', '230000,230800,', '汤原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230833', '230800', '230000,230800,', '抚远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230881', '230800', '230000,230800,', '同江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230882', '230800', '230000,230800,', '富锦市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230901', '230900', '230000,230900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230902', '230900', '230000,230900,', '新兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230903', '230900', '230000,230900,', '桃山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230904', '230900', '230000,230900,', '茄子河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230921', '230900', '230000,230900,', '勃利县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231001', '231000', '230000,231000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231002', '231000', '230000,231000,', '东安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231003', '231000', '230000,231000,', '阳明区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231004', '231000', '230000,231000,', '爱民区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231005', '231000', '230000,231000,', '西安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231024', '231000', '230000,231000,', '东宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231025', '231000', '230000,231000,', '林口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231081', '231000', '230000,231000,', '绥芬河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231083', '231000', '230000,231000,', '海林市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231084', '231000', '230000,231000,', '宁安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231085', '231000', '230000,231000,', '穆棱市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231101', '231100', '230000,231100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231102', '231100', '230000,231100,', '爱辉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231121', '231100', '230000,231100,', '嫩江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231123', '231100', '230000,231100,', '逊克县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231124', '231100', '230000,231100,', '孙吴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231181', '231100', '230000,231100,', '北安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231182', '231100', '230000,231100,', '五大连池市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231201', '231200', '230000,231200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231202', '231200', '230000,231200,', '北林区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231221', '231200', '230000,231200,', '望奎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231222', '231200', '230000,231200,', '兰西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231223', '231200', '230000,231200,', '青冈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231224', '231200', '230000,231200,', '庆安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231225', '231200', '230000,231200,', '明水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231226', '231200', '230000,231200,', '绥棱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231281', '231200', '230000,231200,', '安达市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231282', '231200', '230000,231200,', '肇东市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('231283', '231200', '230000,231200,', '海伦市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('232721', '232700', '230000,232700,', '呼玛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('232722', '232700', '230000,232700,', '塔河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('232723', '232700', '230000,232700,', '漠河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310101', '310100', '310000,310100,', '黄浦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310104', '310100', '310000,310100,', '徐汇区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310105', '310100', '310000,310100,', '长宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310106', '310100', '310000,310100,', '静安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310107', '310100', '310000,310100,', '普陀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310108', '310100', '310000,310100,', '闸北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310109', '310100', '310000,310100,', '虹口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310110', '310100', '310000,310100,', '杨浦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310112', '310100', '310000,310100,', '闵行区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310113', '310100', '310000,310100,', '宝山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310114', '310100', '310000,310100,', '嘉定区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310115', '310100', '310000,310100,', '浦东新区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310116', '310100', '310000,310100,', '金山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310117', '310100', '310000,310100,', '松江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310118', '310100', '310000,310100,', '青浦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310230', '310200', '310000,310200,', '崇明县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320101', '320100', '320000,320100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320102', '320100', '320000,320100,', '玄武区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320104', '320100', '320000,320100,', '秦淮区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320105', '320100', '320000,320100,', '建邺区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320106', '320100', '320000,320100,', '鼓楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320107', '320100', '320000,320100,', '下关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320113', '320100', '320000,320100,', '栖霞区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320114', '320100', '320000,320100,', '雨花台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320115', '320100', '320000,320100,', '江宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320124', '320100', '320000,320100,', '溧水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320125', '320100', '320000,320100,', '高淳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320202', '320200', '320000,320200,', '崇安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320203', '320200', '320000,320200,', '南长区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320204', '320200', '320000,320200,', '北塘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320205', '320200', '320000,320200,', '锡山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320206', '320200', '320000,320200,', '惠山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320281', '320200', '320000,320200,', '江阴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320282', '320200', '320000,320200,', '宜兴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320302', '320300', '320000,320300,', '鼓楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320303', '320300', '320000,320300,', '云龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320305', '320300', '320000,320300,', '贾汪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320311', '320300', '320000,320300,', '泉山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320312', '320300', '320000,320300,', '铜山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320322', '320300', '320000,320300,', '沛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320324', '320300', '320000,320300,', '睢宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320381', '320300', '320000,320300,', '新沂市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320401', '320400', '320000,320400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320402', '320400', '320000,320400,', '天宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320404', '320400', '320000,320400,', '钟楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320411', '320400', '320000,320400,', '新北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320412', '320400', '320000,320400,', '武进区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320481', '320400', '320000,320400,', '溧阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320482', '320400', '320000,320400,', '金坛市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320505', '320500', '320000,320500,', '虎丘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320506', '320500', '320000,320500,', '吴中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320507', '320500', '320000,320500,', '相城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320509', '320500', '320000,320500,', '吴江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320581', '320500', '320000,320500,', '常熟市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320582', '320500', '320000,320500,', '张家港市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320583', '320500', '320000,320500,', '昆山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320601', '320600', '320000,320600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320602', '320600', '320000,320600,', '崇川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320611', '320600', '320000,320600,', '港闸区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320621', '320600', '320000,320600,', '海安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320623', '320600', '320000,320600,', '如东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320681', '320600', '320000,320600,', '启东市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320682', '320600', '320000,320600,', '如皋市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320684', '320600', '320000,320600,', '海门市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320701', '320700', '320000,320700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320703', '320700', '320000,320700,', '连云区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320705', '320700', '320000,320700,', '新浦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320706', '320700', '320000,320700,', '海州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320721', '320700', '320000,320700,', '赣榆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320722', '320700', '320000,320700,', '东海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320723', '320700', '320000,320700,', '灌云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320724', '320700', '320000,320700,', '灌南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320801', '320800', '320000,320800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320802', '320800', '320000,320800,', '清河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320803', '320800', '320000,320800,', '淮安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320804', '320800', '320000,320800,', '淮阴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320811', '320800', '320000,320800,', '清浦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320826', '320800', '320000,320800,', '涟水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320829', '320800', '320000,320800,', '洪泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320830', '320800', '320000,320800,', '盱眙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320831', '320800', '320000,320800,', '金湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320901', '320900', '320000,320900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320902', '320900', '320000,320900,', '亭湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320903', '320900', '320000,320900,', '盐都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320921', '320900', '320000,320900,', '响水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320922', '320900', '320000,320900,', '滨海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320923', '320900', '320000,320900,', '阜宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320924', '320900', '320000,320900,', '射阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320925', '320900', '320000,320900,', '建湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320981', '320900', '320000,320900,', '东台市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320982', '320900', '320000,320900,', '大丰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321001', '321000', '320000,321000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321002', '321000', '320000,321000,', '广陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321003', '321000', '320000,321000,', '邗江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321012', '321000', '320000,321000,', '江都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321023', '321000', '320000,321000,', '宝应县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321081', '321000', '320000,321000,', '仪征市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321084', '321000', '320000,321000,', '高邮市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321101', '321100', '320000,321100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321102', '321100', '320000,321100,', '京口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321111', '321100', '320000,321100,', '润州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321112', '321100', '320000,321100,', '丹徒区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321181', '321100', '320000,321100,', '丹阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321182', '321100', '320000,321100,', '扬中市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321183', '321100', '320000,321100,', '句容市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321201', '321200', '320000,321200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321202', '321200', '320000,321200,', '海陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321203', '321200', '320000,321200,', '高港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321281', '321200', '320000,321200,', '兴化市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321282', '321200', '320000,321200,', '靖江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321283', '321200', '320000,321200,', '泰兴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321284', '321200', '320000,321200,', '姜堰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321301', '321300', '320000,321300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321302', '321300', '320000,321300,', '宿城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321311', '321300', '320000,321300,', '宿豫区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321322', '321300', '320000,321300,', '沭阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321323', '321300', '320000,321300,', '泗阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('321324', '321300', '320000,321300,', '泗洪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330101', '330100', '330000,330100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330102', '330100', '330000,330100,', '上城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330103', '330100', '330000,330100,', '下城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330104', '330100', '330000,330100,', '江干区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330105', '330100', '330000,330100,', '拱墅区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330108', '330100', '330000,330100,', '滨江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330109', '330100', '330000,330100,', '萧山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330110', '330100', '330000,330100,', '余杭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330122', '330100', '330000,330100,', '桐庐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330182', '330100', '330000,330100,', '建德市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330183', '330100', '330000,330100,', '富阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330185', '330100', '330000,330100,', '临安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330203', '330200', '330000,330200,', '海曙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330204', '330200', '330000,330200,', '江东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330205', '330200', '330000,330200,', '江北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330211', '330200', '330000,330200,', '镇海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330212', '330200', '330000,330200,', '鄞州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330225', '330200', '330000,330200,', '象山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330226', '330200', '330000,330200,', '宁海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330282', '330200', '330000,330200,', '慈溪市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330283', '330200', '330000,330200,', '奉化市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330302', '330300', '330000,330300,', '鹿城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110101', '110100', '110000,110100,', '东城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110102', '110100', '110000,110100,', '西城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110105', '110100', '110000,110100,', '朝阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110106', '110100', '110000,110100,', '丰台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110108', '110100', '110000,110100,', '海淀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110109', '110100', '110000,110100,', '门头沟区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110111', '110100', '110000,110100,', '房山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110113', '110100', '110000,110100,', '顺义区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110114', '110100', '110000,110100,', '昌平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110115', '110100', '110000,110100,', '大兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110116', '110100', '110000,110100,', '怀柔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110228', '110200', '110000,110200,', '密云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110229', '110200', '110000,110200,', '延庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120101', '120100', '120000,120100,', '和平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120103', '120100', '120000,120100,', '河西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120104', '120100', '120000,120100,', '南开区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120105', '120100', '120000,120100,', '河北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120106', '120100', '120000,120100,', '红桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120111', '120100', '120000,120100,', '西青区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120112', '120100', '120000,120100,', '津南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120113', '120100', '120000,120100,', '北辰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120115', '120100', '120000,120100,', '宝坻区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120116', '120100', '120000,120100,', '滨海新区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120223', '120200', '120000,120200,', '静海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120225', '120200', '120000,120200,', '蓟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130101', '130100', '130000,130100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130102', '130100', '130000,130100,', '长安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130104', '130100', '130000,130100,', '桥西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130105', '130100', '130000,130100,', '新华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130107', '130100', '130000,130100,', '井陉矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130108', '130100', '130000,130100,', '裕华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130121', '130100', '130000,130100,', '井陉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130123', '130100', '130000,130100,', '正定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130124', '130100', '130000,130100,', '栾城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130125', '130100', '130000,130100,', '行唐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130126', '130100', '130000,130100,', '灵寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130127', '130100', '130000,130100,', '高邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130128', '130100', '130000,130100,', '深泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130129', '130100', '130000,130100,', '赞皇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130130', '130100', '130000,130100,', '无极县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130131', '130100', '130000,130100,', '平山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130132', '130100', '130000,130100,', '元氏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130133', '130100', '130000,130100,', '赵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130181', '130100', '130000,130100,', '辛集市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130182', '130100', '130000,130100,', '藁城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130183', '130100', '130000,130100,', '晋州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130184', '130100', '130000,130100,', '新乐市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130185', '130100', '130000,130100,', '鹿泉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130201', '130200', '130000,130200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130202', '130200', '130000,130200,', '路南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130203', '130200', '130000,130200,', '路北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130204', '130200', '130000,130200,', '古冶区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130205', '130200', '130000,130200,', '开平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130207', '130200', '130000,130200,', '丰南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130208', '130200', '130000,130200,', '丰润区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130209', '130200', '130000,130200,', '曹妃甸区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130223', '130200', '130000,130200,', '滦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130224', '130200', '130000,130200,', '滦南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130225', '130200', '130000,130200,', '乐亭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130227', '130200', '130000,130200,', '迁西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130229', '130200', '130000,130200,', '玉田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130281', '130200', '130000,130200,', '遵化市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130283', '130200', '130000,130200,', '迁安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130301', '130300', '130000,130300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130302', '130300', '130000,130300,', '海港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130303', '130300', '130000,130300,', '山海关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130304', '130300', '130000,130300,', '北戴河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130321', '130300', '130000,130300,', '青龙满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130322', '130300', '130000,130300,', '昌黎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130323', '130300', '130000,130300,', '抚宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130324', '130300', '130000,130300,', '卢龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130401', '130400', '130000,130400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130402', '130400', '130000,130400,', '邯山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130403', '130400', '130000,130400,', '丛台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130404', '130400', '130000,130400,', '复兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130406', '130400', '130000,130400,', '峰峰矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130421', '130400', '130000,130400,', '邯郸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130423', '130400', '130000,130400,', '临漳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130424', '130400', '130000,130400,', '成安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130425', '130400', '130000,130400,', '大名县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130426', '130400', '130000,130400,', '涉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130427', '130400', '130000,130400,', '磁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130428', '130400', '130000,130400,', '肥乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130429', '130400', '130000,130400,', '永年县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130430', '130400', '130000,130400,', '邱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130431', '130400', '130000,130400,', '鸡泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130432', '130400', '130000,130400,', '广平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130433', '130400', '130000,130400,', '馆陶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130435', '130400', '130000,130400,', '曲周县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130481', '130400', '130000,130400,', '武安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130502', '130500', '130000,130500,', '桥东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130503', '130500', '130000,130500,', '桥西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130521', '130500', '130000,130500,', '邢台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130522', '130500', '130000,130500,', '临城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130523', '130500', '130000,130500,', '内丘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130525', '130500', '130000,130500,', '隆尧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130526', '130500', '130000,130500,', '任县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130527', '130500', '130000,130500,', '南和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130529', '130500', '130000,130500,', '巨鹿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130530', '130500', '130000,130500,', '新河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130531', '130500', '130000,130500,', '广宗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130532', '130500', '130000,130500,', '平乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130534', '130500', '130000,130500,', '清河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130535', '130500', '130000,130500,', '临西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130581', '130500', '130000,130500,', '南宫市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130601', '130600', '130000,130600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130602', '130600', '130000,130600,', '新市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130603', '130600', '130000,130600,', '北市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130621', '130600', '130000,130600,', '满城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130622', '130600', '130000,130600,', '清苑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130623', '130600', '130000,130600,', '涞水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130624', '130600', '130000,130600,', '阜平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130626', '130600', '130000,130600,', '定兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130627', '130600', '130000,130600,', '唐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130628', '130600', '130000,130600,', '高阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130630', '130600', '130000,130600,', '涞源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130631', '130600', '130000,130600,', '望都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130632', '130600', '130000,130600,', '安新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130633', '130600', '130000,130600,', '易县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130635', '130600', '130000,130600,', '蠡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130636', '130600', '130000,130600,', '顺平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130637', '130600', '130000,130600,', '博野县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130681', '130600', '130000,130600,', '涿州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130682', '130600', '130000,130600,', '定州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130683', '130600', '130000,130600,', '安国市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130701', '130700', '130000,130700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130702', '130700', '130000,130700,', '桥东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130703', '130700', '130000,130700,', '桥西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130705', '130700', '130000,130700,', '宣化区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130721', '130700', '130000,130700,', '宣化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130722', '130700', '130000,130700,', '张北县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130723', '130700', '130000,130700,', '康保县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130724', '130700', '130000,130700,', '沽源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130726', '130700', '130000,130700,', '蔚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130727', '130700', '130000,130700,', '阳原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130728', '130700', '130000,130700,', '怀安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130730', '130700', '130000,130700,', '怀来县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130731', '130700', '130000,130700,', '涿鹿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130732', '130700', '130000,130700,', '赤城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130733', '130700', '130000,130700,', '崇礼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130801', '130800', '130000,130800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130802', '130800', '130000,130800,', '双桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130803', '130800', '130000,130800,', '双滦区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130804', '130800', '130000,130800,', '鹰手营子矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130821', '130800', '130000,130800,', '承德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130822', '130800', '130000,130800,', '兴隆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130823', '130800', '130000,130800,', '平泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130824', '130800', '130000,130800,', '滦平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130825', '130800', '130000,130800,', '隆化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130826', '130800', '130000,130800,', '丰宁满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130827', '130800', '130000,130800,', '宽城满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130828', '130800', '130000,130800,', '围场满族蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130901', '130900', '130000,130900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130902', '130900', '130000,130900,', '新华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130903', '130900', '130000,130900,', '运河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130921', '130900', '130000,130900,', '沧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130922', '130900', '130000,130900,', '青县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130923', '130900', '130000,130900,', '东光县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130924', '130900', '130000,130900,', '海兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130925', '130900', '130000,130900,', '盐山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130926', '130900', '130000,130900,', '肃宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130927', '130900', '130000,130900,', '南皮县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130928', '130900', '130000,130900,', '吴桥县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130929', '130900', '130000,130900,', '献县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130930', '130900', '130000,130900,', '孟村回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130981', '130900', '130000,130900,', '泊头市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130982', '130900', '130000,130900,', '任丘市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130983', '130900', '130000,130900,', '黄骅市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130984', '130900', '130000,130900,', '河间市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131001', '131000', '130000,131000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131002', '131000', '130000,131000,', '安次区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131003', '131000', '130000,131000,', '广阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131022', '131000', '130000,131000,', '固安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131023', '131000', '130000,131000,', '永清县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131024', '131000', '130000,131000,', '香河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131025', '131000', '130000,131000,', '大城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131026', '131000', '130000,131000,', '文安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131028', '131000', '130000,131000,', '大厂回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131081', '131000', '130000,131000,', '霸州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131082', '131000', '130000,131000,', '三河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131101', '131100', '130000,131100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131102', '131100', '130000,131100,', '桃城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131121', '131100', '130000,131100,', '枣强县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131122', '131100', '130000,131100,', '武邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131123', '131100', '130000,131100,', '武强县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131124', '131100', '130000,131100,', '饶阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131125', '131100', '130000,131100,', '安平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131126', '131100', '130000,131100,', '故城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131127', '131100', '130000,131100,', '景县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131128', '131100', '130000,131100,', '阜城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131181', '131100', '130000,131100,', '冀州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('131182', '131100', '130000,131100,', '深州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140101', '140100', '140000,140100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140105', '140100', '140000,140100,', '小店区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140106', '140100', '140000,140100,', '迎泽区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140107', '140100', '140000,140100,', '杏花岭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140109', '140100', '140000,140100,', '万柏林区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140110', '140100', '140000,140100,', '晋源区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140121', '140100', '140000,140100,', '清徐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140122', '140100', '140000,140100,', '阳曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140181', '140100', '140000,140100,', '古交市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140202', '140200', '140000,140200,', '城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140203', '140200', '140000,140200,', '矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140211', '140200', '140000,140200,', '南郊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140212', '140200', '140000,140200,', '新荣区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140221', '140200', '140000,140200,', '阳高县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140222', '140200', '140000,140200,', '天镇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140224', '140200', '140000,140200,', '灵丘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140225', '140200', '140000,140200,', '浑源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140226', '140200', '140000,140200,', '左云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140301', '140300', '140000,140300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140302', '140300', '140000,140300,', '城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140303', '140300', '140000,140300,', '矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140311', '140300', '140000,140300,', '郊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140322', '140300', '140000,140300,', '盂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140402', '140400', '140000,140400,', '城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140826', '140800', '140000,140800,', '绛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140827', '140800', '140000,140800,', '垣曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140828', '140800', '140000,140800,', '夏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140829', '140800', '140000,140800,', '平陆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140830', '140800', '140000,140800,', '芮城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140881', '140800', '140000,140800,', '永济市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140882', '140800', '140000,140800,', '河津市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140901', '140900', '140000,140900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140902', '140900', '140000,140900,', '忻府区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140921', '140900', '140000,140900,', '定襄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140922', '140900', '140000,140900,', '五台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140923', '140900', '140000,140900,', '代县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140924', '140900', '140000,140900,', '繁峙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140925', '140900', '140000,140900,', '宁武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140926', '140900', '140000,140900,', '静乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140927', '140900', '140000,140900,', '神池县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140928', '140900', '140000,140900,', '五寨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140929', '140900', '140000,140900,', '岢岚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140930', '140900', '140000,140900,', '河曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140931', '140900', '140000,140900,', '保德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140932', '140900', '140000,140900,', '偏关县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140981', '140900', '140000,140900,', '原平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141001', '141000', '140000,141000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141002', '141000', '140000,141000,', '尧都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141021', '141000', '140000,141000,', '曲沃县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141022', '141000', '140000,141000,', '翼城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141023', '141000', '140000,141000,', '襄汾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141024', '141000', '140000,141000,', '洪洞县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141025', '141000', '140000,141000,', '古县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141026', '141000', '140000,141000,', '安泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141027', '141000', '140000,141000,', '浮山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141028', '141000', '140000,141000,', '吉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141029', '141000', '140000,141000,', '乡宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141030', '141000', '140000,141000,', '大宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141031', '141000', '140000,141000,', '隰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141032', '141000', '140000,141000,', '永和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141033', '141000', '140000,141000,', '蒲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141034', '141000', '140000,141000,', '汾西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141081', '141000', '140000,141000,', '侯马市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141082', '141000', '140000,141000,', '霍州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141101', '141100', '140000,141100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141102', '141100', '140000,141100,', '离石区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141121', '141100', '140000,141100,', '文水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141122', '141100', '140000,141100,', '交城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141123', '141100', '140000,141100,', '兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141124', '141100', '140000,141100,', '临县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141125', '141100', '140000,141100,', '柳林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141126', '141100', '140000,141100,', '石楼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141127', '141100', '140000,141100,', '岚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141128', '141100', '140000,141100,', '方山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141129', '141100', '140000,141100,', '中阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141181', '141100', '140000,141100,', '孝义市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141182', '141100', '140000,141100,', '汾阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150101', '150100', '150000,150100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150102', '150100', '150000,150100,', '新城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150104', '150100', '150000,150100,', '玉泉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150105', '150100', '150000,150100,', '赛罕区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150121', '150100', '150000,150100,', '土默特左旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150123', '150100', '150000,150100,', '和林格尔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150124', '150100', '150000,150100,', '清水河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150125', '150100', '150000,150100,', '武川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150201', '150200', '150000,150200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150203', '150200', '150000,150200,', '昆都仑区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150204', '150200', '150000,150200,', '青山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150205', '150200', '150000,150200,', '石拐区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150501', '150500', '150000,150500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150502', '150500', '150000,150500,', '科尔沁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150521', '150500', '150000,150500,', '科尔沁左翼中旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150523', '150500', '150000,150500,', '开鲁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150524', '150500', '150000,150500,', '库伦旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150525', '150500', '150000,150500,', '奈曼旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150526', '150500', '150000,150500,', '扎鲁特旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150581', '150500', '150000,150500,', '霍林郭勒市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150602', '150600', '150000,150600,', '东胜区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150621', '150600', '150000,150600,', '达拉特旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150622', '150600', '150000,150600,', '准格尔旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150624', '150600', '150000,150600,', '鄂托克旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150625', '150600', '150000,150600,', '杭锦旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150626', '150600', '150000,150600,', '乌审旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150627', '150600', '150000,150600,', '伊金霍洛旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150702', '150700', '150000,150700,', '海拉尔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150721', '150700', '150000,150700,', '阿荣旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150722', '150700', '150000,150700,', '莫力达瓦达斡尔族自治旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150724', '150700', '150000,150700,', '鄂温克族自治旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150725', '150700', '150000,150700,', '陈巴尔虎旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150726', '150700', '150000,150700,', '新巴尔虎左旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150727', '150700', '150000,150700,', '新巴尔虎右旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150781', '150700', '150000,150700,', '满洲里市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150783', '150700', '150000,150700,', '扎兰屯市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150784', '150700', '150000,150700,', '额尔古纳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150785', '150700', '150000,150700,', '根河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150802', '150800', '150000,150800,', '临河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150821', '150800', '150000,150800,', '五原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150822', '150800', '150000,150800,', '磴口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150823', '150800', '150000,150800,', '乌拉特前旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150825', '150800', '150000,150800,', '乌拉特后旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150826', '150800', '150000,150800,', '杭锦后旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150901', '150900', '150000,150900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150921', '150900', '150000,150900,', '卓资县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150922', '150900', '150000,150900,', '化德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150923', '150900', '150000,150900,', '商都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150924', '150900', '150000,150900,', '兴和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150925', '150900', '150000,150900,', '凉城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150926', '150900', '150000,150900,', '察哈尔右翼前旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150927', '150900', '150000,150900,', '察哈尔右翼中旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150928', '150900', '150000,150900,', '察哈尔右翼后旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150929', '150900', '150000,150900,', '四子王旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150981', '150900', '150000,150900,', '丰镇市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152201', '152200', '150000,152200,', '乌兰浩特市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152202', '152200', '150000,152200,', '阿尔山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152221', '152200', '150000,152200,', '科尔沁右翼前旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152222', '152200', '150000,152200,', '科尔沁右翼中旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152223', '152200', '150000,152200,', '扎赉特旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152224', '152200', '150000,152200,', '突泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152501', '152500', '150000,152500,', '二连浩特市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152502', '152500', '150000,152500,', '锡林浩特市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152522', '152500', '150000,152500,', '阿巴嘎旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152523', '152500', '150000,152500,', '苏尼特左旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152524', '152500', '150000,152500,', '苏尼特右旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152525', '152500', '150000,152500,', '东乌珠穆沁旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152526', '152500', '150000,152500,', '西乌珠穆沁旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152527', '152500', '150000,152500,', '太仆寺旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152528', '152500', '150000,152500,', '镶黄旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152529', '152500', '150000,152500,', '正镶白旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152530', '152500', '150000,152500,', '正蓝旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152531', '152500', '150000,152500,', '多伦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152921', '152900', '150000,152900,', '阿拉善左旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152922', '152900', '150000,152900,', '阿拉善右旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('152923', '152900', '150000,152900,', '额济纳旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210101', '210100', '210000,210100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210102', '210100', '210000,210100,', '和平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210103', '210100', '210000,210100,', '沈河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210104', '210100', '210000,210100,', '大东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210105', '210100', '210000,210100,', '皇姑区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210106', '210100', '210000,210100,', '铁西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210111', '210100', '210000,210100,', '苏家屯区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210112', '210100', '210000,210100,', '东陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210113', '210100', '210000,210100,', '沈北新区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210114', '210100', '210000,210100,', '于洪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210122', '210100', '210000,210100,', '辽中县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210123', '210100', '210000,210100,', '康平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210124', '210100', '210000,210100,', '法库县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210181', '210100', '210000,210100,', '新民市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210201', '210200', '210000,210200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210202', '210200', '210000,210200,', '中山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210203', '210200', '210000,210200,', '西岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210204', '210200', '210000,210200,', '沙河口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210211', '210200', '210000,210200,', '甘井子区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210212', '210200', '210000,210200,', '旅顺口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210213', '210200', '210000,210200,', '金州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210224', '210200', '210000,210200,', '长海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210281', '210200', '210000,210200,', '瓦房店市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210282', '210200', '210000,210200,', '普兰店市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210283', '210200', '210000,210200,', '庄河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210301', '210300', '210000,210300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210302', '210300', '210000,210300,', '铁东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210303', '210300', '210000,210300,', '铁西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210304', '210300', '210000,210300,', '立山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210321', '210300', '210000,210300,', '台安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210323', '210300', '210000,210300,', '岫岩满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210381', '210300', '210000,210300,', '海城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210402', '210400', '210000,210400,', '新抚区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210403', '210400', '210000,210400,', '东洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210404', '210400', '210000,210400,', '望花区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210411', '210400', '210000,210400,', '顺城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210422', '210400', '210000,210400,', '新宾满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210423', '210400', '210000,210400,', '清原满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210501', '210500', '210000,210500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210503', '210500', '210000,210500,', '溪湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210504', '210500', '210000,210500,', '明山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210505', '210500', '210000,210500,', '南芬区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210521', '210500', '210000,210500,', '本溪满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210601', '210600', '210000,210600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210602', '210600', '210000,210600,', '元宝区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210603', '210600', '210000,210600,', '振兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210604', '210600', '210000,210600,', '振安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210681', '210600', '210000,210600,', '东港市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210682', '210600', '210000,210600,', '凤城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210701', '210700', '210000,210700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210702', '210700', '210000,210700,', '古塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210711', '210700', '210000,210700,', '太和区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210726', '210700', '210000,210700,', '黑山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210727', '210700', '210000,210700,', '义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210781', '210700', '210000,210700,', '凌海市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210801', '210800', '210000,210800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210802', '210800', '210000,210800,', '站前区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210803', '210800', '210000,210800,', '西市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210811', '210800', '210000,210800,', '老边区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210881', '210800', '210000,210800,', '盖州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210882', '210800', '210000,210800,', '大石桥市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210901', '210900', '210000,210900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210903', '210900', '210000,210900,', '新邱区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210904', '210900', '210000,210900,', '太平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210905', '210900', '210000,210900,', '清河门区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210921', '210900', '210000,210900,', '阜新蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210922', '210900', '210000,210900,', '彰武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211001', '211000', '210000,211000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211002', '211000', '210000,211000,', '白塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211004', '211000', '210000,211000,', '宏伟区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211005', '211000', '210000,211000,', '弓长岭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211011', '211000', '210000,211000,', '太子河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211081', '211000', '210000,211000,', '灯塔市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211101', '211100', '210000,211100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211102', '211100', '210000,211100,', '双台子区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211103', '211100', '210000,211100,', '兴隆台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211121', '211100', '210000,211100,', '大洼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211122', '211100', '210000,211100,', '盘山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211201', '211200', '210000,211200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211202', '211200', '210000,211200,', '银州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211204', '211200', '210000,211200,', '清河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211221', '211200', '210000,211200,', '铁岭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211223', '211200', '210000,211200,', '西丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211224', '211200', '210000,211200,', '昌图县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211281', '211200', '210000,211200,', '调兵山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211282', '211200', '210000,211200,', '开原市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211301', '211300', '210000,211300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211302', '211300', '210000,211300,', '双塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341023', '341000', '340000,341000,', '黟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341024', '341000', '340000,341000,', '祁门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341101', '341100', '340000,341100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341102', '341100', '340000,341100,', '琅琊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341103', '341100', '340000,341100,', '南谯区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341122', '341100', '340000,341100,', '来安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341124', '341100', '340000,341100,', '全椒县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341125', '341100', '340000,341100,', '定远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341126', '341100', '340000,341100,', '凤阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341181', '341100', '340000,341100,', '天长市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341182', '341100', '340000,341100,', '明光市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341201', '341200', '340000,341200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341202', '341200', '340000,341200,', '颍州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341203', '341200', '340000,341200,', '颍东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341204', '341200', '340000,341200,', '颍泉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341221', '341200', '340000,341200,', '临泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341222', '341200', '340000,341200,', '太和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341225', '341200', '340000,341200,', '阜南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341226', '341200', '340000,341200,', '颍上县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341282', '341200', '340000,341200,', '界首市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341301', '341300', '340000,341300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341302', '341300', '340000,341300,', '埇桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341321', '341300', '340000,341300,', '砀山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341322', '341300', '340000,341300,', '萧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341323', '341300', '340000,341300,', '灵璧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341324', '341300', '340000,341300,', '泗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341501', '341500', '340000,341500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341502', '341500', '340000,341500,', '金安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341503', '341500', '340000,341500,', '裕安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341521', '341500', '340000,341500,', '寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341522', '341500', '340000,341500,', '霍邱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341523', '341500', '340000,341500,', '舒城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341524', '341500', '340000,341500,', '金寨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341525', '341500', '340000,341500,', '霍山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341601', '341600', '340000,341600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341602', '341600', '340000,341600,', '谯城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341621', '341600', '340000,341600,', '涡阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341622', '341600', '340000,341600,', '蒙城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341623', '341600', '340000,341600,', '利辛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341701', '341700', '340000,341700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341702', '341700', '340000,341700,', '贵池区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341721', '341700', '340000,341700,', '东至县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341722', '341700', '340000,341700,', '石台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341723', '341700', '340000,341700,', '青阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341802', '341800', '340000,341800,', '宣州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341821', '341800', '340000,341800,', '郎溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341822', '341800', '340000,341800,', '广德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341823', '341800', '340000,341800,', '泾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341825', '341800', '340000,341800,', '旌德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341881', '341800', '340000,341800,', '宁国市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350101', '350100', '350000,350100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350103', '350100', '350000,350100,', '台江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350104', '350100', '350000,350100,', '仓山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350105', '350100', '350000,350100,', '马尾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350111', '350100', '350000,350100,', '晋安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350122', '350100', '350000,350100,', '连江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350123', '350100', '350000,350100,', '罗源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350124', '350100', '350000,350100,', '闽清县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350128', '350100', '350000,350100,', '平潭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350181', '350100', '350000,350100,', '福清市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350182', '350100', '350000,350100,', '长乐市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350203', '350200', '350000,350200,', '思明区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350205', '350200', '350000,350200,', '海沧区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350206', '350200', '350000,350200,', '湖里区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350211', '350200', '350000,350200,', '集美区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350213', '350200', '350000,350200,', '翔安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350301', '350300', '350000,350300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350302', '350300', '350000,350300,', '城厢区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350304', '350300', '350000,350300,', '荔城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350305', '350300', '350000,350300,', '秀屿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350322', '350300', '350000,350300,', '仙游县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350401', '350400', '350000,350400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350403', '350400', '350000,350400,', '三元区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350421', '350400', '350000,350400,', '明溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350423', '350400', '350000,350400,', '清流县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350425', '350400', '350000,350400,', '大田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350426', '350400', '350000,350400,', '尤溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350427', '350400', '350000,350400,', '沙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350428', '350400', '350000,350400,', '将乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350430', '350400', '350000,350400,', '建宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350481', '350400', '350000,350400,', '永安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350501', '350500', '350000,350500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350503', '350500', '350000,350500,', '丰泽区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350504', '350500', '350000,350500,', '洛江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350505', '350500', '350000,350500,', '泉港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350524', '350500', '350000,350500,', '安溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350525', '350500', '350000,350500,', '永春县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350526', '350500', '350000,350500,', '德化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350527', '350500', '350000,350500,', '金门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350582', '350500', '350000,350500,', '晋江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350583', '350500', '350000,350500,', '南安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350601', '350600', '350000,350600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350603', '350600', '350000,350600,', '龙文区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350622', '350600', '350000,350600,', '云霄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350623', '350600', '350000,350600,', '漳浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350624', '350600', '350000,350600,', '诏安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350625', '350600', '350000,350600,', '长泰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350626', '350600', '350000,350600,', '东山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350627', '350600', '350000,350600,', '南靖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350628', '350600', '350000,350600,', '平和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350629', '350600', '350000,350600,', '华安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350681', '350600', '350000,350600,', '龙海市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350701', '350700', '350000,350700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350702', '350700', '350000,350700,', '延平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350721', '350700', '350000,350700,', '顺昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350722', '350700', '350000,350700,', '浦城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350723', '350700', '350000,350700,', '光泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350724', '350700', '350000,350700,', '松溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350725', '350700', '350000,350700,', '政和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350781', '350700', '350000,350700,', '邵武市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350782', '350700', '350000,350700,', '武夷山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350783', '350700', '350000,350700,', '建瓯市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350784', '350700', '350000,350700,', '建阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350801', '350800', '350000,350800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350802', '350800', '350000,350800,', '新罗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350821', '350800', '350000,350800,', '长汀县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350822', '350800', '350000,350800,', '永定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350823', '350800', '350000,350800,', '上杭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350824', '350800', '350000,350800,', '武平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350825', '350800', '350000,350800,', '连城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350881', '350800', '350000,350800,', '漳平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350901', '350900', '350000,350900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350902', '350900', '350000,350900,', '蕉城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350921', '350900', '350000,350900,', '霞浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350922', '350900', '350000,350900,', '古田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350923', '350900', '350000,350900,', '屏南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350924', '350900', '350000,350900,', '寿宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350925', '350900', '350000,350900,', '周宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350926', '350900', '350000,350900,', '柘荣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350981', '350900', '350000,350900,', '福安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350982', '350900', '350000,350900,', '福鼎市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360101', '360100', '360000,360100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360102', '360100', '360000,360100,', '东湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360103', '360100', '360000,360100,', '西湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360104', '360100', '360000,360100,', '青云谱区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360105', '360100', '360000,360100,', '湾里区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360111', '360100', '360000,360100,', '青山湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360121', '360100', '360000,360100,', '南昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360122', '360100', '360000,360100,', '新建县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360123', '360100', '360000,360100,', '安义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360124', '360100', '360000,360100,', '进贤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360201', '360200', '360000,360200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360202', '360200', '360000,360200,', '昌江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360203', '360200', '360000,360200,', '珠山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360222', '360200', '360000,360200,', '浮梁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360281', '360200', '360000,360200,', '乐平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360301', '360300', '360000,360300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360302', '360300', '360000,360300,', '安源区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360313', '360300', '360000,360300,', '湘东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360321', '360300', '360000,360300,', '莲花县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360322', '360300', '360000,360300,', '上栗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360323', '360300', '360000,360300,', '芦溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360401', '360400', '360000,360400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360402', '360400', '360000,360400,', '庐山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360403', '360400', '360000,360400,', '浔阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360423', '360400', '360000,360400,', '武宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360424', '360400', '360000,360400,', '修水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360425', '360400', '360000,360400,', '永修县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360427', '360400', '360000,360400,', '星子县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360428', '360400', '360000,360400,', '都昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360429', '360400', '360000,360400,', '湖口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360430', '360400', '360000,360400,', '彭泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360482', '360400', '360000,360400,', '共青城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360501', '360500', '360000,360500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360502', '360500', '360000,360500,', '渝水区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360601', '360600', '360000,360600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360602', '360600', '360000,360600,', '月湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360622', '360600', '360000,360600,', '余江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360681', '360600', '360000,360600,', '贵溪市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360702', '360700', '360000,360700,', '章贡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360721', '360700', '360000,360700,', '赣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360722', '360700', '360000,360700,', '信丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360724', '360700', '360000,360700,', '上犹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360725', '360700', '360000,360700,', '崇义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360726', '360700', '360000,360700,', '安远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360727', '360700', '360000,360700,', '龙南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360729', '360700', '360000,360700,', '全南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360730', '360700', '360000,360700,', '宁都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360731', '360700', '360000,360700,', '于都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360733', '360700', '360000,360700,', '会昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360734', '360700', '360000,360700,', '寻乌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360735', '360700', '360000,360700,', '石城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360782', '360700', '360000,360700,', '南康市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360801', '360800', '360000,360800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360802', '360800', '360000,360800,', '吉州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360803', '360800', '360000,360800,', '青原区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360822', '360800', '360000,360800,', '吉水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360823', '360800', '360000,360800,', '峡江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360824', '360800', '360000,360800,', '新干县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360826', '360800', '360000,360800,', '泰和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360827', '360800', '360000,360800,', '遂川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360828', '360800', '360000,360800,', '万安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451025', '451000', '450000,451000,', '靖西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451026', '451000', '450000,451000,', '那坡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451027', '451000', '450000,451000,', '凌云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451029', '451000', '450000,451000,', '田林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451030', '451000', '450000,451000,', '西林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451031', '451000', '450000,451000,', '隆林各族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451102', '451100', '450000,451100,', '八步区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451121', '451100', '450000,451100,', '昭平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451122', '451100', '450000,451100,', '钟山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451123', '451100', '450000,451100,', '富川瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451202', '451200', '450000,451200,', '金城江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451221', '451200', '450000,451200,', '南丹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451222', '451200', '450000,451200,', '天峨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451224', '451200', '450000,451200,', '东兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451225', '451200', '450000,451200,', '罗城仫佬族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451226', '451200', '450000,451200,', '环江毛南族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451227', '451200', '450000,451200,', '巴马瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451229', '451200', '450000,451200,', '大化瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451281', '451200', '450000,451200,', '宜州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451302', '451300', '450000,451300,', '兴宾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451321', '451300', '450000,451300,', '忻城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451322', '451300', '450000,451300,', '象州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451323', '451300', '450000,451300,', '武宣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451324', '451300', '450000,451300,', '金秀瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451401', '451400', '450000,451400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451402', '451400', '450000,451400,', '江洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451421', '451400', '450000,451400,', '扶绥县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451422', '451400', '450000,451400,', '宁明县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451424', '451400', '450000,451400,', '大新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451425', '451400', '450000,451400,', '天等县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451481', '451400', '450000,451400,', '凭祥市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460105', '460100', '460000,460100,', '秀英区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460106', '460100', '460000,460100,', '龙华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460107', '460100', '460000,460100,', '琼山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460108', '460100', '460000,460100,', '美兰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460321', '460300', '460000,460300,', '西沙群岛', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460322', '460300', '460000,460300,', '南沙群岛', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460323', '460300', '460000,460300,', '中沙群岛的岛礁及其海域', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469002', '469000', '460000,469000,', '琼海市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469003', '469000', '460000,469000,', '儋州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469005', '469000', '460000,469000,', '文昌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469006', '469000', '460000,469000,', '万宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469021', '469000', '460000,469000,', '定安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469022', '469000', '460000,469000,', '屯昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469023', '469000', '460000,469000,', '澄迈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360983', '360900', '360000,360900,', '高安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361001', '361000', '360000,361000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361002', '361000', '360000,361000,', '临川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361021', '361000', '360000,361000,', '南城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361022', '361000', '360000,361000,', '黎川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361023', '361000', '360000,361000,', '南丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361024', '361000', '360000,361000,', '崇仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361025', '361000', '360000,361000,', '乐安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361026', '361000', '360000,361000,', '宜黄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361027', '361000', '360000,361000,', '金溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361028', '361000', '360000,361000,', '资溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361029', '361000', '360000,361000,', '东乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361030', '361000', '360000,361000,', '广昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361101', '361100', '360000,361100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361102', '361100', '360000,361100,', '信州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361121', '361100', '360000,361100,', '上饶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361122', '361100', '360000,361100,', '广丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361123', '361100', '360000,361100,', '玉山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361124', '361100', '360000,361100,', '铅山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361125', '361100', '360000,361100,', '横峰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361126', '361100', '360000,361100,', '弋阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361127', '361100', '360000,361100,', '余干县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361128', '361100', '360000,361100,', '鄱阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361129', '361100', '360000,361100,', '万年县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361130', '361100', '360000,361100,', '婺源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('361181', '361100', '360000,361100,', '德兴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370101', '370100', '370000,370100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370102', '370100', '370000,370100,', '历下区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370103', '370100', '370000,370100,', '市中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370104', '370100', '370000,370100,', '槐荫区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370105', '370100', '370000,370100,', '天桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370112', '370100', '370000,370100,', '历城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370113', '370100', '370000,370100,', '长清区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370124', '370100', '370000,370100,', '平阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370125', '370100', '370000,370100,', '济阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370126', '370100', '370000,370100,', '商河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370181', '370100', '370000,370100,', '章丘市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370201', '370200', '370000,370200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370202', '370200', '370000,370200,', '市南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370203', '370200', '370000,370200,', '市北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370205', '370200', '370000,370200,', '四方区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370211', '370200', '370000,370200,', '黄岛区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370212', '370200', '370000,370200,', '崂山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370213', '370200', '370000,370200,', '李沧区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370214', '370200', '370000,370200,', '城阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370281', '370200', '370000,370200,', '胶州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370282', '370200', '370000,370200,', '即墨市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370283', '370200', '370000,370200,', '平度市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370284', '370200', '370000,370200,', '胶南市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370285', '370200', '370000,370200,', '莱西市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370301', '370300', '370000,370300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370302', '370300', '370000,370300,', '淄川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370303', '370300', '370000,370300,', '张店区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370304', '370300', '370000,370300,', '博山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370305', '370300', '370000,370300,', '临淄区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370306', '370300', '370000,370300,', '周村区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370321', '370300', '370000,370300,', '桓台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370323', '370300', '370000,370300,', '沂源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370401', '370400', '370000,370400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370402', '370400', '370000,370400,', '市中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370403', '370400', '370000,370400,', '薛城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370405', '370400', '370000,370400,', '台儿庄区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370406', '370400', '370000,370400,', '山亭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370481', '370400', '370000,370400,', '滕州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370502', '370500', '370000,370500,', '东营区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370503', '370500', '370000,370500,', '河口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370521', '370500', '370000,370500,', '垦利县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370522', '370500', '370000,370500,', '利津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370601', '370600', '370000,370600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370602', '370600', '370000,370600,', '芝罘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370611', '370600', '370000,370600,', '福山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370613', '370600', '370000,370600,', '莱山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370634', '370600', '370000,370600,', '长岛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370681', '370600', '370000,370600,', '龙口市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370682', '370600', '370000,370600,', '莱阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370684', '370600', '370000,370600,', '蓬莱市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370685', '370600', '370000,370600,', '招远市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370686', '370600', '370000,370600,', '栖霞市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370701', '370700', '370000,370700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370702', '370700', '370000,370700,', '潍城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370703', '370700', '370000,370700,', '寒亭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370705', '370700', '370000,370700,', '奎文区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370724', '370700', '370000,370700,', '临朐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370725', '370700', '370000,370700,', '昌乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370781', '370700', '370000,370700,', '青州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370783', '370700', '370000,370700,', '寿光市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370784', '370700', '370000,370700,', '安丘市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370785', '370700', '370000,370700,', '高密市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370801', '370800', '370000,370800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370802', '370800', '370000,370800,', '市中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370811', '370800', '370000,370800,', '任城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370826', '370800', '370000,370800,', '微山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370828', '370800', '370000,370800,', '金乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370829', '370800', '370000,370800,', '嘉祥县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370830', '370800', '370000,370800,', '汶上县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370832', '370800', '370000,370800,', '梁山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370881', '370800', '370000,370800,', '曲阜市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370882', '370800', '370000,370800,', '兖州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370883', '370800', '370000,370800,', '邹城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370902', '370900', '370000,370900,', '泰山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370911', '370900', '370000,370900,', '岱岳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370921', '370900', '370000,370900,', '宁阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370982', '370900', '370000,370900,', '新泰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370983', '370900', '370000,370900,', '肥城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371002', '371000', '370000,371000,', '环翠区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371081', '371000', '370000,371000,', '文登市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371082', '371000', '370000,371000,', '荣成市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371083', '371000', '370000,371000,', '乳山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371101', '371100', '370000,371100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371102', '371100', '370000,371100,', '东港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371103', '371100', '370000,371100,', '岚山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371121', '371100', '370000,371100,', '五莲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371122', '371100', '370000,371100,', '莒县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371201', '371200', '370000,371200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371202', '371200', '370000,371200,', '莱城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371203', '371200', '370000,371200,', '钢城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371301', '371300', '370000,371300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371302', '371300', '370000,371300,', '兰山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371311', '371300', '370000,371300,', '罗庄区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371312', '371300', '370000,371300,', '河东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371321', '371300', '370000,371300,', '沂南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371322', '371300', '370000,371300,', '郯城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371323', '371300', '370000,371300,', '沂水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371324', '371300', '370000,371300,', '苍山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371325', '371300', '370000,371300,', '费县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371326', '371300', '370000,371300,', '平邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371327', '371300', '370000,371300,', '莒南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371328', '371300', '370000,371300,', '蒙阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371329', '371300', '370000,371300,', '临沭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371401', '371400', '370000,371400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371402', '371400', '370000,371400,', '德城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371421', '371400', '370000,371400,', '陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371422', '371400', '370000,371400,', '宁津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371423', '371400', '370000,371400,', '庆云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371424', '371400', '370000,371400,', '临邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371425', '371400', '370000,371400,', '齐河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371426', '371400', '370000,371400,', '平原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371427', '371400', '370000,371400,', '夏津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371428', '371400', '370000,371400,', '武城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371481', '371400', '370000,371400,', '乐陵市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371482', '371400', '370000,371400,', '禹城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371501', '371500', '370000,371500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371502', '371500', '370000,371500,', '东昌府区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371521', '371500', '370000,371500,', '阳谷县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371522', '371500', '370000,371500,', '莘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371523', '371500', '370000,371500,', '茌平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371524', '371500', '370000,371500,', '东阿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371525', '371500', '370000,371500,', '冠县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371526', '371500', '370000,371500,', '高唐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371581', '371500', '370000,371500,', '临清市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371601', '371600', '370000,371600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371602', '371600', '370000,371600,', '滨城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371621', '371600', '370000,371600,', '惠民县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371622', '371600', '370000,371600,', '阳信县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371623', '371600', '370000,371600,', '无棣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371624', '371600', '370000,371600,', '沾化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371625', '371600', '370000,371600,', '博兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371626', '371600', '370000,371600,', '邹平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371701', '371700', '370000,371700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371702', '371700', '370000,371700,', '牡丹区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371721', '371700', '370000,371700,', '曹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371722', '371700', '370000,371700,', '单县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371723', '371700', '370000,371700,', '成武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371724', '371700', '370000,371700,', '巨野县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371725', '371700', '370000,371700,', '郓城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371726', '371700', '370000,371700,', '鄄城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371728', '371700', '370000,371700,', '东明县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410101', '410100', '410000,410100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410102', '410100', '410000,410100,', '中原区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410103', '410100', '410000,410100,', '二七区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410105', '410100', '410000,410100,', '金水区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410106', '410100', '410000,410100,', '上街区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410108', '410100', '410000,410100,', '惠济区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410122', '410100', '410000,410100,', '中牟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410182', '410100', '410000,410100,', '荥阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410183', '410100', '410000,410100,', '新密市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410184', '410100', '410000,410100,', '新郑市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410201', '410200', '410000,410200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410202', '410200', '410000,410200,', '龙亭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410203', '410200', '410000,410200,', '顺河回族区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410204', '410200', '410000,410200,', '鼓楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410211', '410200', '410000,410200,', '金明区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410221', '410200', '410000,410200,', '杞县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410222', '410200', '410000,410200,', '通许县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410224', '410200', '410000,410200,', '开封县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410225', '410200', '410000,410200,', '兰考县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410302', '410300', '410000,410300,', '老城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410303', '410300', '410000,410300,', '西工区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410304', '410300', '410000,410300,', '瀍河回族区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410305', '410300', '410000,410300,', '涧西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410306', '410300', '410000,410300,', '吉利区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410322', '410300', '410000,410300,', '孟津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410323', '410300', '410000,410300,', '新安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410324', '410300', '410000,410300,', '栾川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410325', '410300', '410000,410300,', '嵩县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410327', '410300', '410000,410300,', '宜阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410328', '410300', '410000,410300,', '洛宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410329', '410300', '410000,410300,', '伊川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410401', '410400', '410000,410400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410402', '410400', '410000,410400,', '新华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410403', '410400', '410000,410400,', '卫东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410411', '410400', '410000,410400,', '湛河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410421', '410400', '410000,410400,', '宝丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410422', '410400', '410000,410400,', '叶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410423', '410400', '410000,410400,', '鲁山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410481', '410400', '410000,410400,', '舞钢市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410482', '410400', '410000,410400,', '汝州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410502', '410500', '410000,410500,', '文峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410503', '410500', '410000,410500,', '北关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410505', '410500', '410000,410500,', '殷都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410506', '410500', '410000,410500,', '龙安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410523', '410500', '410000,410500,', '汤阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410526', '410500', '410000,410500,', '滑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410527', '410500', '410000,410500,', '内黄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410581', '410500', '410000,410500,', '林州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410602', '410600', '410000,410600,', '鹤山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410603', '410600', '410000,410600,', '山城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410611', '410600', '410000,410600,', '淇滨区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410621', '410600', '410000,410600,', '浚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410622', '410600', '410000,410600,', '淇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410701', '410700', '410000,410700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410702', '410700', '410000,410700,', '红旗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410703', '410700', '410000,410700,', '卫滨区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410704', '410700', '410000,410700,', '凤泉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410711', '410700', '410000,410700,', '牧野区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410721', '410700', '410000,410700,', '新乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410724', '410700', '410000,410700,', '获嘉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410725', '410700', '410000,410700,', '原阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410726', '410700', '410000,410700,', '延津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410727', '410700', '410000,410700,', '封丘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410728', '410700', '410000,410700,', '长垣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410781', '410700', '410000,410700,', '卫辉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410782', '410700', '410000,410700,', '辉县市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410801', '410800', '410000,410800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410802', '410800', '410000,410800,', '解放区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410803', '410800', '410000,410800,', '中站区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410804', '410800', '410000,410800,', '马村区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410811', '410800', '410000,410800,', '山阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410821', '410800', '410000,410800,', '修武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410822', '410800', '410000,410800,', '博爱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410823', '410800', '410000,410800,', '武陟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410825', '410800', '410000,410800,', '温县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410882', '410800', '410000,410800,', '沁阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410883', '410800', '410000,410800,', '孟州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410901', '410900', '410000,410900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410902', '410900', '410000,410900,', '华龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410922', '410900', '410000,410900,', '清丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410923', '410900', '410000,410900,', '南乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410926', '410900', '410000,410900,', '范县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410927', '410900', '410000,410900,', '台前县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410928', '410900', '410000,410900,', '濮阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411001', '411000', '410000,411000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411002', '411000', '410000,411000,', '魏都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411023', '411000', '410000,411000,', '许昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411024', '411000', '410000,411000,', '鄢陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411025', '411000', '410000,411000,', '襄城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411081', '411000', '410000,411000,', '禹州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411082', '411000', '410000,411000,', '长葛市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411101', '411100', '410000,411100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411102', '411100', '410000,411100,', '源汇区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411103', '411100', '410000,411100,', '郾城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411104', '411100', '410000,411100,', '召陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411121', '411100', '410000,411100,', '舞阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140411', '140400', '140000,140400,', '郊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140421', '140400', '140000,140400,', '长治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140423', '140400', '140000,140400,', '襄垣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140424', '140400', '140000,140400,', '屯留县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140425', '140400', '140000,140400,', '平顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140427', '140400', '140000,140400,', '壶关县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140428', '140400', '140000,140400,', '长子县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140429', '140400', '140000,140400,', '武乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140431', '140400', '140000,140400,', '沁源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140481', '140400', '140000,140400,', '潞城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140502', '140500', '140000,140500,', '城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140521', '140500', '140000,140500,', '沁水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140522', '140500', '140000,140500,', '阳城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140524', '140500', '140000,140500,', '陵川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140525', '140500', '140000,140500,', '泽州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140601', '140600', '140000,140600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140602', '140600', '140000,140600,', '朔城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140603', '140600', '140000,140600,', '平鲁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140621', '140600', '140000,140600,', '山阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140623', '140600', '140000,140600,', '右玉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140624', '140600', '140000,140600,', '怀仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140702', '140700', '140000,140700,', '榆次区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140721', '140700', '140000,140700,', '榆社县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140722', '140700', '140000,140700,', '左权县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140723', '140700', '140000,140700,', '和顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140725', '140700', '140000,140700,', '寿阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140726', '140700', '140000,140700,', '太谷县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140727', '140700', '140000,140700,', '祁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140728', '140700', '140000,140700,', '平遥县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420606', '420600', '420000,420600,', '樊城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420607', '420600', '420000,420600,', '襄州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420624', '420600', '420000,420600,', '南漳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420625', '420600', '420000,420600,', '谷城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420626', '420600', '420000,420600,', '保康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420682', '420600', '420000,420600,', '老河口市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420683', '420600', '420000,420600,', '枣阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420684', '420600', '420000,420600,', '宜城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420701', '420700', '420000,420700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420702', '420700', '420000,420700,', '梁子湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420703', '420700', '420000,420700,', '华容区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420704', '420700', '420000,420700,', '鄂城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420801', '420800', '420000,420800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420802', '420800', '420000,420800,', '东宝区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420804', '420800', '420000,420800,', '掇刀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420821', '420800', '420000,420800,', '京山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420822', '420800', '420000,420800,', '沙洋县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420881', '420800', '420000,420800,', '钟祥市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420901', '420900', '420000,420900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420902', '420900', '420000,420900,', '孝南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420921', '420900', '420000,420900,', '孝昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420922', '420900', '420000,420900,', '大悟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420923', '420900', '420000,420900,', '云梦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420981', '420900', '420000,420900,', '应城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420982', '420900', '420000,420900,', '安陆市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420984', '420900', '420000,420900,', '汉川市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421001', '421000', '420000,421000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421002', '421000', '420000,421000,', '沙市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421003', '421000', '420000,421000,', '荆州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421022', '421000', '420000,421000,', '公安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421023', '421000', '420000,421000,', '监利县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421024', '421000', '420000,421000,', '江陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421081', '421000', '420000,421000,', '石首市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421083', '421000', '420000,421000,', '洪湖市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421087', '421000', '420000,421000,', '松滋市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421101', '421100', '420000,421100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421102', '421100', '420000,421100,', '黄州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421121', '421100', '420000,421100,', '团风县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421122', '421100', '420000,421100,', '红安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421123', '421100', '420000,421100,', '罗田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421124', '421100', '420000,421100,', '英山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421125', '421100', '420000,421100,', '浠水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421126', '421100', '420000,421100,', '蕲春县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421127', '421100', '420000,421100,', '黄梅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421181', '421100', '420000,421100,', '麻城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421182', '421100', '420000,421100,', '武穴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421201', '421200', '420000,421200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421202', '421200', '420000,421200,', '咸安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421221', '421200', '420000,421200,', '嘉鱼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421222', '421200', '420000,421200,', '通城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421223', '421200', '420000,421200,', '崇阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421224', '421200', '420000,421200,', '通山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421281', '421200', '420000,421200,', '赤壁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421301', '421300', '420000,421300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421303', '421300', '420000,421300,', '曾都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421321', '421300', '420000,421300,', '随县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('421381', '421300', '420000,421300,', '广水市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422801', '422800', '420000,422800,', '恩施市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422802', '422800', '420000,422800,', '利川市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422822', '422800', '420000,422800,', '建始县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422823', '422800', '420000,422800,', '巴东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422826', '422800', '420000,422800,', '咸丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422827', '422800', '420000,422800,', '来凤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422828', '422800', '420000,422800,', '鹤峰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('429005', '429000', '420000,429000,', '潜江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('429006', '429000', '420000,429000,', '天门市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('429021', '429000', '420000,429000,', '神农架林区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430102', '430100', '430000,430100,', '芙蓉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430103', '430100', '430000,430100,', '天心区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430104', '430100', '430000,430100,', '岳麓区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430105', '430100', '430000,430100,', '开福区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430112', '430100', '430000,430100,', '望城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430121', '430100', '430000,430100,', '长沙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430124', '430100', '430000,430100,', '宁乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430201', '430200', '430000,430200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430202', '430200', '430000,430200,', '荷塘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430203', '430200', '430000,430200,', '芦淞区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430204', '430200', '430000,430200,', '石峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430221', '430200', '430000,430200,', '株洲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430223', '430200', '430000,430200,', '攸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430224', '430200', '430000,430200,', '茶陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430281', '430200', '430000,430200,', '醴陵市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430302', '430300', '430000,430300,', '雨湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430304', '430300', '430000,430300,', '岳塘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430321', '430300', '430000,430300,', '湘潭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430381', '430300', '430000,430300,', '湘乡市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430382', '430300', '430000,430300,', '韶山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430401', '430400', '430000,430400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430406', '430400', '430000,430400,', '雁峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430407', '430400', '430000,430400,', '石鼓区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430408', '430400', '430000,430400,', '蒸湘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430421', '430400', '430000,430400,', '衡阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430422', '430400', '430000,430400,', '衡南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430423', '430400', '430000,430400,', '衡山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430424', '430400', '430000,430400,', '衡东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430481', '430400', '430000,430400,', '耒阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430482', '430400', '430000,430400,', '常宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430502', '430500', '430000,430500,', '双清区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430503', '430500', '430000,430500,', '大祥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430511', '430500', '430000,430500,', '北塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430521', '430500', '430000,430500,', '邵东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430522', '430500', '430000,430500,', '新邵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430524', '430500', '430000,430500,', '隆回县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430525', '430500', '430000,430500,', '洞口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430527', '430500', '430000,430500,', '绥宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430529', '430500', '430000,430500,', '城步苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430581', '430500', '430000,430500,', '武冈市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430602', '430600', '430000,430600,', '岳阳楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430603', '430600', '430000,430600,', '云溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430611', '430600', '430000,430600,', '君山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430621', '430600', '430000,430600,', '岳阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430623', '430600', '430000,430600,', '华容县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430624', '430600', '430000,430600,', '湘阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430626', '430600', '430000,430600,', '平江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430681', '430600', '430000,430600,', '汨罗市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430682', '430600', '430000,430600,', '临湘市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430701', '430700', '430000,430700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430702', '430700', '430000,430700,', '武陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430703', '430700', '430000,430700,', '鼎城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430721', '430700', '430000,430700,', '安乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430722', '430700', '430000,430700,', '汉寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430723', '430700', '430000,430700,', '澧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430724', '430700', '430000,430700,', '临澧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430725', '430700', '430000,430700,', '桃源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430726', '430700', '430000,430700,', '石门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430781', '430700', '430000,430700,', '津市市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430801', '430800', '430000,430800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430802', '430800', '430000,430800,', '永定区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430811', '430800', '430000,430800,', '武陵源区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430821', '430800', '430000,430800,', '慈利县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430822', '430800', '430000,430800,', '桑植县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430901', '430900', '430000,430900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430902', '430900', '430000,430900,', '资阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430903', '430900', '430000,430900,', '赫山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430921', '430900', '430000,430900,', '南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430922', '430900', '430000,430900,', '桃江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430923', '430900', '430000,430900,', '安化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430981', '430900', '430000,430900,', '沅江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431001', '431000', '430000,431000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431002', '431000', '430000,431000,', '北湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431003', '431000', '430000,431000,', '苏仙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431021', '431000', '430000,431000,', '桂阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431022', '431000', '430000,431000,', '宜章县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431023', '431000', '430000,431000,', '永兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431024', '431000', '430000,431000,', '嘉禾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431025', '431000', '430000,431000,', '临武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431026', '431000', '430000,431000,', '汝城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431027', '431000', '430000,431000,', '桂东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431028', '431000', '430000,431000,', '安仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431081', '431000', '430000,431000,', '资兴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431101', '431100', '430000,431100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431102', '431100', '430000,431100,', '零陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431103', '431100', '430000,431100,', '冷水滩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431121', '431100', '430000,431100,', '祁阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431122', '431100', '430000,431100,', '东安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431123', '431100', '430000,431100,', '双牌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431124', '431100', '430000,431100,', '道县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431125', '431100', '430000,431100,', '江永县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431126', '431100', '430000,431100,', '宁远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431127', '431100', '430000,431100,', '蓝山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431128', '431100', '430000,431100,', '新田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431129', '431100', '430000,431100,', '江华瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431201', '431200', '430000,431200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431202', '431200', '430000,431200,', '鹤城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431221', '431200', '430000,431200,', '中方县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431222', '431200', '430000,431200,', '沅陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431224', '431200', '430000,431200,', '溆浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431225', '431200', '430000,431200,', '会同县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431226', '431200', '430000,431200,', '麻阳苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431227', '431200', '430000,431200,', '新晃侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431229', '431200', '430000,431200,', '靖州苗族侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431230', '431200', '430000,431200,', '通道侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431281', '431200', '430000,431200,', '洪江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431302', '431300', '430000,431300,', '娄星区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431321', '431300', '430000,431300,', '双峰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431322', '431300', '430000,431300,', '新化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431381', '431300', '430000,431300,', '冷水江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431382', '431300', '430000,431300,', '涟源市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433122', '433100', '430000,433100,', '泸溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433123', '433100', '430000,433100,', '凤凰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433124', '433100', '430000,433100,', '花垣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433126', '433100', '430000,433100,', '古丈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433127', '433100', '430000,433100,', '永顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433130', '433100', '430000,433100,', '龙山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440103', '440100', '440000,440100,', '荔湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440104', '440100', '440000,440100,', '越秀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440105', '440100', '440000,440100,', '海珠区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440106', '440100', '440000,440100,', '天河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440112', '440100', '440000,440100,', '黄埔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440113', '440100', '440000,440100,', '番禺区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440114', '440100', '440000,440100,', '花都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440116', '440100', '440000,440100,', '萝岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440183', '440100', '440000,440100,', '增城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440184', '440100', '440000,440100,', '从化市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440203', '440200', '440000,440200,', '武江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440204', '440200', '440000,440200,', '浈江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440205', '440200', '440000,440200,', '曲江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440222', '440200', '440000,440200,', '始兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440229', '440200', '440000,440200,', '翁源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440232', '440200', '440000,440200,', '乳源瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440233', '440200', '440000,440200,', '新丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440281', '440200', '440000,440200,', '乐昌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440301', '440300', '440000,440300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440303', '440300', '440000,440300,', '罗湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440304', '440300', '440000,440300,', '福田区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440306', '440300', '440000,440300,', '宝安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440307', '440300', '440000,440300,', '龙岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440308', '440300', '440000,440300,', '盐田区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440402', '440400', '440000,440400,', '香洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440403', '440400', '440000,440400,', '斗门区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440404', '440400', '440000,440400,', '金湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440507', '440500', '440000,440500,', '龙湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440511', '440500', '440000,440500,', '金平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440512', '440500', '440000,440500,', '濠江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440513', '440500', '440000,440500,', '潮阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440514', '440500', '440000,440500,', '潮南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440515', '440500', '440000,440500,', '澄海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440523', '440500', '440000,440500,', '南澳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440601', '440600', '440000,440600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440604', '440600', '440000,440600,', '禅城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440605', '440600', '440000,440600,', '南海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440606', '440600', '440000,440600,', '顺德区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440607', '440600', '440000,440600,', '三水区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440608', '440600', '440000,440600,', '高明区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440701', '440700', '440000,440700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440703', '440700', '440000,440700,', '蓬江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440704', '440700', '440000,440700,', '江海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440705', '440700', '440000,440700,', '新会区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440781', '440700', '440000,440700,', '台山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440783', '440700', '440000,440700,', '开平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440784', '440700', '440000,440700,', '鹤山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440785', '440700', '440000,440700,', '恩平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440801', '440800', '440000,440800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440802', '440800', '440000,440800,', '赤坎区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440803', '440800', '440000,440800,', '霞山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440804', '440800', '440000,440800,', '坡头区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440811', '440800', '440000,440800,', '麻章区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440823', '440800', '440000,440800,', '遂溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440825', '440800', '440000,440800,', '徐闻县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440881', '440800', '440000,440800,', '廉江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440882', '440800', '440000,440800,', '雷州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440883', '440800', '440000,440800,', '吴川市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440901', '440900', '440000,440900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440902', '440900', '440000,440900,', '茂南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440903', '440900', '440000,440900,', '茂港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440923', '440900', '440000,440900,', '电白县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440981', '440900', '440000,440900,', '高州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440982', '440900', '440000,440900,', '化州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440983', '440900', '440000,440900,', '信宜市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441201', '441200', '440000,441200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441202', '441200', '440000,441200,', '端州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441203', '441200', '440000,441200,', '鼎湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441223', '441200', '440000,441200,', '广宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441224', '441200', '440000,441200,', '怀集县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441225', '441200', '440000,441200,', '封开县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441226', '441200', '440000,441200,', '德庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441283', '441200', '440000,441200,', '高要市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441284', '441200', '440000,441200,', '四会市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441301', '441300', '440000,441300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441302', '441300', '440000,441300,', '惠城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441303', '441300', '440000,441300,', '惠阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441322', '441300', '440000,441300,', '博罗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441323', '441300', '440000,441300,', '惠东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441324', '441300', '440000,441300,', '龙门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441401', '441400', '440000,441400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441402', '441400', '440000,441400,', '梅江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441421', '441400', '440000,441400,', '梅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441422', '441400', '440000,441400,', '大埔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441423', '441400', '440000,441400,', '丰顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441424', '441400', '440000,441400,', '五华县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441426', '441400', '440000,441400,', '平远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441427', '441400', '440000,441400,', '蕉岭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441481', '441400', '440000,441400,', '兴宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441501', '441500', '440000,441500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441521', '441500', '440000,441500,', '海丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441523', '441500', '440000,441500,', '陆河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441581', '441500', '440000,441500,', '陆丰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441602', '441600', '440000,441600,', '源城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441621', '441600', '440000,441600,', '紫金县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441622', '441600', '440000,441600,', '龙川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441623', '441600', '440000,441600,', '连平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441625', '441600', '440000,441600,', '东源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441702', '441700', '440000,441700,', '江城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441721', '441700', '440000,441700,', '阳西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441723', '441700', '440000,441700,', '阳东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441781', '441700', '440000,441700,', '阳春市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441801', '441800', '440000,441800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441802', '441800', '440000,441800,', '清城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441823', '441800', '440000,441800,', '阳山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441825', '441800', '440000,441800,', '连山壮族瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441826', '441800', '440000,441800,', '连南瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441881', '441800', '440000,441800,', '英德市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441882', '441800', '440000,441800,', '连州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445102', '445100', '440000,445100,', '湘桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445121', '445100', '440000,445100,', '潮安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445122', '445100', '440000,445100,', '饶平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445201', '445200', '440000,445200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445221', '445200', '440000,445200,', '揭东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445222', '445200', '440000,445200,', '揭西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445224', '445200', '440000,445200,', '惠来县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445281', '445200', '440000,445200,', '普宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445302', '445300', '440000,445300,', '云城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445321', '445300', '440000,445300,', '新兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445322', '445300', '440000,445300,', '郁南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445323', '445300', '440000,445300,', '云安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450101', '450100', '450000,450100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450102', '450100', '450000,450100,', '兴宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450103', '450100', '450000,450100,', '青秀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450107', '450100', '450000,450100,', '西乡塘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450108', '450100', '450000,450100,', '良庆区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450109', '450100', '450000,450100,', '邕宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450122', '450100', '450000,450100,', '武鸣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450124', '450100', '450000,450100,', '马山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450125', '450100', '450000,450100,', '上林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450126', '450100', '450000,450100,', '宾阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450201', '450200', '450000,450200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450202', '450200', '450000,450200,', '城中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450203', '450200', '450000,450200,', '鱼峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450205', '450200', '450000,450200,', '柳北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450221', '450200', '450000,450200,', '柳江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450222', '450200', '450000,450200,', '柳城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450223', '450200', '450000,450200,', '鹿寨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450224', '450200', '450000,450200,', '融安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450225', '450200', '450000,450200,', '融水苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450226', '450200', '450000,450200,', '三江侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450301', '450300', '450000,450300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450302', '450300', '450000,450300,', '秀峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450303', '450300', '450000,450300,', '叠彩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450304', '450300', '450000,450300,', '象山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450305', '450300', '450000,450300,', '七星区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450311', '450300', '450000,450300,', '雁山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450321', '450300', '450000,450300,', '阳朔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450322', '450300', '450000,450300,', '临桂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450323', '450300', '450000,450300,', '灵川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450324', '450300', '450000,450300,', '全州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450325', '450300', '450000,450300,', '兴安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450326', '450300', '450000,450300,', '永福县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450327', '450300', '450000,450300,', '灌阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450328', '450300', '450000,450300,', '龙胜各族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450329', '450300', '450000,450300,', '资源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450330', '450300', '450000,450300,', '平乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450331', '450300', '450000,450300,', '荔浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450332', '450300', '450000,450300,', '恭城瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450401', '450400', '450000,450400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450403', '450400', '450000,450400,', '万秀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450404', '450400', '450000,450400,', '蝶山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450405', '450400', '450000,450400,', '长洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450421', '450400', '450000,450400,', '苍梧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450422', '450400', '450000,450400,', '藤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450423', '450400', '450000,450400,', '蒙山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450481', '450400', '450000,450400,', '岑溪市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450501', '450500', '450000,450500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450502', '450500', '450000,450500,', '海城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450503', '450500', '450000,450500,', '银海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450512', '450500', '450000,450500,', '铁山港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450521', '450500', '450000,450500,', '合浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450601', '450600', '450000,450600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450602', '450600', '450000,450600,', '港口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450603', '450600', '450000,450600,', '防城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450621', '450600', '450000,450600,', '上思县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450681', '450600', '450000,450600,', '东兴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450701', '450700', '450000,450700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450702', '450700', '450000,450700,', '钦南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450703', '450700', '450000,450700,', '钦北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450721', '450700', '450000,450700,', '灵山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450722', '450700', '450000,450700,', '浦北县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450801', '450800', '450000,450800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450802', '450800', '450000,450800,', '港北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450803', '450800', '450000,450800,', '港南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450804', '450800', '450000,450800,', '覃塘区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450821', '450800', '450000,450800,', '平南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450881', '450800', '450000,450800,', '桂平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450901', '450900', '450000,450900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450902', '450900', '450000,450900,', '玉州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450921', '450900', '450000,450900,', '容县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450922', '450900', '450000,450900,', '陆川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450923', '450900', '450000,450900,', '博白县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450924', '450900', '450000,450900,', '兴业县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450981', '450900', '450000,450900,', '北流市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451002', '451000', '450000,451000,', '右江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451021', '451000', '450000,451000,', '田阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451022', '451000', '450000,451000,', '田东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451023', '451000', '450000,451000,', '平果县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530828', '530800', '530000,530800,', '澜沧拉祜族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530829', '530800', '530000,530800,', '西盟佤族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530901', '530900', '530000,530900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530902', '530900', '530000,530900,', '临翔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530921', '530900', '530000,530900,', '凤庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530922', '530900', '530000,530900,', '云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530923', '530900', '530000,530900,', '永德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530924', '530900', '530000,530900,', '镇康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530925', '530900', '530000,530900,', '双江拉祜族佤族布朗族傣族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530926', '530900', '530000,530900,', '耿马傣族佤族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530927', '530900', '530000,530900,', '沧源佤族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532301', '532300', '530000,532300,', '楚雄市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532322', '532300', '530000,532300,', '双柏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532323', '532300', '530000,532300,', '牟定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532324', '532300', '530000,532300,', '南华县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532325', '532300', '530000,532300,', '姚安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532326', '532300', '530000,532300,', '大姚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532327', '532300', '530000,532300,', '永仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532328', '532300', '530000,532300,', '元谋县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532329', '532300', '530000,532300,', '武定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532331', '532300', '530000,532300,', '禄丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532501', '532500', '530000,532500,', '个旧市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532502', '532500', '530000,532500,', '开远市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532503', '532500', '530000,532500,', '蒙自市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532523', '532500', '530000,532500,', '屏边苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532524', '532500', '530000,532500,', '建水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532525', '532500', '530000,532500,', '石屏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532526', '532500', '530000,532500,', '弥勒县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532527', '532500', '530000,532500,', '泸西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532528', '532500', '530000,532500,', '元阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532530', '532500', '530000,532500,', '金平苗族瑶族傣族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532531', '532500', '530000,532500,', '绿春县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532532', '532500', '530000,532500,', '河口瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532622', '532600', '530000,532600,', '砚山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532623', '532600', '530000,532600,', '西畴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532624', '532600', '530000,532600,', '麻栗坡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532625', '532600', '530000,532600,', '马关县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532627', '532600', '530000,532600,', '广南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532628', '532600', '530000,532600,', '富宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532822', '532800', '530000,532800,', '勐海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532823', '532800', '530000,532800,', '勐腊县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532901', '532900', '530000,532900,', '大理市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532922', '532900', '530000,532900,', '漾濞彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532924', '532900', '530000,532900,', '宾川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532925', '532900', '530000,532900,', '弥渡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532926', '532900', '530000,532900,', '南涧彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532927', '532900', '530000,532900,', '巍山彝族回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532929', '532900', '530000,532900,', '云龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532930', '532900', '530000,532900,', '洱源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532931', '532900', '530000,532900,', '剑川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532932', '532900', '530000,532900,', '鹤庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533103', '533100', '530000,533100,', '芒市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533122', '533100', '530000,533100,', '梁河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533123', '533100', '530000,533100,', '盈江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533321', '533300', '530000,533300,', '泸水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533323', '533300', '530000,533300,', '福贡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533324', '533300', '530000,533300,', '贡山独龙族怒族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533325', '533300', '530000,533300,', '兰坪白族普米族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533422', '533400', '530000,533400,', '德钦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533423', '533400', '530000,533400,', '维西傈僳族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540102', '540100', '540000,540100,', '城关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540121', '540100', '540000,540100,', '林周县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540122', '540100', '540000,540100,', '当雄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540123', '540100', '540000,540100,', '尼木县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540124', '540100', '540000,540100,', '曲水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540126', '540100', '540000,540100,', '达孜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540127', '540100', '540000,540100,', '墨竹工卡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542122', '542100', '540000,542100,', '江达县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542123', '542100', '540000,542100,', '贡觉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542124', '542100', '540000,542100,', '类乌齐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542125', '542100', '540000,542100,', '丁青县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542126', '542100', '540000,542100,', '察雅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542128', '542100', '540000,542100,', '左贡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542129', '542100', '540000,542100,', '芒康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542132', '542100', '540000,542100,', '洛隆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469024', '469000', '460000,469000,', '临高县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469025', '469000', '460000,469000,', '白沙黎族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469026', '469000', '460000,469000,', '昌江黎族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469027', '469000', '460000,469000,', '乐东黎族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469028', '469000', '460000,469000,', '陵水黎族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469029', '469000', '460000,469000,', '保亭黎族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469030', '469000', '460000,469000,', '琼中黎族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500101', '500100', '500000,500100,', '万州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500102', '500100', '500000,500100,', '涪陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500103', '500100', '500000,500100,', '渝中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500104', '500100', '500000,500100,', '大渡口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500105', '500100', '500000,500100,', '江北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500106', '500100', '500000,500100,', '沙坪坝区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500107', '500100', '500000,500100,', '九龙坡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500108', '500100', '500000,500100,', '南岸区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500109', '500100', '500000,500100,', '北碚区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500110', '500100', '500000,500100,', '綦江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500111', '500100', '500000,500100,', '大足区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500112', '500100', '500000,500100,', '渝北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500113', '500100', '500000,500100,', '巴南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500114', '500100', '500000,500100,', '黔江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500115', '500100', '500000,500100,', '长寿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500116', '500100', '500000,500100,', '江津区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500117', '500100', '500000,500100,', '合川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500118', '500100', '500000,500100,', '永川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500119', '500100', '500000,500100,', '南川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500223', '500200', '500000,500200,', '潼南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500224', '500200', '500000,500200,', '铜梁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500226', '500200', '500000,500200,', '荣昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500227', '500200', '500000,500200,', '璧山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500228', '500200', '500000,500200,', '梁平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500229', '500200', '500000,500200,', '城口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500230', '500200', '500000,500200,', '丰都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500231', '500200', '500000,500200,', '垫江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500232', '500200', '500000,500200,', '武隆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500233', '500200', '500000,500200,', '忠县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500234', '500200', '500000,500200,', '开县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500235', '500200', '500000,500200,', '云阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500236', '500200', '500000,500200,', '奉节县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500237', '500200', '500000,500200,', '巫山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500238', '500200', '500000,500200,', '巫溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500240', '500200', '500000,500200,', '石柱土家族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500241', '500200', '500000,500200,', '秀山土家族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500242', '500200', '500000,500200,', '酉阳土家族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('500243', '500200', '500000,500200,', '彭水苗族土家族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510101', '510100', '510000,510100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510104', '510100', '510000,510100,', '锦江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510105', '510100', '510000,510100,', '青羊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510106', '510100', '510000,510100,', '金牛区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510107', '510100', '510000,510100,', '武侯区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510108', '510100', '510000,510100,', '成华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510112', '510100', '510000,510100,', '龙泉驿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510113', '510100', '510000,510100,', '青白江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510114', '510100', '510000,510100,', '新都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510115', '510100', '510000,510100,', '温江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510121', '510100', '510000,510100,', '金堂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510122', '510100', '510000,510100,', '双流县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510124', '510100', '510000,510100,', '郫县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510131', '510100', '510000,510100,', '蒲江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510132', '510100', '510000,510100,', '新津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510181', '510100', '510000,510100,', '都江堰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510183', '510100', '510000,510100,', '邛崃市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510184', '510100', '510000,510100,', '崇州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510302', '510300', '510000,510300,', '自流井区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510303', '510300', '510000,510300,', '贡井区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510304', '510300', '510000,510300,', '大安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510311', '510300', '510000,510300,', '沿滩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510321', '510300', '510000,510300,', '荣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510401', '510400', '510000,510400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510402', '510400', '510000,510400,', '东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510403', '510400', '510000,510400,', '西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510411', '510400', '510000,510400,', '仁和区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510422', '510400', '510000,510400,', '盐边县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510502', '510500', '510000,510500,', '江阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510503', '510500', '510000,510500,', '纳溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510504', '510500', '510000,510500,', '龙马潭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510521', '510500', '510000,510500,', '泸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510522', '510500', '510000,510500,', '合江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510525', '510500', '510000,510500,', '古蔺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510601', '510600', '510000,510600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510603', '510600', '510000,510600,', '旌阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510623', '510600', '510000,510600,', '中江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510681', '510600', '510000,510600,', '广汉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510682', '510600', '510000,510600,', '什邡市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510683', '510600', '510000,510600,', '绵竹市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510703', '510700', '510000,510700,', '涪城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510704', '510700', '510000,510700,', '游仙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510722', '510700', '510000,510700,', '三台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510723', '510700', '510000,510700,', '盐亭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510725', '510700', '510000,510700,', '梓潼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510726', '510700', '510000,510700,', '北川羌族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510727', '510700', '510000,510700,', '平武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510801', '510800', '510000,510800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510802', '510800', '510000,510800,', '利州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510811', '510800', '510000,510800,', '元坝区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510821', '510800', '510000,510800,', '旺苍县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510822', '510800', '510000,510800,', '青川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510823', '510800', '510000,510800,', '剑阁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510824', '510800', '510000,510800,', '苍溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510903', '510900', '510000,510900,', '船山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510904', '510900', '510000,510900,', '安居区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510921', '510900', '510000,510900,', '蓬溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510923', '510900', '510000,510900,', '大英县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511002', '511000', '510000,511000,', '市中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511011', '511000', '510000,511000,', '东兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511024', '511000', '510000,511000,', '威远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511025', '511000', '510000,511000,', '资中县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511028', '511000', '510000,511000,', '隆昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511101', '511100', '510000,511100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511102', '511100', '510000,511100,', '市中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511111', '511100', '510000,511100,', '沙湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511112', '511100', '510000,511100,', '五通桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511113', '511100', '510000,511100,', '金口河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511123', '511100', '510000,511100,', '犍为县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511124', '511100', '510000,511100,', '井研县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511126', '511100', '510000,511100,', '夹江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511129', '511100', '510000,511100,', '沐川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511132', '511100', '510000,511100,', '峨边彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511133', '511100', '510000,511100,', '马边彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511181', '511100', '510000,511100,', '峨眉山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511301', '511300', '510000,511300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511302', '511300', '510000,511300,', '顺庆区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511303', '511300', '510000,511300,', '高坪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511304', '511300', '510000,511300,', '嘉陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511321', '511300', '510000,511300,', '南部县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511322', '511300', '510000,511300,', '营山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511323', '511300', '510000,511300,', '蓬安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511324', '511300', '510000,511300,', '仪陇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511325', '511300', '510000,511300,', '西充县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511381', '511300', '510000,511300,', '阆中市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511401', '511400', '510000,511400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511402', '511400', '510000,511400,', '东坡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511421', '511400', '510000,511400,', '仁寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511422', '511400', '510000,511400,', '彭山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511423', '511400', '510000,511400,', '洪雅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511424', '511400', '510000,511400,', '丹棱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511425', '511400', '510000,511400,', '青神县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511501', '511500', '510000,511500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511502', '511500', '510000,511500,', '翠屏区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511503', '511500', '510000,511500,', '南溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511521', '511500', '510000,511500,', '宜宾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511523', '511500', '510000,511500,', '江安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511524', '511500', '510000,511500,', '长宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511525', '511500', '510000,511500,', '高县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511526', '511500', '510000,511500,', '珙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511527', '511500', '510000,511500,', '筠连县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511528', '511500', '510000,511500,', '兴文县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511529', '511500', '510000,511500,', '屏山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511601', '511600', '510000,511600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511602', '511600', '510000,511600,', '广安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511621', '511600', '510000,511600,', '岳池县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511622', '511600', '510000,511600,', '武胜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511623', '511600', '510000,511600,', '邻水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511701', '511700', '510000,511700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511702', '511700', '510000,511700,', '通川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511721', '511700', '510000,511700,', '达县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511722', '511700', '510000,511700,', '宣汉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511724', '511700', '510000,511700,', '大竹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511725', '511700', '510000,511700,', '渠县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511781', '511700', '510000,511700,', '万源市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511802', '511800', '510000,511800,', '雨城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511803', '511800', '510000,511800,', '名山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511822', '511800', '510000,511800,', '荥经县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511824', '511800', '510000,511800,', '石棉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511825', '511800', '510000,511800,', '天全县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511826', '511800', '510000,511800,', '芦山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511827', '511800', '510000,511800,', '宝兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511902', '511900', '510000,511900,', '巴州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511921', '511900', '510000,511900,', '通江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511922', '511900', '510000,511900,', '南江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512001', '512000', '510000,512000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512002', '512000', '510000,512000,', '雁江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512021', '512000', '510000,512000,', '安岳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512022', '512000', '510000,512000,', '乐至县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513221', '513200', '510000,513200,', '汶川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513222', '513200', '510000,513200,', '理县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513223', '513200', '510000,513200,', '茂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513225', '513200', '510000,513200,', '九寨沟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513226', '513200', '510000,513200,', '金川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513227', '513200', '510000,513200,', '小金县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513228', '513200', '510000,513200,', '黑水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513230', '513200', '510000,513200,', '壤塘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513231', '513200', '510000,513200,', '阿坝县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513232', '513200', '510000,513200,', '若尔盖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513321', '513300', '510000,513300,', '康定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513322', '513300', '510000,513300,', '泸定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330303', '330300', '330000,330300,', '龙湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330304', '330300', '330000,330300,', '瓯海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330322', '330300', '330000,330300,', '洞头县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330324', '330300', '330000,330300,', '永嘉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330326', '330300', '330000,330300,', '平阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330327', '330300', '330000,330300,', '苍南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330328', '330300', '330000,330300,', '文成县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330329', '330300', '330000,330300,', '泰顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330381', '330300', '330000,330300,', '瑞安市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330382', '330300', '330000,330300,', '乐清市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330401', '330400', '330000,330400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330402', '330400', '330000,330400,', '南湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330411', '330400', '330000,330400,', '秀洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330421', '330400', '330000,330400,', '嘉善县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330481', '330400', '330000,330400,', '海宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330482', '330400', '330000,330400,', '平湖市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330483', '330400', '330000,330400,', '桐乡市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330502', '330500', '330000,330500,', '吴兴区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330503', '330500', '330000,330500,', '南浔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330521', '330500', '330000,330500,', '德清县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330523', '330500', '330000,330500,', '安吉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330601', '330600', '330000,330600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330602', '330600', '330000,330600,', '越城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330621', '330600', '330000,330600,', '绍兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330681', '330600', '330000,330600,', '诸暨市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330682', '330600', '330000,330600,', '上虞市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330683', '330600', '330000,330600,', '嵊州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330701', '330700', '330000,330700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330702', '330700', '330000,330700,', '婺城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330703', '330700', '330000,330700,', '金东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330723', '330700', '330000,330700,', '武义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330726', '330700', '330000,330700,', '浦江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330727', '330700', '330000,330700,', '磐安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330781', '330700', '330000,330700,', '兰溪市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330782', '330700', '330000,330700,', '义乌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330783', '330700', '330000,330700,', '东阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330784', '330700', '330000,330700,', '永康市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330801', '330800', '330000,330800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330802', '330800', '330000,330800,', '柯城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330803', '330800', '330000,330800,', '衢江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330822', '330800', '330000,330800,', '常山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330824', '330800', '330000,330800,', '开化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330825', '330800', '330000,330800,', '龙游县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330881', '330800', '330000,330800,', '江山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330901', '330900', '330000,330900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330902', '330900', '330000,330900,', '定海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330903', '330900', '330000,330900,', '普陀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330921', '330900', '330000,330900,', '岱山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330922', '330900', '330000,330900,', '嵊泗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331001', '331000', '330000,331000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331002', '331000', '330000,331000,', '椒江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331003', '331000', '330000,331000,', '黄岩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331004', '331000', '330000,331000,', '路桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331021', '331000', '330000,331000,', '玉环县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331022', '331000', '330000,331000,', '三门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331023', '331000', '330000,331000,', '天台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331024', '331000', '330000,331000,', '仙居县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331081', '331000', '330000,331000,', '温岭市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331082', '331000', '330000,331000,', '临海市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331101', '331100', '330000,331100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331102', '331100', '330000,331100,', '莲都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331121', '331100', '330000,331100,', '青田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331122', '331100', '330000,331100,', '缙云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331123', '331100', '330000,331100,', '遂昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331124', '331100', '330000,331100,', '松阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331125', '331100', '330000,331100,', '云和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331126', '331100', '330000,331100,', '庆元县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331127', '331100', '330000,331100,', '景宁畲族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('331181', '331100', '330000,331100,', '龙泉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340101', '340100', '340000,340100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340102', '340100', '340000,340100,', '瑶海区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340103', '340100', '340000,340100,', '庐阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340104', '340100', '340000,340100,', '蜀山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340111', '340100', '340000,340100,', '包河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340121', '340100', '340000,340100,', '长丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340122', '340100', '340000,340100,', '肥东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340123', '340100', '340000,340100,', '肥西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340124', '340100', '340000,340100,', '庐江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340181', '340100', '340000,340100,', '巢湖市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340201', '340200', '340000,340200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340202', '340200', '340000,340200,', '镜湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340203', '340200', '340000,340200,', '弋江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340207', '340200', '340000,340200,', '鸠江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340208', '340200', '340000,340200,', '三山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340221', '340200', '340000,340200,', '芜湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340222', '340200', '340000,340200,', '繁昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340223', '340200', '340000,340200,', '南陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340301', '340300', '340000,340300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340302', '340300', '340000,340300,', '龙子湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340303', '340300', '340000,340300,', '蚌山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340304', '340300', '340000,340300,', '禹会区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340321', '340300', '340000,340300,', '怀远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340322', '340300', '340000,340300,', '五河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340323', '340300', '340000,340300,', '固镇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340402', '340400', '340000,340400,', '大通区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340403', '340400', '340000,340400,', '田家庵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340404', '340400', '340000,340400,', '谢家集区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340405', '340400', '340000,340400,', '八公山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340421', '340400', '340000,340400,', '凤台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340503', '340500', '340000,340500,', '花山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340504', '340500', '340000,340500,', '雨山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340506', '340500', '340000,340500,', '博望区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340521', '340500', '340000,340500,', '当涂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340522', '340500', '340000,340500,', '含山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340601', '340600', '340000,340600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340602', '340600', '340000,340600,', '杜集区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340603', '340600', '340000,340600,', '相山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340604', '340600', '340000,340600,', '烈山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340701', '340700', '340000,340700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340702', '340700', '340000,340700,', '铜官山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340703', '340700', '340000,340700,', '狮子山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340721', '340700', '340000,340700,', '铜陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340802', '340800', '340000,340800,', '迎江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340803', '340800', '340000,340800,', '大观区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340811', '340800', '340000,340800,', '宜秀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340822', '340800', '340000,340800,', '怀宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340823', '340800', '340000,340800,', '枞阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340824', '340800', '340000,340800,', '潜山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340826', '340800', '340000,340800,', '宿松县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340827', '340800', '340000,340800,', '望江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340828', '340800', '340000,340800,', '岳西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341001', '341000', '340000,341000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341002', '341000', '340000,341000,', '屯溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341003', '341000', '340000,341000,', '黄山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341004', '341000', '340000,341000,', '徽州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341022', '341000', '340000,341000,', '休宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620105', '620100', '620000,620100,', '安宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620111', '620100', '620000,620100,', '红古区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620121', '620100', '620000,620100,', '永登县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620122', '620100', '620000,620100,', '皋兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620123', '620100', '620000,620100,', '榆中县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620301', '620300', '620000,620300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620302', '620300', '620000,620300,', '金川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620321', '620300', '620000,620300,', '永昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620401', '620400', '620000,620400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620402', '620400', '620000,620400,', '白银区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620403', '620400', '620000,620400,', '平川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620421', '620400', '620000,620400,', '靖远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620422', '620400', '620000,620400,', '会宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620423', '620400', '620000,620400,', '景泰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620501', '620500', '620000,620500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620502', '620500', '620000,620500,', '秦州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620503', '620500', '620000,620500,', '麦积区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620521', '620500', '620000,620500,', '清水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620522', '620500', '620000,620500,', '秦安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620523', '620500', '620000,620500,', '甘谷县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620524', '620500', '620000,620500,', '武山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411122', '411100', '410000,411100,', '临颍县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411201', '411200', '410000,411200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411202', '411200', '410000,411200,', '湖滨区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411221', '411200', '410000,411200,', '渑池县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411222', '411200', '410000,411200,', '陕县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411224', '411200', '410000,411200,', '卢氏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411281', '411200', '410000,411200,', '义马市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411282', '411200', '410000,411200,', '灵宝市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411301', '411300', '410000,411300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411302', '411300', '410000,411300,', '宛城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411303', '411300', '410000,411300,', '卧龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411322', '411300', '410000,411300,', '方城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411323', '411300', '410000,411300,', '西峡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411324', '411300', '410000,411300,', '镇平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411326', '411300', '410000,411300,', '淅川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411327', '411300', '410000,411300,', '社旗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411328', '411300', '410000,411300,', '唐河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411329', '411300', '410000,411300,', '新野县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150207', '150200', '150000,150200,', '九原区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150221', '150200', '150000,150200,', '土默特右旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150222', '150200', '150000,150200,', '固阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150223', '150200', '150000,150200,', '达尔罕茂明安联合旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150302', '150300', '150000,150300,', '海勃湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150303', '150300', '150000,150300,', '海南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150304', '150300', '150000,150300,', '乌达区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150402', '150400', '150000,150400,', '红山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150403', '150400', '150000,150400,', '元宝山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150404', '150400', '150000,150400,', '松山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150421', '150400', '150000,150400,', '阿鲁科尔沁旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150423', '150400', '150000,150400,', '巴林右旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150424', '150400', '150000,150400,', '林西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150425', '150400', '150000,150400,', '克什克腾旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150428', '150400', '150000,150400,', '喀喇沁旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150429', '150400', '150000,150400,', '宁城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420201', '420200', '420000,420200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420202', '420200', '420000,420200,', '黄石港区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420203', '420200', '420000,420200,', '西塞山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420204', '420200', '420000,420200,', '下陆区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420205', '420200', '420000,420200,', '铁山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420281', '420200', '420000,420200,', '大冶市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420301', '420300', '420000,420300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420302', '420300', '420000,420300,', '茅箭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420303', '420300', '420000,420300,', '张湾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420322', '420300', '420000,420300,', '郧西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420323', '420300', '420000,420300,', '竹山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420324', '420300', '420000,420300,', '竹溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420381', '420300', '420000,420300,', '丹江口市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420502', '420500', '420000,420500,', '西陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420503', '420500', '420000,420500,', '伍家岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420504', '420500', '420000,420500,', '点军区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420505', '420500', '420000,420500,', '猇亭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420506', '420500', '420000,420500,', '夷陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420525', '420500', '420000,420500,', '远安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420527', '420500', '420000,420500,', '秭归县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420528', '420500', '420000,420500,', '长阳土家族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420529', '420500', '420000,420500,', '五峰土家族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420582', '420500', '420000,420500,', '当阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420583', '420500', '420000,420500,', '枝江市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420601', '420600', '420000,420600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420602', '420600', '420000,420600,', '襄城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420105', '420100', '420000,420100,', '汉阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420106', '420100', '420000,420100,', '武昌区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420107', '420100', '420000,420100,', '青山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420111', '420100', '420000,420100,', '洪山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420112', '420100', '420000,420100,', '东西湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420113', '420100', '420000,420100,', '汉南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420114', '420100', '420000,420100,', '蔡甸区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420115', '420100', '420000,420100,', '江夏区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420116', '420100', '420000,420100,', '黄陂区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513323', '513300', '510000,513300,', '丹巴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513324', '513300', '510000,513300,', '九龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513325', '513300', '510000,513300,', '雅江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513326', '513300', '510000,513300,', '道孚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513327', '513300', '510000,513300,', '炉霍县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513328', '513300', '510000,513300,', '甘孜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513329', '513300', '510000,513300,', '新龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513330', '513300', '510000,513300,', '德格县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513331', '513300', '510000,513300,', '白玉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513332', '513300', '510000,513300,', '石渠县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513333', '513300', '510000,513300,', '色达县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513334', '513300', '510000,513300,', '理塘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513335', '513300', '510000,513300,', '巴塘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513336', '513300', '510000,513300,', '乡城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513337', '513300', '510000,513300,', '稻城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513338', '513300', '510000,513300,', '得荣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513401', '513400', '510000,513400,', '西昌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513422', '513400', '510000,513400,', '木里藏族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513423', '513400', '510000,513400,', '盐源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513424', '513400', '510000,513400,', '德昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513425', '513400', '510000,513400,', '会理县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513426', '513400', '510000,513400,', '会东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513427', '513400', '510000,513400,', '宁南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513428', '513400', '510000,513400,', '普格县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513429', '513400', '510000,513400,', '布拖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513430', '513400', '510000,513400,', '金阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513431', '513400', '510000,513400,', '昭觉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513432', '513400', '510000,513400,', '喜德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513433', '513400', '510000,513400,', '冕宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513434', '513400', '510000,513400,', '越西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513435', '513400', '510000,513400,', '甘洛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513436', '513400', '510000,513400,', '美姑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513437', '513400', '510000,513400,', '雷波县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520101', '520100', '520000,520100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520102', '520100', '520000,520100,', '南明区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520103', '520100', '520000,520100,', '云岩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520111', '520100', '520000,520100,', '花溪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520112', '520100', '520000,520100,', '乌当区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520113', '520100', '520000,520100,', '白云区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520114', '520100', '520000,520100,', '小河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520121', '520100', '520000,520100,', '开阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520122', '520100', '520000,520100,', '息烽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520123', '520100', '520000,520100,', '修文县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520181', '520100', '520000,520100,', '清镇市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520201', '520200', '520000,520200,', '钟山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520203', '520200', '520000,520200,', '六枝特区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520221', '520200', '520000,520200,', '水城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520222', '520200', '520000,520200,', '盘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520301', '520300', '520000,520300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520302', '520300', '520000,520300,', '红花岗区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520321', '520300', '520000,520300,', '遵义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520322', '520300', '520000,520300,', '桐梓县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520323', '520300', '520000,520300,', '绥阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520324', '520300', '520000,520300,', '正安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520326', '520300', '520000,520300,', '务川仡佬族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520327', '520300', '520000,520300,', '凤冈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520328', '520300', '520000,520300,', '湄潭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520329', '520300', '520000,520300,', '余庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520330', '520300', '520000,520300,', '习水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520382', '520300', '520000,520300,', '仁怀市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520402', '520400', '520000,520400,', '西秀区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520421', '520400', '520000,520400,', '平坝县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520422', '520400', '520000,520400,', '普定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520423', '520400', '520000,520400,', '镇宁布依族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520424', '520400', '520000,520400,', '关岭布依族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520425', '520400', '520000,520400,', '紫云苗族布依族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520521', '520500', '520000,520500,', '大方县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520522', '520500', '520000,520500,', '黔西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520523', '520500', '520000,520500,', '金沙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520525', '520500', '520000,520500,', '纳雍县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520526', '520500', '520000,520500,', '威宁彝族回族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520527', '520500', '520000,520500,', '赫章县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520603', '520600', '520000,520600,', '万山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520621', '520600', '520000,520600,', '江口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520622', '520600', '520000,520600,', '玉屏侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520623', '520600', '520000,520600,', '石阡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520625', '520600', '520000,520600,', '印江土家族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520626', '520600', '520000,520600,', '德江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520627', '520600', '520000,520600,', '沿河土家族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520628', '520600', '520000,520600,', '松桃苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522322', '522300', '520000,522300,', '兴仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522323', '522300', '520000,522300,', '普安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522324', '522300', '520000,522300,', '晴隆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522326', '522300', '520000,522300,', '望谟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522327', '522300', '520000,522300,', '册亨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522328', '522300', '520000,522300,', '安龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522622', '522600', '520000,522600,', '黄平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522623', '522600', '520000,522600,', '施秉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522624', '522600', '520000,522600,', '三穗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522625', '522600', '520000,522600,', '镇远县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522627', '522600', '520000,522600,', '天柱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522628', '522600', '520000,522600,', '锦屏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522629', '522600', '520000,522600,', '剑河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522631', '522600', '520000,522600,', '黎平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522632', '522600', '520000,522600,', '榕江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522633', '522600', '520000,522600,', '从江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522634', '522600', '520000,522600,', '雷山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522635', '522600', '520000,522600,', '麻江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522636', '522600', '520000,522600,', '丹寨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522701', '522700', '520000,522700,', '都匀市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522702', '522700', '520000,522700,', '福泉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522722', '522700', '520000,522700,', '荔波县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522723', '522700', '520000,522700,', '贵定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522725', '522700', '520000,522700,', '瓮安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522726', '522700', '520000,522700,', '独山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522727', '522700', '520000,522700,', '平塘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522728', '522700', '520000,522700,', '罗甸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522729', '522700', '520000,522700,', '长顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522730', '522700', '520000,522700,', '龙里县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522731', '522700', '520000,522700,', '惠水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522732', '522700', '520000,522700,', '三都水族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530101', '530100', '530000,530100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530102', '530100', '530000,530100,', '五华区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530103', '530100', '530000,530100,', '盘龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530111', '530100', '530000,530100,', '官渡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530112', '530100', '530000,530100,', '西山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530113', '530100', '530000,530100,', '东川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530114', '530100', '530000,530100,', '呈贡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530122', '530100', '530000,530100,', '晋宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530124', '530100', '530000,530100,', '富民县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530125', '530100', '530000,530100,', '宜良县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530126', '530100', '530000,530100,', '石林彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530127', '530100', '530000,530100,', '嵩明县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530128', '530100', '530000,530100,', '禄劝彝族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530129', '530100', '530000,530100,', '寻甸回族彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530181', '530100', '530000,530100,', '安宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530301', '530300', '530000,530300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530302', '530300', '530000,530300,', '麒麟区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530321', '530300', '530000,530300,', '马龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530322', '530300', '530000,530300,', '陆良县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530323', '530300', '530000,530300,', '师宗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530324', '530300', '530000,530300,', '罗平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530325', '530300', '530000,530300,', '富源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530326', '530300', '530000,530300,', '会泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530328', '530300', '530000,530300,', '沾益县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530381', '530300', '530000,530300,', '宣威市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530402', '530400', '530000,530400,', '红塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530421', '530400', '530000,530400,', '江川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530422', '530400', '530000,530400,', '澄江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530423', '530400', '530000,530400,', '通海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530424', '530400', '530000,530400,', '华宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530425', '530400', '530000,530400,', '易门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530426', '530400', '530000,530400,', '峨山彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530427', '530400', '530000,530400,', '新平彝族傣族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530428', '530400', '530000,530400,', '元江哈尼族彝族傣族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530501', '530500', '530000,530500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530502', '530500', '530000,530500,', '隆阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530521', '530500', '530000,530500,', '施甸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530522', '530500', '530000,530500,', '腾冲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530523', '530500', '530000,530500,', '龙陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530524', '530500', '530000,530500,', '昌宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530601', '530600', '530000,530600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530602', '530600', '530000,530600,', '昭阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530621', '530600', '530000,530600,', '鲁甸县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530622', '530600', '530000,530600,', '巧家县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530623', '530600', '530000,530600,', '盐津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530624', '530600', '530000,530600,', '大关县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530626', '530600', '530000,530600,', '绥江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530627', '530600', '530000,530600,', '镇雄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530628', '530600', '530000,530600,', '彝良县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530630', '530600', '530000,530600,', '水富县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530701', '530700', '530000,530700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530702', '530700', '530000,530700,', '古城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622924', '622900', '620000,622900,', '广河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622926', '622900', '620000,622900,', '东乡族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622927', '622900', '620000,622900,', '积石山保安族东乡族撒拉族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623021', '623000', '620000,623000,', '临潭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623022', '623000', '620000,623000,', '卓尼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623023', '623000', '620000,623000,', '舟曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623024', '623000', '620000,623000,', '迭部县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623025', '623000', '620000,623000,', '玛曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623027', '623000', '620000,623000,', '夏河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630102', '630100', '620000,630100,', '城东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630103', '630100', '620000,630100,', '城中区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630104', '630100', '620000,630100,', '城西区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630105', '630100', '620000,630100,', '城北区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630121', '630100', '620000,630100,', '大通回族土族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630123', '630100', '620000,630100,', '湟源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632121', '632100', '630000,632100,', '平安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632122', '632100', '630000,632100,', '民和回族土族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632123', '632100', '630000,632100,', '乐都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632127', '632100', '630000,632100,', '化隆回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632128', '632100', '630000,632100,', '循化撒拉族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632222', '632200', '630000,632200,', '祁连县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632223', '632200', '630000,632200,', '海晏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632224', '632200', '630000,632200,', '刚察县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632321', '632300', '630000,632300,', '同仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632322', '632300', '630000,632300,', '尖扎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632324', '632300', '630000,632300,', '河南蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632521', '632500', '630000,632500,', '共和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632522', '632500', '630000,632500,', '同德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632523', '632500', '630000,632500,', '贵德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632524', '632500', '630000,632500,', '兴海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632621', '632600', '630000,632600,', '玛沁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632622', '632600', '630000,632600,', '班玛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632623', '632600', '630000,632600,', '甘德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632625', '632600', '630000,632600,', '久治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632626', '632600', '630000,632600,', '玛多县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632722', '632700', '630000,632700,', '杂多县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632723', '632700', '630000,632700,', '称多县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632724', '632700', '630000,632700,', '治多县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632725', '632700', '630000,632700,', '囊谦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632726', '632700', '630000,632700,', '曲麻莱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632801', '632800', '630000,632800,', '格尔木市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632802', '632800', '630000,632800,', '德令哈市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632821', '632800', '630000,632800,', '乌兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632822', '632800', '630000,632800,', '都兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632823', '632800', '630000,632800,', '天峻县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640101', '640100', '640000,640100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640104', '640100', '640000,640100,', '兴庆区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640105', '640100', '640000,640100,', '西夏区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640106', '640100', '640000,640100,', '金凤区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640121', '640100', '640000,640100,', '永宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640122', '640100', '640000,640100,', '贺兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640181', '640100', '640000,640100,', '灵武市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640201', '640200', '640000,640200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640202', '640200', '640000,640200,', '大武口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640205', '640200', '640000,640200,', '惠农区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640221', '640200', '640000,640200,', '平罗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640301', '640300', '640000,640300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640302', '640300', '640000,640300,', '利通区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640303', '640300', '640000,640300,', '红寺堡区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640323', '640300', '640000,640300,', '盐池县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640324', '640300', '640000,640300,', '同心县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640381', '640300', '640000,640300,', '青铜峡市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640401', '640400', '640000,640400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640402', '640400', '640000,640400,', '原州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640422', '640400', '640000,640400,', '西吉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640423', '640400', '640000,640400,', '隆德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640424', '640400', '640000,640400,', '泾源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640425', '640400', '640000,640400,', '彭阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640501', '640500', '640000,640500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640502', '640500', '640000,640500,', '沙坡头区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640521', '640500', '640000,640500,', '中宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('640522', '640500', '640000,640500,', '海原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650101', '650100', '650000,650100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650102', '650100', '650000,650100,', '天山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650103', '650100', '650000,650100,', '沙依巴克区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650104', '650100', '650000,650100,', '新市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650105', '650100', '650000,650100,', '水磨沟区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650106', '650100', '650000,650100,', '头屯河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650107', '650100', '650000,650100,', '达坂城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650109', '650100', '650000,650100,', '米东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650121', '650100', '650000,650100,', '乌鲁木齐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650201', '650200', '650000,650200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650202', '650200', '650000,650200,', '独山子区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650203', '650200', '650000,650200,', '克拉玛依区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650204', '650200', '650000,650200,', '白碱滩区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('650205', '650200', '650000,650200,', '乌尔禾区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652101', '652100', '650000,652100,', '吐鲁番市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652122', '652100', '650000,652100,', '鄯善县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652123', '652100', '650000,652100,', '托克逊县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652201', '652200', '650000,652200,', '哈密市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652222', '652200', '650000,652200,', '巴里坤哈萨克自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652223', '652200', '650000,652200,', '伊吾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652301', '652300', '650000,652300,', '昌吉市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652302', '652300', '650000,652300,', '阜康市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652323', '652300', '650000,652300,', '呼图壁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652324', '652300', '650000,652300,', '玛纳斯县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652325', '652300', '650000,652300,', '奇台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652327', '652300', '650000,652300,', '吉木萨尔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652328', '652300', '650000,652300,', '木垒哈萨克自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652701', '652700', '650000,652700,', '博乐市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652723', '652700', '650000,652700,', '温泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652822', '652800', '650000,652800,', '轮台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652823', '652800', '650000,652800,', '尉犁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652824', '652800', '650000,652800,', '若羌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652825', '652800', '650000,652800,', '且末县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652826', '652800', '650000,652800,', '焉耆回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652827', '652800', '650000,652800,', '和静县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652829', '652800', '650000,652800,', '博湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652922', '652900', '650000,652900,', '温宿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652923', '652900', '650000,652900,', '库车县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652924', '652900', '650000,652900,', '沙雅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652925', '652900', '650000,652900,', '新和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652926', '652900', '650000,652900,', '拜城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652927', '652900', '650000,652900,', '乌什县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652929', '652900', '650000,652900,', '柯坪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653022', '653000', '650000,653000,', '阿克陶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653023', '653000', '650000,653000,', '阿合奇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653024', '653000', '650000,653000,', '乌恰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653101', '653100', '650000,653100,', '喀什市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653121', '653100', '650000,653100,', '疏附县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653123', '653100', '650000,653100,', '英吉沙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653124', '653100', '650000,653100,', '泽普县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653125', '653100', '650000,653100,', '莎车县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653126', '653100', '650000,653100,', '叶城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653128', '653100', '650000,653100,', '岳普湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653129', '653100', '650000,653100,', '伽师县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653130', '653100', '650000,653100,', '巴楚县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653131', '653100', '650000,653100,', '塔什库尔干塔吉克自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653221', '653200', '650000,653200,', '和田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653222', '653200', '650000,653200,', '墨玉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653223', '653200', '650000,653200,', '皮山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653225', '653200', '650000,653200,', '策勒县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653226', '653200', '650000,653200,', '于田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653227', '653200', '650000,653200,', '民丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654003', '654000', '650000,654000,', '奎屯市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654021', '654000', '650000,654000,', '伊宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654022', '654000', '650000,654000,', '察布查尔锡伯自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654023', '654000', '650000,654000,', '霍城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654025', '654000', '650000,654000,', '新源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654026', '654000', '650000,654000,', '昭苏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654027', '654000', '650000,654000,', '特克斯县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654028', '654000', '650000,654000,', '尼勒克县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654202', '654200', '650000,654200,', '乌苏市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654221', '654200', '650000,654200,', '额敏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654223', '654200', '650000,654200,', '沙湾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654224', '654200', '650000,654200,', '托里县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654225', '654200', '650000,654200,', '裕民县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654226', '654200', '650000,654200,', '和布克赛尔蒙古自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654301', '654300', '650000,654300,', '阿勒泰市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654321', '654300', '650000,654300,', '布尔津县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654322', '654300', '650000,654300,', '富蕴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654323', '654300', '650000,654300,', '福海县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654324', '654300', '650000,654300,', '哈巴河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654325', '654300', '650000,654300,', '青河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654326', '654300', '650000,654300,', '吉木乃县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('659001', '659000', '650000,659000,', '石河子市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('659002', '659000', '650000,659000,', '阿拉尔市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('659003', '659000', '650000,659000,', '图木舒克市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('659004', '659000', '650000,659000,', '五家渠市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530721', '530700', '530000,530700,', '玉龙纳西族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530722', '530700', '530000,530700,', '永胜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530723', '530700', '530000,530700,', '华坪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530724', '530700', '530000,530700,', '宁蒗彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530801', '530800', '530000,530800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530802', '530800', '530000,530800,', '思茅区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530821', '530800', '530000,530800,', '宁洱哈尼族彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530822', '530800', '530000,530800,', '墨江哈尼族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530823', '530800', '530000,530800,', '景东彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530824', '530800', '530000,530800,', '景谷傣族彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530825', '530800', '530000,530800,', '镇沅彝族哈尼族拉祜族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530826', '530800', '530000,530800,', '江城哈尼族彝族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530827', '530800', '530000,530800,', '孟连傣族拉祜族佤族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610322', '610300', '610000,610300,', '凤翔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610323', '610300', '610000,610300,', '岐山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610326', '610300', '610000,610300,', '眉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610327', '610300', '610000,610300,', '陇县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610328', '610300', '610000,610300,', '千阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610330', '610300', '610000,610300,', '凤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610331', '610300', '610000,610300,', '太白县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610402', '610400', '610000,610400,', '秦都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610403', '610400', '610000,610400,', '杨陵区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610404', '610400', '610000,610400,', '渭城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610422', '610400', '610000,610400,', '三原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610423', '610400', '610000,610400,', '泾阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610425', '610400', '610000,610400,', '礼泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610426', '610400', '610000,610400,', '永寿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610427', '610400', '610000,610400,', '彬县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610429', '610400', '610000,610400,', '旬邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610430', '610400', '610000,610400,', '淳化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610431', '610400', '610000,610400,', '武功县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610481', '610400', '610000,610400,', '兴平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610502', '610500', '610000,610500,', '临渭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610521', '610500', '610000,610500,', '华县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610522', '610500', '610000,610500,', '潼关县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610524', '610500', '610000,610500,', '合阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610525', '610500', '610000,610500,', '澄城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610526', '610500', '610000,610500,', '蒲城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610527', '610500', '610000,610500,', '白水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610581', '610500', '610000,610500,', '韩城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610582', '610500', '610000,610500,', '华阴市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610602', '610600', '610000,610600,', '宝塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610621', '610600', '610000,610600,', '延长县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610622', '610600', '610000,610600,', '延川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610623', '610600', '610000,610600,', '子长县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610624', '610600', '610000,610600,', '安塞县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610626', '610600', '610000,610600,', '吴起县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610627', '610600', '610000,610600,', '甘泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610628', '610600', '610000,610600,', '富县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610629', '610600', '610000,610600,', '洛川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610630', '610600', '610000,610600,', '宜川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610631', '610600', '610000,610600,', '黄龙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610632', '610600', '610000,610600,', '黄陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610701', '610700', '610000,610700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610702', '610700', '610000,610700,', '汉台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610721', '610700', '610000,610700,', '南郑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610722', '610700', '610000,610700,', '城固县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610723', '610700', '610000,610700,', '洋县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610724', '610700', '610000,610700,', '西乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610725', '610700', '610000,610700,', '勉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610726', '610700', '610000,610700,', '宁强县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610727', '610700', '610000,610700,', '略阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610728', '610700', '610000,610700,', '镇巴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610729', '610700', '610000,610700,', '留坝县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610730', '610700', '610000,610700,', '佛坪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610801', '610800', '610000,610800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610802', '610800', '610000,610800,', '榆阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610821', '610800', '610000,610800,', '神木县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610822', '610800', '610000,610800,', '府谷县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610823', '610800', '610000,610800,', '横山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610824', '610800', '610000,610800,', '靖边县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610825', '610800', '610000,610800,', '定边县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610826', '610800', '610000,610800,', '绥德县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610827', '610800', '610000,610800,', '米脂县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610828', '610800', '610000,610800,', '佳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610829', '610800', '610000,610800,', '吴堡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610830', '610800', '610000,610800,', '清涧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610831', '610800', '610000,610800,', '子洲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610901', '610900', '610000,610900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610902', '610900', '610000,610900,', '汉滨区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610921', '610900', '610000,610900,', '汉阴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610922', '610900', '610000,610900,', '石泉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610923', '610900', '610000,610900,', '宁陕县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610924', '610900', '610000,610900,', '紫阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610925', '610900', '610000,610900,', '岚皋县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610926', '610900', '610000,610900,', '平利县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610927', '610900', '610000,610900,', '镇坪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610928', '610900', '610000,610900,', '旬阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610929', '610900', '610000,610900,', '白河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611001', '611000', '610000,611000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611002', '611000', '610000,611000,', '商州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611021', '611000', '610000,611000,', '洛南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611022', '611000', '610000,611000,', '丹凤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611023', '611000', '610000,611000,', '商南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611024', '611000', '610000,611000,', '山阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611025', '611000', '610000,611000,', '镇安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('611026', '611000', '610000,611000,', '柞水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620101', '620100', '620000,620100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620102', '620100', '620000,620100,', '城关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620103', '620100', '620000,620100,', '七里河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230227', '230200', '230000,230200,', '富裕县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230301', '230300', '230000,230300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230305', '230300', '230000,230300,', '梨树区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230381', '230300', '230000,230300,', '虎林市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230404', '230400', '230000,230400,', '南山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230421', '230400', '230000,230400,', '萝北县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230505', '230500', '230000,230500,', '四方台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230523', '230500', '230000,230500,', '宝清县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230604', '230600', '230000,230600,', '让胡路区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230622', '230600', '230000,230600,', '肇源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230703', '230700', '230000,230700,', '南岔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230707', '230700', '230000,230700,', '新青区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230712', '230700', '230000,230700,', '汤旺河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('230716', '230700', '230000,230700,', '上甘岭区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('141130', '141100', '140000,141100,', '交口县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150103', '150100', '150000,150100,', '回民区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150122', '150100', '150000,150100,', '托克托县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150202', '150200', '150000,150200,', '东河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150430', '150400', '150000,150400,', '敖汉旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150522', '150500', '150000,150500,', '科尔沁左翼后旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150601', '150600', '150000,150600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150623', '150600', '150000,150600,', '鄂托克前旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150701', '150700', '150000,150700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150723', '150700', '150000,150700,', '鄂伦春自治旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150782', '150700', '150000,150700,', '牙克石市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150801', '150800', '150000,150800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150824', '150800', '150000,150800,', '乌拉特中旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150902', '150900', '150000,150900,', '集宁区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210311', '210300', '210000,210300,', '千山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210401', '210400', '210000,210400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210421', '210400', '210000,210400,', '抚顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210502', '210500', '210000,210500,', '平山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210522', '210500', '210000,210500,', '桓仁满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210624', '210600', '210000,210600,', '宽甸满族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210703', '210700', '210000,210700,', '凌河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210782', '210700', '210000,210700,', '北镇市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210804', '210800', '210000,210800,', '鲅鱼圈区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210902', '210900', '210000,210900,', '海州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('210911', '210900', '210000,210900,', '细河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211003', '211000', '210000,211000,', '文圣区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('211021', '211000', '210000,211000,', '辽阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341801', '341800', '340000,341800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341824', '341800', '340000,341800,', '绩溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350102', '350100', '350000,350100,', '鼓楼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350121', '350100', '350000,350100,', '闽侯县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350125', '350100', '350000,350100,', '永泰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350201', '350200', '350000,350200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350212', '350200', '350000,350200,', '同安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350303', '350300', '350000,350300,', '涵江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350402', '350400', '350000,350400,', '梅列区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350424', '350400', '350000,350400,', '宁化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350429', '350400', '350000,350400,', '泰宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350502', '350500', '350000,350500,', '鲤城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350521', '350500', '350000,350500,', '惠安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350581', '350500', '350000,350500,', '石狮市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('350602', '350600', '350000,350600,', '芗城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360421', '360400', '360000,360400,', '九江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360426', '360400', '360000,360400,', '德安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360481', '360400', '360000,360400,', '瑞昌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360521', '360500', '360000,360500,', '分宜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360701', '360700', '360000,360700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360723', '360700', '360000,360700,', '大余县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360728', '360700', '360000,360700,', '定南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360732', '360700', '360000,360700,', '兴国县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360781', '360700', '360000,360700,', '瑞金市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360821', '360800', '360000,360800,', '吉安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360825', '360800', '360000,360800,', '永丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360830', '360800', '360000,360800,', '永新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360921', '360900', '360000,360900,', '奉新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('360926', '360900', '360000,360900,', '铜鼓县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('310120', '310100', '310000,310100,', '奉贤区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320103', '320100', '320000,320100,', '白下区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320111', '320100', '320000,320100,', '浦口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320116', '320100', '320000,320100,', '六合区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320201', '320200', '320000,320200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320211', '320200', '320000,320200,', '滨湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320301', '320300', '320000,320300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320321', '320300', '320000,320300,', '丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320382', '320300', '320000,320300,', '邳州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320405', '320400', '320000,320400,', '戚墅堰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320501', '320500', '320000,320500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320508', '320500', '320000,320500,', '姑苏区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320585', '320500', '320000,320500,', '太仓市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('320612', '320600', '320000,320600,', '通州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330106', '330100', '330000,330100,', '西湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330127', '330100', '330000,330100,', '淳安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330201', '330200', '330000,330200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330206', '330200', '330000,330200,', '北仑区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330281', '330200', '330000,330200,', '余姚市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330301', '330300', '330000,330300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110107', '110100', '110000,110100,', '石景山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110112', '110100', '110000,110100,', '通州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('110117', '110100', '110000,110100,', '平谷区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120102', '120100', '120000,120100,', '河东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120110', '120100', '120000,120100,', '东丽区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120114', '120100', '120000,120100,', '武清区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('120221', '120200', '120000,120200,', '宁河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130103', '130100', '130000,130100,', '桥东区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130434', '130400', '130000,130400,', '魏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130501', '130500', '130000,130500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130524', '130500', '130000,130500,', '柏乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130528', '130500', '130000,130500,', '宁晋县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130533', '130500', '130000,130500,', '威县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130582', '130500', '130000,130500,', '沙河市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130604', '130600', '130000,130600,', '南市区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130625', '130600', '130000,130600,', '徐水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130629', '130600', '130000,130600,', '容城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130634', '130600', '130000,130600,', '曲阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130638', '130600', '130000,130600,', '雄县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130684', '130600', '130000,130600,', '高碑店市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620525', '620500', '620000,620500,', '张家川回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620601', '620600', '620000,620600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620602', '620600', '620000,620600,', '凉州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620621', '620600', '620000,620600,', '民勤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620622', '620600', '620000,620600,', '古浪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620623', '620600', '620000,620600,', '天祝藏族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620701', '620700', '620000,620700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620702', '620700', '620000,620700,', '甘州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620721', '620700', '620000,620700,', '肃南裕固族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620722', '620700', '620000,620700,', '民乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620723', '620700', '620000,620700,', '临泽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620724', '620700', '620000,620700,', '高台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620725', '620700', '620000,620700,', '山丹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620801', '620800', '620000,620800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620802', '620800', '620000,620800,', '崆峒区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620821', '620800', '620000,620800,', '泾川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620822', '620800', '620000,620800,', '灵台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620823', '620800', '620000,620800,', '崇信县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620824', '620800', '620000,620800,', '华亭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620825', '620800', '620000,620800,', '庄浪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620826', '620800', '620000,620800,', '静宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620901', '620900', '620000,620900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620902', '620900', '620000,620900,', '肃州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620921', '620900', '620000,620900,', '金塔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620922', '620900', '620000,620900,', '瓜州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620923', '620900', '620000,620900,', '肃北蒙古族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620924', '620900', '620000,620900,', '阿克塞哈萨克族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620981', '620900', '620000,620900,', '玉门市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620982', '620900', '620000,620900,', '敦煌市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621001', '621000', '620000,621000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621002', '621000', '620000,621000,', '西峰区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621021', '621000', '620000,621000,', '庆城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621022', '621000', '620000,621000,', '环县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621023', '621000', '620000,621000,', '华池县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621024', '621000', '620000,621000,', '合水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621025', '621000', '620000,621000,', '正宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621026', '621000', '620000,621000,', '宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621101', '621100', '620000,621100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621102', '621100', '620000,621100,', '安定区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621121', '621100', '620000,621100,', '通渭县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621123', '621100', '620000,621100,', '渭源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621124', '621100', '620000,621100,', '临洮县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621125', '621100', '620000,621100,', '漳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621126', '621100', '620000,621100,', '岷县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621202', '621200', '620000,621200,', '武都区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621221', '621200', '620000,621200,', '成县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621222', '621200', '620000,621200,', '文县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621224', '621200', '620000,621200,', '康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621225', '621200', '620000,621200,', '西和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621226', '621200', '620000,621200,', '礼县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621227', '621200', '620000,621200,', '徽县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622901', '622900', '620000,622900,', '临夏市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622921', '622900', '620000,622900,', '临夏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622922', '622900', '620000,622900,', '康乐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622923', '622900', '620000,622900,', '永靖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411330', '411300', '410000,411300,', '桐柏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411381', '411300', '410000,411300,', '邓州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411401', '411400', '410000,411400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411402', '411400', '410000,411400,', '梁园区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411403', '411400', '410000,411400,', '睢阳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411422', '411400', '410000,411400,', '睢县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411423', '411400', '410000,411400,', '宁陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411424', '411400', '410000,411400,', '柘城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411426', '411400', '410000,411400,', '夏邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411481', '411400', '410000,411400,', '永城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411502', '411500', '410000,411500,', '浉河区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411503', '411500', '410000,411500,', '平桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411521', '411500', '410000,411500,', '罗山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411522', '411500', '410000,411500,', '光山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411523', '411500', '410000,411500,', '新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411525', '411500', '410000,411500,', '固始县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411526', '411500', '410000,411500,', '潢川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411527', '411500', '410000,411500,', '淮滨县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411528', '411500', '410000,411500,', '息县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411602', '411600', '410000,411600,', '川汇区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411621', '411600', '410000,411600,', '扶沟县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411622', '411600', '410000,411600,', '西华县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411624', '411600', '410000,411600,', '沈丘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411625', '411600', '410000,411600,', '郸城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411626', '411600', '410000,411600,', '淮阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411627', '411600', '410000,411600,', '太康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411681', '411600', '410000,411600,', '项城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411702', '411700', '410000,411700,', '驿城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411721', '411700', '410000,411700,', '西平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411722', '411700', '410000,411700,', '上蔡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411723', '411700', '410000,411700,', '平舆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411724', '411700', '410000,411700,', '正阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411726', '411700', '410000,411700,', '泌阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411727', '411700', '410000,411700,', '汝南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411728', '411700', '410000,411700,', '遂平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411729', '411700', '410000,411700,', '新蔡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420101', '420100', '420000,420100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420102', '420100', '420000,420100,', '江岸区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420103', '420100', '420000,420100,', '江汉区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420104', '420100', '420000,420100,', '硚口区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130706', '130700', '130000,130700,', '下花园区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130725', '130700', '130000,130700,', '尚义县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('130729', '130700', '130000,130700,', '万全县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140108', '140100', '140000,140100,', '尖草坪区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140123', '140100', '140000,140100,', '娄烦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140201', '140200', '140000,140200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140223', '140200', '140000,140200,', '广灵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140227', '140200', '140000,140200,', '大同县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140321', '140300', '140000,140300,', '平定县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140401', '140400', '140000,140400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140426', '140400', '140000,140400,', '黎城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140430', '140400', '140000,140400,', '沁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140501', '140500', '140000,140500,', '晋城市市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140581', '140500', '140000,140500,', '高平市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140622', '140600', '140000,140600,', '应县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140701', '140700', '140000,140700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140724', '140700', '140000,140700,', '昔阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('140729', '140700', '140000,140700,', '灵石县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('422825', '422800', '420000,422800,', '宣恩县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('429004', '429000', '420000,429000,', '仙桃市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430101', '430100', '430000,430100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430111', '430100', '430000,430100,', '雨花区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430181', '430100', '430000,430100,', '浏阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430211', '430200', '430000,430200,', '天元区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430225', '430200', '430000,430200,', '炎陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430301', '430300', '430000,430300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430405', '430400', '430000,430400,', '珠晖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430412', '430400', '430000,430400,', '南岳区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430426', '430400', '430000,430400,', '祁东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430501', '430500', '430000,430500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430523', '430500', '430000,430500,', '邵阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430528', '430500', '430000,430500,', '新宁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('430601', '430600', '430000,430600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431223', '431200', '430000,431200,', '辰溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431228', '431200', '430000,431200,', '芷江侗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('431301', '431300', '430000,431300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433101', '433100', '430000,433100,', '吉首市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('433125', '433100', '430000,433100,', '保靖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440101', '440100', '440000,440100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440111', '440100', '440000,440100,', '白云区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440115', '440100', '440000,440100,', '南沙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440201', '440200', '440000,440200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440224', '440200', '440000,440200,', '仁化县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440282', '440200', '440000,440200,', '南雄市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440305', '440300', '440000,440300,', '南山区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440401', '440400', '440000,440400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('440501', '440500', '440000,440500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441502', '441500', '440000,441500,', '城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441601', '441600', '440000,441600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441624', '441600', '440000,441600,', '和平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441701', '441700', '440000,441700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441821', '441800', '440000,441800,', '佛冈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('441827', '441800', '440000,441800,', '清新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445101', '445100', '440000,445100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445202', '445200', '440000,445200,', '榕城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445301', '445300', '440000,445300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('445381', '445300', '440000,445300,', '罗定市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450105', '450100', '450000,450100,', '江南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450123', '450100', '450000,450100,', '隆安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450127', '450100', '450000,450100,', '横县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('450204', '450200', '450000,450200,', '柳南区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451001', '451000', '450000,451000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451024', '451000', '450000,451000,', '德保县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451028', '451000', '450000,451000,', '乐业县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451101', '451100', '450000,451100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451201', '451200', '450000,451200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451223', '451200', '450000,451200,', '凤山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451228', '451200', '450000,451200,', '都安瑶族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451301', '451300', '450000,451300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451381', '451300', '450000,451300,', '合山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('451423', '451400', '450000,451400,', '龙州县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460101', '460100', '460000,460100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('460201', '460200', '460000,460200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469001', '469000', '460000,469000,', '五指山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('469007', '469000', '460000,469000,', '东方市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370322', '370300', '370000,370300,', '高青县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370404', '370400', '370000,370400,', '峄城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370501', '370500', '370000,370500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370523', '370500', '370000,370500,', '广饶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370612', '370600', '370000,370600,', '牟平区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370683', '370600', '370000,370600,', '莱州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370687', '370600', '370000,370600,', '海阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370704', '370700', '370000,370700,', '坊子区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370782', '370700', '370000,370700,', '诸城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370786', '370700', '370000,370700,', '昌邑市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370827', '370800', '370000,370800,', '鱼台县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370831', '370800', '370000,370800,', '泗水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370901', '370900', '370000,370900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('370923', '370900', '370000,370900,', '东平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371001', '371000', '370000,371000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('371727', '371700', '370000,371700,', '定陶县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410104', '410100', '410000,410100,', '管城回族区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410181', '410100', '410000,410100,', '巩义市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410185', '410100', '410000,410100,', '登封市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410205', '410200', '410000,410200,', '禹王台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410223', '410200', '410000,410200,', '尉氏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410301', '410300', '410000,410300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410311', '410300', '410000,410300,', '洛龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410326', '410300', '410000,410300,', '汝阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410381', '410300', '410000,410300,', '偃师市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410404', '410400', '410000,410400,', '石龙区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410425', '410400', '410000,410400,', '郏县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410501', '410500', '410000,410500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410522', '410500', '410000,410500,', '安阳县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('410601', '410600', '410000,410600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411321', '411300', '410000,411300,', '南召县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411325', '411300', '410000,411300,', '内乡县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150206', '150200', '150000,150200,', '白云鄂博矿区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150301', '150300', '150000,150300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150401', '150400', '150000,150400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150422', '150400', '150000,150400,', '巴林左旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('150426', '150400', '150000,150400,', '翁牛特旗', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420117', '420100', '420000,420100,', '新洲区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420222', '420200', '420000,420200,', '阳新县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420321', '420300', '420000,420300,', '郧县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420325', '420300', '420000,420300,', '房县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420501', '420500', '420000,420500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420526', '420500', '420000,420500,', '兴山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('420581', '420500', '420000,420500,', '宜都市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520303', '520300', '520000,520300,', '汇川区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520325', '520300', '520000,520300,', '道真仡佬族苗族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520381', '520300', '520000,520300,', '赤水市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520401', '520400', '520000,520400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520502', '520500', '520000,520500,', '七星关区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520524', '520500', '520000,520500,', '织金县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520602', '520600', '520000,520600,', '碧江区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('520624', '520600', '520000,520600,', '思南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522301', '522300', '520000,522300,', '兴义市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522325', '522300', '520000,522300,', '贞丰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522601', '522600', '520000,522600,', '凯里市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522626', '522600', '520000,522600,', '岑巩县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('522630', '522600', '520000,522600,', '台江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530625', '530600', '530000,530600,', '永善县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('530629', '530600', '530000,530600,', '威信县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('622925', '622900', '620000,622900,', '和政县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623001', '623000', '620000,623000,', '合作市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('623026', '623000', '620000,623000,', '碌曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630101', '630100', '620000,630100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('630122', '630100', '620000,630100,', '湟中县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632126', '632100', '630000,632100,', '互助土族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632221', '632200', '630000,632200,', '门源回族自治县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632323', '632300', '630000,632300,', '泽库县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632525', '632500', '630000,632500,', '贵南县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632624', '632600', '630000,632600,', '达日县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('632721', '632700', '630000,632700,', '玉树县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652722', '652700', '650000,652700,', '精河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652801', '652800', '650000,652800,', '库尔勒市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652828', '652800', '650000,652800,', '和硕县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652901', '652900', '650000,652900,', '阿克苏市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('652928', '652900', '650000,652900,', '阿瓦提县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653001', '653000', '650000,653000,', '阿图什市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653122', '653100', '650000,653100,', '疏勒县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653127', '653100', '650000,653100,', '麦盖提县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653201', '653200', '650000,653200,', '和田市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('653224', '653200', '650000,653200,', '洛浦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654002', '654000', '650000,654000,', '伊宁市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654024', '654000', '650000,654000,', '巩留县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('654201', '654200', '650000,654200,', '塔城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532529', '532500', '530000,532500,', '红河县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532601', '532600', '530000,532600,', '文山市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532626', '532600', '530000,532600,', '丘北县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532801', '532800', '530000,532800,', '景洪市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532923', '532900', '530000,532900,', '祥云县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('532928', '532900', '530000,532900,', '永平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533102', '533100', '530000,533100,', '瑞丽市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533124', '533100', '530000,533100,', '陇川县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('533421', '533400', '530000,533400,', '香格里拉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540101', '540100', '540000,540100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('540125', '540100', '540000,540100,', '堆龙德庆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542121', '542100', '540000,542100,', '昌都县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542127', '542100', '540000,542100,', '八宿县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510129', '510100', '510000,510100,', '大邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510182', '510100', '510000,510100,', '彭州市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510301', '510300', '510000,510300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510322', '510300', '510000,510300,', '富顺县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510421', '510400', '510000,510400,', '米易县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510501', '510500', '510000,510500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510524', '510500', '510000,510500,', '叙永县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510626', '510600', '510000,510600,', '罗江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510701', '510700', '510000,510700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510724', '510700', '510000,510700,', '安县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510781', '510700', '510000,510700,', '江油市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510812', '510800', '510000,510800,', '朝天区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510901', '510900', '510000,510900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('510922', '510900', '510000,510900,', '射洪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511001', '511000', '510000,511000,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511681', '511600', '510000,511600,', '华蓥市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511723', '511700', '510000,511700,', '开江县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511801', '511800', '510000,511800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511823', '511800', '510000,511800,', '汉源县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511901', '511900', '510000,511900,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('511923', '511900', '510000,511900,', '平昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('512081', '512000', '510000,512000,', '简阳市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513224', '513200', '510000,513200,', '松潘县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513229', '513200', '510000,513200,', '马尔康县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('513233', '513200', '510000,513200,', '红原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330424', '330400', '330000,330400,', '海盐县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330501', '330500', '330000,330500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330522', '330500', '330000,330500,', '长兴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('330624', '330600', '330000,330600,', '新昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340225', '340200', '340000,340200,', '无为县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340311', '340300', '340000,340300,', '淮上区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340401', '340400', '340000,340400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340406', '340400', '340000,340400,', '潘集区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340501', '340500', '340000,340500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340523', '340500', '340000,340500,', '和县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340621', '340600', '340000,340600,', '濉溪县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340711', '340700', '340000,340700,', '郊区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340801', '340800', '340000,340800,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340825', '340800', '340000,340800,', '太湖县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('340881', '340800', '340000,340800,', '桐城市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('341021', '341000', '340000,341000,', '歙县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620104', '620100', '620000,620100,', '西固区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('620201', '620200', '620000,620200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621027', '621000', '620000,621000,', '镇原县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621122', '621100', '620000,621100,', '陇西县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621201', '621200', '620000,621200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621223', '621200', '620000,621200,', '宕昌县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('621228', '621200', '620000,621200,', '两当县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411421', '411400', '410000,411400,', '民权县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411425', '411400', '410000,411400,', '虞城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411501', '411500', '410000,411500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411524', '411500', '410000,411500,', '商城县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411601', '411600', '410000,411600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411623', '411600', '410000,411600,', '商水县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411628', '411600', '410000,411600,', '鹿邑县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411701', '411700', '410000,411700,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('411725', '411700', '410000,411700,', '确山县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('419001', '419000', '410000,419000,', '济源市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610104', '610100', '610000,610100,', '莲湖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610114', '610100', '610000,610100,', '阎良区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610125', '610100', '610000,610100,', '户县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610201', '610200', '610000,610200,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610303', '610300', '610000,610300,', '金台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610324', '610300', '610000,610300,', '扶风县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610329', '610300', '610000,610300,', '麟游县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610401', '610400', '610000,610400,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610424', '610400', '610000,610400,', '乾县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610428', '610400', '610000,610400,', '长武县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610501', '610500', '610000,610500,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610523', '610500', '610000,610500,', '大荔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610528', '610500', '610000,610500,', '富平县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610601', '610600', '610000,610600,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610625', '610600', '610000,610600,', '志丹县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542133', '542100', '540000,542100,', '边坝县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542221', '542200', '540000,542200,', '乃东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542222', '542200', '540000,542200,', '扎囊县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542223', '542200', '540000,542200,', '贡嘎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542224', '542200', '540000,542200,', '桑日县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542225', '542200', '540000,542200,', '琼结县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542226', '542200', '540000,542200,', '曲松县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542227', '542200', '540000,542200,', '措美县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542228', '542200', '540000,542200,', '洛扎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542229', '542200', '540000,542200,', '加查县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542231', '542200', '540000,542200,', '隆子县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542232', '542200', '540000,542200,', '错那县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542233', '542200', '540000,542200,', '浪卡子县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542301', '542300', '540000,542300,', '日喀则市', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542322', '542300', '540000,542300,', '南木林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542323', '542300', '540000,542300,', '江孜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542324', '542300', '540000,542300,', '定日县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542325', '542300', '540000,542300,', '萨迦县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542326', '542300', '540000,542300,', '拉孜县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542327', '542300', '540000,542300,', '昂仁县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542328', '542300', '540000,542300,', '谢通门县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542329', '542300', '540000,542300,', '白朗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542330', '542300', '540000,542300,', '仁布县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542331', '542300', '540000,542300,', '康马县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542332', '542300', '540000,542300,', '定结县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542333', '542300', '540000,542300,', '仲巴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542334', '542300', '540000,542300,', '亚东县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542335', '542300', '540000,542300,', '吉隆县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542336', '542300', '540000,542300,', '聂拉木县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542337', '542300', '540000,542300,', '萨嘎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542338', '542300', '540000,542300,', '岗巴县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542421', '542400', '540000,542400,', '那曲县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542422', '542400', '540000,542400,', '嘉黎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542423', '542400', '540000,542400,', '比如县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542424', '542400', '540000,542400,', '聂荣县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542425', '542400', '540000,542400,', '安多县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542426', '542400', '540000,542400,', '申扎县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542427', '542400', '540000,542400,', '索县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542428', '542400', '540000,542400,', '班戈县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542429', '542400', '540000,542400,', '巴青县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542430', '542400', '540000,542400,', '尼玛县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542521', '542500', '540000,542500,', '普兰县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542522', '542500', '540000,542500,', '札达县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542523', '542500', '540000,542500,', '噶尔县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542524', '542500', '540000,542500,', '日土县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542525', '542500', '540000,542500,', '革吉县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542526', '542500', '540000,542500,', '改则县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542527', '542500', '540000,542500,', '措勤县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542621', '542600', '540000,542600,', '林芝县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542622', '542600', '540000,542600,', '工布江达县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542623', '542600', '540000,542600,', '米林县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542624', '542600', '540000,542600,', '墨脱县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542625', '542600', '540000,542600,', '波密县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542626', '542600', '540000,542600,', '察隅县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('542627', '542600', '540000,542600,', '朗县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610101', '610100', '610000,610100,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610102', '610100', '610000,610100,', '新城区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610103', '610100', '610000,610100,', '碑林区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610111', '610100', '610000,610100,', '灞桥区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610112', '610100', '610000,610100,', '未央区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610113', '610100', '610000,610100,', '雁塔区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610115', '610100', '610000,610100,', '临潼区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610116', '610100', '610000,610100,', '长安区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610122', '610100', '610000,610100,', '蓝田县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610124', '610100', '610000,610100,', '周至县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610126', '610100', '610000,610100,', '高陵县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610202', '610200', '610000,610200,', '王益区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610203', '610200', '610000,610200,', '印台区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610204', '610200', '610000,610200,', '耀州区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610222', '610200', '610000,610200,', '宜君县', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610301', '610300', '610000,610300,', '市辖区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610302', '610300', '610000,610300,', '渭滨区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
insert into sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('610304', '610300', '610000,610300,', '陈仓区', 10, null, '4', '1', SYSDATE(), '1', SYSDATE(), null, '0');
commit;
