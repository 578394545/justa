/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : justa

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2018-10-03 21:09:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog_content`
-- ----------------------------
DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `slug` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `modified` bigint(20) DEFAULT NULL COMMENT '最近修改人id',
  `content` text COMMENT '内容',
  `type` varchar(16) DEFAULT NULL COMMENT '类型（article-文章）',
  `tags` varchar(200) DEFAULT NULL COMMENT '标签',
  `categories` varchar(200) DEFAULT NULL COMMENT '分类',
  `hits` int(5) NOT NULL DEFAULT '0' COMMENT '点击量',
  `comments_num` int(5) DEFAULT '0' COMMENT '评论数量',
  `allow_comment` int(1) DEFAULT '0' COMMENT '开启评论',
  `allow_ping` int(1) DEFAULT '0' COMMENT '允许ping',
  `allow_feed` int(1) DEFAULT '0' COMMENT '允许反馈',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `gtm_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gtm_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `likequantity` int(11) DEFAULT NULL COMMENT '点赞数量',
  `wechatid` varchar(50) DEFAULT NULL COMMENT '公众号id',
  `picture` varchar(50) DEFAULT NULL COMMENT '文章标题图片',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='文章内容';

-- ----------------------------
-- Records of blog_content
-- ----------------------------
INSERT INTO `blog_content` VALUES ('75', '基于 Springboot 和 Mybatis 的后台管理系统 BootDo', null, null, null, '<h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">项目介绍</h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 30px; list-style-position: initial; list-style-image: initial; color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><li><p>面向学习型的开源框架，简洁高效，减少过渡封装，展现技术本质</p></li><li><p>Springboot作为基础框架，使用mybatis作为持久层框架</p></li><li><p>使用官方推荐的thymeleaf做为模板引擎，shiro作为安全框架,主流技术，“一网打尽”</p></li><li><p>基于注解的sql写法，零XML，极简配置，一键前后台代码生成</p></li></ul><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">演示地址</span>&nbsp;<a href=\"http://47.93.239.129/\" style=\"outline: 0px; color: rgb(68, 102, 187);\">http://47.93.239.129</a></p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">功能简介</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\">1. 用户管理<br>2. 角色管理<br>3. 部门管理<br>4. 菜单管理<br>5. 系统日志<br>6. 代码生成<br>7. 内容管理</p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">所用框架</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">前端</span><br>1. Bootstrap<br>2. jQuery<br>3. bootstrap-table<br>4. layer<br>5. jsTree&nbsp;<br>6. summernote<br>7. jquery-validate<br>8. jquery-treegrid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">后端</span><br>1. SpringBoot&nbsp;<br>2. MyBatis<br>3. Thymeleaf<br>4. Shiro<br>5. druid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">项目截图</span></p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><img height=\"400\" src=\"https://static.oschina.net/uploads/space/2017/0912/182421_5LaN_3244087.png\" width=\"650\" style=\"border-width: initial; border-style: none; outline: 0px; width: 882px; max-width: -webkit-fit-content; height: auto;\"></p>', 'article', null, null, '0', null, '0', '0', '1', '1', '1', '2017-09-22 14:44:44', '2017-09-22 14:44:44', '1', 'lxy', '0');
INSERT INTO `blog_content` VALUES ('122', '123', null, null, null, '<p>123123</p>', 'article', null, '123123', '0', null, '1', null, '0', '1', '123', '2018-01-25 23:46:59', '2018-01-25 23:46:59', null, 'xxx', '0');
INSERT INTO `blog_content` VALUES ('123', '123123', null, null, null, '<p>爱上大声地</p>', 'article', null, '', '0', null, '1', null, '0', '1', '123123', '2018-01-29 22:28:27', '2018-01-29 22:28:27', null, '', '0');
INSERT INTO `blog_content` VALUES ('126', '123水滴分公司的风格是', null, null, null, '<p><br></p>', 'article', null, null, '0', null, '0', null, '0', '1', '123', '2018-01-29 23:19:58', '2018-01-29 23:19:58', null, '', '0');
INSERT INTO `blog_content` VALUES ('129', '324123的双方各', null, null, null, '<p><br></p>', 'article', null, null, '0', null, '0', null, '0', '0', '42是电饭锅', '2018-01-29 23:20:54', '2018-01-29 23:20:54', null, '', '0');
INSERT INTO `blog_content` VALUES ('132', '测试文章', null, null, null, '<p>阿萨法师打发</p>', 'article', null, null, '0', null, '0', null, '0', '1', '刘雪毅', '2018-02-03 23:46:52', '2018-02-03 23:46:52', null, 'guoli', '0');
INSERT INTO `blog_content` VALUES ('133', '32123123', null, null, null, '<p>12312大风刮过</p>', 'article', null, null, '0', null, '0', null, '0', '1', '刘雪毅', '2018-03-12 22:29:53', '2018-03-12 22:29:53', null, 'guoli', null);
INSERT INTO `blog_content` VALUES ('134', '老客户即可', null, null, null, '<p>没换个地方</p>', 'article', null, null, '0', null, '0', null, '0', '1', '刘雪毅', '2018-03-12 22:31:18', '2018-03-12 22:31:18', null, 'guoli', null);
INSERT INTO `blog_content` VALUES ('135', 'testtesttest', null, null, null, '<p>大法师打发sdfasdfasdf啊sdf而非放到的飞速度速度飞飞</p>', 'article', null, null, '0', null, '0', null, '0', '1', '刘雪毅', '2018-03-13 22:00:47', '2018-03-13 22:00:47', null, 'lxy', '/files/adcc3875-2db5-44e1-9729-03b58bfb53d1.jpg');
INSERT INTO `blog_content` VALUES ('136', '手机就认识打好基础', null, null, null, '<p>就是就是就是就是就是</p>', 'article', null, null, '0', null, '0', null, '0', '1', '刘雪毅', '2018-03-14 22:25:50', '2018-03-14 22:25:50', null, 'xxx', '/files/39ef3725-e3b7-4f46-a68b-91c8ef1d27cb.jpg');
INSERT INTO `blog_content` VALUES ('137', '一口气全念对', null, null, null, '<p>一口气全念对<br></p>', 'article', null, null, '0', null, '0', null, '0', '1', 'lxy', '2018-03-14 22:50:54', '2018-03-14 22:50:54', null, 'lxy', '/files/130cdec5-e186-40f6-bedd-da661e1fdfd1.png');
INSERT INTO `blog_content` VALUES ('138', '一个带图片的文章', null, null, null, '<p>看似简单回复<font face=\"Tahoma\" style=\"background-color: rgb(255, 255, 0);\">即可黑科技电话司</font><font face=\"Impact\">法局和就</font>是你的飞<img src=\"/files/9af268df-fad5-45e8-b9d3-353518cdf04f.png\" style=\"width: 252px;\">死定了扣积分耳机啊唯一的文化及计划<br></p>', 'article', null, null, '27', null, '0', null, '0', '1', '郭莉', '2018-04-03 21:47:58', '2018-04-03 21:47:58', null, 'guoli', '/files/0c78c20b-30cf-4095-a16a-6d438ed895e8.png');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` int(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`name`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '正常', '0', 'del_flag', '删除标记', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('3', '显示', '1', 'show_hide', '显示/隐藏', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('4', '隐藏', '0', 'show_hide', '显示/隐藏', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('5', '是', '1', 'yes_no', '是/否', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('6', '否', '0', 'yes_no', '是/否', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('7', '红色', 'red', 'color', '颜色值', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('8', '绿色', 'green', 'color', '颜色值', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('9', '蓝色', 'blue', 'color', '颜色值', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('10', '黄色', 'yellow', 'color', '颜色值', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('11', '橙色', 'orange', 'color', '颜色值', '50', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('12', '默认主题', 'default', 'theme', '主题方案', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('13', '天蓝主题', 'cerulean', 'theme', '主题方案', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('14', '橙色主题', 'readable', 'theme', '主题方案', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('15', '红色主题', 'united', 'theme', '主题方案', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'Flat主题', 'flat', 'theme', '主题方案', '60', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('17', '国家', '1', 'sys_area_type', '区域类型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('18', '省份、直辖市', '2', 'sys_area_type', '区域类型', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('19', '地市', '3', 'sys_area_type', '区域类型', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('20', '区县', '4', 'sys_area_type', '区域类型', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('21', '公司', '1', 'sys_office_type', '机构类型', '60', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('22', '部门', '2', 'sys_office_type', '机构类型', '70', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('23', '小组', '3', 'sys_office_type', '机构类型', '80', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('24', '其它', '4', 'sys_office_type', '机构类型', '90', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('25', '综合部', '1', 'sys_office_common', '快捷通用部门', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('26', '开发部', '2', 'sys_office_common', '快捷通用部门', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('27', '人力部', '3', 'sys_office_common', '快捷通用部门', '50', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('28', '一级', '1', 'sys_office_grade', '机构等级', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('29', '二级', '2', 'sys_office_grade', '机构等级', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('30', '三级', '3', 'sys_office_grade', '机构等级', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('31', '四级', '4', 'sys_office_grade', '机构等级', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('32', '所有数据', '1', 'sys_data_scope', '数据范围', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('33', '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('34', '所在公司数据', '3', 'sys_data_scope', '数据范围', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('35', '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('36', '所在部门数据', '5', 'sys_data_scope', '数据范围', '50', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('37', '仅本人数据', '8', 'sys_data_scope', '数据范围', '90', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('38', '按明细设置', '9', 'sys_data_scope', '数据范围', '100', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('39', '系统管理', '1', 'sys_user_type', '用户类型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('40', '部门经理', '2', 'sys_user_type', '用户类型', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('41', '普通用户', '3', 'sys_user_type', '用户类型', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('42', '基础主题', 'basic', 'cms_theme', '站点主题', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('43', '蓝色主题', 'blue', 'cms_theme', '站点主题', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('44', '红色主题', 'red', 'cms_theme', '站点主题', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('45', '文章模型', 'article', 'cms_module', '栏目模型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('46', '图片模型', 'picture', 'cms_module', '栏目模型', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('47', '下载模型', 'download', 'cms_module', '栏目模型', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('48', '链接模型', 'link', 'cms_module', '栏目模型', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('49', '专题模型', 'special', 'cms_module', '栏目模型', '50', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('50', '默认展现方式', '0', 'cms_show_modes', '展现方式', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('51', '首栏目内容列表', '1', 'cms_show_modes', '展现方式', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('52', '栏目第一条内容', '2', 'cms_show_modes', '展现方式', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('53', '发布', '0', 'cms_del_flag', '内容状态', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('54', '删除', '1', 'cms_del_flag', '内容状态', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('55', '审核', '2', 'cms_del_flag', '内容状态', '15', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('56', '首页焦点图', '1', 'cms_posid', '推荐位', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('57', '栏目页文章推荐', '2', 'cms_posid', '推荐位', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('58', '咨询', '1', 'cms_guestbook', '留言板分类', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('59', '建议', '2', 'cms_guestbook', '留言板分类', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('60', '投诉', '3', 'cms_guestbook', '留言板分类', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('61', '其它', '4', 'cms_guestbook', '留言板分类', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('62', '公休', '1', 'oa_leave_type', '请假类型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('63', '病假', '2', 'oa_leave_type', '请假类型', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('64', '事假', '3', 'oa_leave_type', '请假类型', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('65', '调休', '4', 'oa_leave_type', '请假类型', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('66', '婚假', '5', 'oa_leave_type', '请假类型', '60', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('67', '接入日志', '1', 'sys_log_type', '日志类型', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('68', '异常日志', '2', 'sys_log_type', '日志类型', '40', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('69', '请假流程', 'leave', 'act_type', '流程类型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('70', '审批测试流程', 'test_audit', 'act_type', '流程类型', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('71', '分类1', '1', 'act_category', '流程分类', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('72', '分类2', '2', 'act_category', '流程分类', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('73', '增删改查', 'crud', 'gen_category', '代码生成分类', '10', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('74', '增删改查（包含从表）', 'crud_many', 'gen_category', '代码生成分类', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('75', '树结构', 'tree', 'gen_category', '代码生成分类', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('80', 'Between', 'between', 'gen_query_type', '查询方式', '50', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('81', 'Like', 'like', 'gen_query_type', '查询方式', '60', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'Left Like', 'left_like', 'gen_query_type', '查询方式', '70', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'Right Like', 'right_like', 'gen_query_type', '查询方式', '80', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('84', '文本框', 'input', 'gen_show_type', '字段生成方案', '10', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('85', '文本域', 'textarea', 'gen_show_type', '字段生成方案', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('86', '下拉框', 'select', 'gen_show_type', '字段生成方案', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('87', '复选框', 'checkbox', 'gen_show_type', '字段生成方案', '40', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('88', '单选框', 'radiobox', 'gen_show_type', '字段生成方案', '50', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('89', '日期选择', 'dateselect', 'gen_show_type', '字段生成方案', '60', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('90', '人员选择', 'userselect', 'gen_show_type', '字段生成方案', '70', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('91', '部门选择', 'officeselect', 'gen_show_type', '字段生成方案', '80', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('92', '区域选择', 'areaselect', 'gen_show_type', '字段生成方案', '90', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('95', '仅持久层', 'dao', 'gen_category', '代码生成分类', '40', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('96', '男', '1', 'sex', '性别', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('97', '女', '2', 'sex', '性别', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('100', 'Date', 'java.util.Date', 'gen_java_type', 'Java类型', '50', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', null, '1', null, null, '1');
INSERT INTO `sys_dict` VALUES ('105', '会议通告', '1', 'oa_notify_type', '通知通告类型', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('106', '奖惩通告', '2', 'oa_notify_type', '通知通告类型', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('107', '活动通告', '3', 'oa_notify_type', '通知通告类型', '30', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('108', '草稿', '0', 'oa_notify_status', '通知通告状态', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('109', '发布', '1', 'oa_notify_status', '通知通告状态', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('110', '未读', '0', 'oa_notify_read', '通知通告状态', '10', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('111', '已读', '1', 'oa_notify_read', '通知通告状态', '20', '0', '1', null, '1', null, null, '0');
INSERT INTO `sys_dict` VALUES ('112', '草稿', '0', 'oa_notify_status', '通知通告状态', '10', '0', '1', null, '1', null, '', '0');
INSERT INTO `sys_dict` VALUES ('113', '删除', '0', 'del_flag', '删除标记', null, null, null, null, null, null, '', '');
INSERT INTO `sys_dict` VALUES ('118', '关于', 'about', 'blog_type', '博客类型', null, null, null, null, null, null, '全url是:/blog/open/page/about', '');
INSERT INTO `sys_dict` VALUES ('119', '交流', 'communication', 'blog_type', '博客类型', null, null, null, null, null, null, '', '');
INSERT INTO `sys_dict` VALUES ('120', '文章', 'article', 'blog_type', '博客类型', null, null, null, null, null, null, '', '');
INSERT INTO `sys_dict` VALUES ('121', '编码', 'code', 'hobby', '爱好', null, null, null, null, null, null, '', '');
INSERT INTO `sys_dict` VALUES ('122', '绘画', 'painting', 'hobby', '爱好', null, null, null, null, null, null, '', '');

-- ----------------------------
-- Table structure for `sys_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('149', '0', '/files/168adeea-d3f4-4962-9bed-26fbcf7aab63.jpg', '2018-03-12 22:31:13');
INSERT INTO `sys_file` VALUES ('150', '0', '/files/adcc3875-2db5-44e1-9729-03b58bfb53d1.jpg', '2018-03-13 21:59:37');
INSERT INTO `sys_file` VALUES ('151', '0', '/files/39ef3725-e3b7-4f46-a68b-91c8ef1d27cb.jpg', '2018-03-14 22:24:24');
INSERT INTO `sys_file` VALUES ('152', '0', '/files/130cdec5-e186-40f6-bedd-da661e1fdfd1.png', '2018-03-14 22:50:49');
INSERT INTO `sys_file` VALUES ('153', '0', '/files/72273fda-59f0-49f8-96dc-d9aaf148bc34.png', '2018-04-03 21:45:11');
INSERT INTO `sys_file` VALUES ('154', '0', '/files/0c78c20b-30cf-4095-a16a-6d438ed895e8.png', '2018-04-03 21:46:49');
INSERT INTO `sys_file` VALUES ('155', '0', '/files/9af268df-fad5-45e8-b9d3-353518cdf04f.png', '2018-04-03 21:47:05');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('738', '1', 'admin', '登录', '5', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-20 22:02:46');
INSERT INTO `sys_log` VALUES ('739', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:02:46');
INSERT INTO `sys_log` VALUES ('740', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:02:47');
INSERT INTO `sys_log` VALUES ('741', '1', 'admin', '请求访问主页', '8', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:51');
INSERT INTO `sys_log` VALUES ('742', '1', 'admin', '请求访问主页', '8', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:52');
INSERT INTO `sys_log` VALUES ('743', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:54');
INSERT INTO `sys_log` VALUES ('744', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:54');
INSERT INTO `sys_log` VALUES ('745', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:56');
INSERT INTO `sys_log` VALUES ('746', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:04:57');
INSERT INTO `sys_log` VALUES ('747', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-20 22:07:20');
INSERT INTO `sys_log` VALUES ('748', '1', 'admin', '请求访问主页', '102', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:07:20');
INSERT INTO `sys_log` VALUES ('749', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:07:20');
INSERT INTO `sys_log` VALUES ('750', '1', 'admin', '登录', '4', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-20 22:07:41');
INSERT INTO `sys_log` VALUES ('751', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:07:41');
INSERT INTO `sys_log` VALUES ('752', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:07:42');
INSERT INTO `sys_log` VALUES ('753', '1', 'admin', '登录', '4', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-20 22:10:21');
INSERT INTO `sys_log` VALUES ('754', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:10:21');
INSERT INTO `sys_log` VALUES ('755', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:10:21');
INSERT INTO `sys_log` VALUES ('756', '1', 'admin', '登录', '3', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-20 22:20:47');
INSERT INTO `sys_log` VALUES ('757', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:20:47');
INSERT INTO `sys_log` VALUES ('758', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:20:48');
INSERT INTO `sys_log` VALUES ('759', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:21:22');
INSERT INTO `sys_log` VALUES ('760', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-20 22:21:23');
INSERT INTO `sys_log` VALUES ('761', '1', 'admin', '编辑用户', '23', 'com.justa.system.controller.UserController.edit()', null, '127.0.0.1', '2018-01-20 22:21:37');
INSERT INTO `sys_log` VALUES ('762', '1', 'admin', '编辑角色', '3', 'com.justa.system.controller.RoleController.edit()', null, '127.0.0.1', '2018-01-20 22:21:44');
INSERT INTO `sys_log` VALUES ('763', '1', 'admin', '编辑菜单', '5', 'com.justa.system.controller.MenuController.edit()', null, '127.0.0.1', '2018-01-20 22:21:47');
INSERT INTO `sys_log` VALUES ('764', '1', 'admin', '添加公众号', '0', 'com.justa.system.controller.WechatOfficialAccountsController.add()', null, '127.0.0.1', '2018-01-20 22:22:17');
INSERT INTO `sys_log` VALUES ('765', '1', 'admin', '编辑用户', '10', 'com.justa.system.controller.UserController.edit()', null, '127.0.0.1', '2018-01-20 22:22:31');
INSERT INTO `sys_log` VALUES ('766', '1', 'admin', '编辑角色', '2', 'com.justa.system.controller.RoleController.edit()', null, '127.0.0.1', '2018-01-20 22:22:35');
INSERT INTO `sys_log` VALUES ('767', '1', 'admin', '编辑菜单', '3', 'com.justa.system.controller.MenuController.edit()', null, '127.0.0.1', '2018-01-20 22:22:40');
INSERT INTO `sys_log` VALUES ('768', '1', 'admin', '登录', '34', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 22:33:11');
INSERT INTO `sys_log` VALUES ('769', '1', 'admin', '请求访问主页', '156', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:33:12');
INSERT INTO `sys_log` VALUES ('770', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:33:12');
INSERT INTO `sys_log` VALUES ('771', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:33:32');
INSERT INTO `sys_log` VALUES ('772', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:33:33');
INSERT INTO `sys_log` VALUES ('773', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 22:36:19');
INSERT INTO `sys_log` VALUES ('774', '1', 'admin', '请求访问主页', '89', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:36:20');
INSERT INTO `sys_log` VALUES ('775', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 22:36:21');
INSERT INTO `sys_log` VALUES ('776', '1', 'admin', '登录', '11', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:00:00');
INSERT INTO `sys_log` VALUES ('777', '1', 'admin', '请求访问主页', '77', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:00:00');
INSERT INTO `sys_log` VALUES ('778', '1', 'admin', '请求访问主页', '21', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:00:00');
INSERT INTO `sys_log` VALUES ('779', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:01:20');
INSERT INTO `sys_log` VALUES ('780', '1', 'admin', '请求访问主页', '111', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:01:20');
INSERT INTO `sys_log` VALUES ('781', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:01:21');
INSERT INTO `sys_log` VALUES ('782', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:03:41');
INSERT INTO `sys_log` VALUES ('783', '1', 'admin', '请求访问主页', '112', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:03:41');
INSERT INTO `sys_log` VALUES ('784', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:03:42');
INSERT INTO `sys_log` VALUES ('785', '1', 'admin', '登录', '42', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:06:08');
INSERT INTO `sys_log` VALUES ('786', '1', 'admin', '请求访问主页', '102', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:06:08');
INSERT INTO `sys_log` VALUES ('787', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:06:09');
INSERT INTO `sys_log` VALUES ('788', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:19:07');
INSERT INTO `sys_log` VALUES ('789', '1', 'admin', '请求访问主页', '115', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:19:07');
INSERT INTO `sys_log` VALUES ('790', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:19:08');
INSERT INTO `sys_log` VALUES ('791', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:23:02');
INSERT INTO `sys_log` VALUES ('792', '1', 'admin', '请求访问主页', '120', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:23:02');
INSERT INTO `sys_log` VALUES ('793', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:23:03');
INSERT INTO `sys_log` VALUES ('794', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:26:35');
INSERT INTO `sys_log` VALUES ('795', '1', 'admin', '请求访问主页', '135', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:26:35');
INSERT INTO `sys_log` VALUES ('796', '1', 'admin', '请求访问主页', '19', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:26:36');
INSERT INTO `sys_log` VALUES ('797', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:31:02');
INSERT INTO `sys_log` VALUES ('798', '1', 'admin', '请求访问主页', '123', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:31:03');
INSERT INTO `sys_log` VALUES ('799', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:31:03');
INSERT INTO `sys_log` VALUES ('800', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:44:13');
INSERT INTO `sys_log` VALUES ('801', '1', 'admin', '请求访问主页', '128', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:44:14');
INSERT INTO `sys_log` VALUES ('802', '1', 'admin', '请求访问主页', '18', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:44:14');
INSERT INTO `sys_log` VALUES ('803', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-25 23:46:46');
INSERT INTO `sys_log` VALUES ('804', '1', 'admin', '请求访问主页', '111', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:46:46');
INSERT INTO `sys_log` VALUES ('805', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-25 23:46:47');
INSERT INTO `sys_log` VALUES ('806', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 22:26:09');
INSERT INTO `sys_log` VALUES ('807', '1', 'admin', '请求访问主页', '106', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:26:10');
INSERT INTO `sys_log` VALUES ('808', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:26:10');
INSERT INTO `sys_log` VALUES ('809', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:27:23');
INSERT INTO `sys_log` VALUES ('810', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:27:24');
INSERT INTO `sys_log` VALUES ('811', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 22:37:19');
INSERT INTO `sys_log` VALUES ('812', '1', 'admin', '请求访问主页', '107', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:37:19');
INSERT INTO `sys_log` VALUES ('813', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:37:20');
INSERT INTO `sys_log` VALUES ('814', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 22:42:53');
INSERT INTO `sys_log` VALUES ('815', '1', 'admin', '请求访问主页', '98', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:42:53');
INSERT INTO `sys_log` VALUES ('816', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:42:54');
INSERT INTO `sys_log` VALUES ('817', '1', 'admin', '登录', '10', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 22:58:15');
INSERT INTO `sys_log` VALUES ('818', '1', 'admin', '请求访问主页', '114', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:58:15');
INSERT INTO `sys_log` VALUES ('819', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 22:58:16');
INSERT INTO `sys_log` VALUES ('820', '1', 'admin', '登录', '10', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 23:06:31');
INSERT INTO `sys_log` VALUES ('821', '1', 'admin', '请求访问主页', '119', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:06:31');
INSERT INTO `sys_log` VALUES ('822', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:06:32');
INSERT INTO `sys_log` VALUES ('823', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 23:14:33');
INSERT INTO `sys_log` VALUES ('824', '1', 'admin', '请求访问主页', '106', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:14:33');
INSERT INTO `sys_log` VALUES ('825', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:14:33');
INSERT INTO `sys_log` VALUES ('826', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:01');
INSERT INTO `sys_log` VALUES ('827', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:02');
INSERT INTO `sys_log` VALUES ('828', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:05');
INSERT INTO `sys_log` VALUES ('829', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:05');
INSERT INTO `sys_log` VALUES ('830', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:08');
INSERT INTO `sys_log` VALUES ('831', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:15:09');
INSERT INTO `sys_log` VALUES ('832', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-29 23:17:59');
INSERT INTO `sys_log` VALUES ('833', '1', 'admin', '请求访问主页', '126', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:17:59');
INSERT INTO `sys_log` VALUES ('834', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:18:00');
INSERT INTO `sys_log` VALUES ('835', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:20:01');
INSERT INTO `sys_log` VALUES ('836', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:20:01');
INSERT INTO `sys_log` VALUES ('837', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:20:57');
INSERT INTO `sys_log` VALUES ('838', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-29 23:20:57');
INSERT INTO `sys_log` VALUES ('839', '1', 'admin', '登录', '31', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-30 22:18:07');
INSERT INTO `sys_log` VALUES ('840', '1', 'admin', '请求访问主页', '135', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:18:07');
INSERT INTO `sys_log` VALUES ('841', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:18:08');
INSERT INTO `sys_log` VALUES ('842', '1', 'admin', '登录', '12', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-01-30 22:21:54');
INSERT INTO `sys_log` VALUES ('843', '1', 'admin', '请求访问主页', '90', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:21:55');
INSERT INTO `sys_log` VALUES ('844', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:21:55');
INSERT INTO `sys_log` VALUES ('845', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:22:22');
INSERT INTO `sys_log` VALUES ('846', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-01-30 22:22:23');
INSERT INTO `sys_log` VALUES ('847', '1', 'admin', '登录', '21', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 22:40:53');
INSERT INTO `sys_log` VALUES ('848', '1', 'admin', '请求访问主页', '125', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 22:40:53');
INSERT INTO `sys_log` VALUES ('849', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 22:40:54');
INSERT INTO `sys_log` VALUES ('850', '1', 'admin', '登录', '15', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 22:54:58');
INSERT INTO `sys_log` VALUES ('851', '1', 'admin', '请求访问主页', '250', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 22:54:59');
INSERT INTO `sys_log` VALUES ('852', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 22:54:59');
INSERT INTO `sys_log` VALUES ('853', '1', 'admin', '登录', '91', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:03:45');
INSERT INTO `sys_log` VALUES ('854', '1', 'admin', '请求访问主页', '91', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:03:45');
INSERT INTO `sys_log` VALUES ('855', '1', 'admin', '请求访问主页', '23', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:03:46');
INSERT INTO `sys_log` VALUES ('856', '1', 'admin', '登录', '15', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:12:41');
INSERT INTO `sys_log` VALUES ('857', '1', 'admin', '请求访问主页', '103', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:12:41');
INSERT INTO `sys_log` VALUES ('858', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:12:42');
INSERT INTO `sys_log` VALUES ('859', '1', 'admin', '登录', '15', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:14:03');
INSERT INTO `sys_log` VALUES ('860', '1', 'admin', '请求访问主页', '149', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:14:04');
INSERT INTO `sys_log` VALUES ('861', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:14:04');
INSERT INTO `sys_log` VALUES ('862', '1', 'admin', '登录', '15', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:18:37');
INSERT INTO `sys_log` VALUES ('863', '1', 'admin', '请求访问主页', '76', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:18:37');
INSERT INTO `sys_log` VALUES ('864', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:18:37');
INSERT INTO `sys_log` VALUES ('865', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:22:57');
INSERT INTO `sys_log` VALUES ('866', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:22:57');
INSERT INTO `sys_log` VALUES ('867', '1', 'admin', '请求访问主页', '8', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:25:15');
INSERT INTO `sys_log` VALUES ('868', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:25:15');
INSERT INTO `sys_log` VALUES ('869', '1', 'admin', '请求访问主页', '13', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:28:28');
INSERT INTO `sys_log` VALUES ('870', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:28:28');
INSERT INTO `sys_log` VALUES ('871', '1', 'admin', '请求访问主页', '8', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:30:21');
INSERT INTO `sys_log` VALUES ('872', '1', 'admin', '请求访问主页', '8', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:30:22');
INSERT INTO `sys_log` VALUES ('873', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:33:50');
INSERT INTO `sys_log` VALUES ('874', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:33:50');
INSERT INTO `sys_log` VALUES ('875', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:34:17');
INSERT INTO `sys_log` VALUES ('876', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:34:18');
INSERT INTO `sys_log` VALUES ('877', '1', 'admin', '登录', '18', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:41:38');
INSERT INTO `sys_log` VALUES ('878', '1', 'admin', '请求访问主页', '195', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:41:38');
INSERT INTO `sys_log` VALUES ('879', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:41:39');
INSERT INTO `sys_log` VALUES ('880', '1', 'admin', '添加公众号', '0', 'com.justa.system.controller.WechatOfficialAccountsController.add()', null, '127.0.0.1', '2018-02-03 23:41:56');
INSERT INTO `sys_log` VALUES ('881', '1', 'admin', '登录', '18', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-03 23:46:44');
INSERT INTO `sys_log` VALUES ('882', '1', 'admin', '请求访问主页', '172', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:46:44');
INSERT INTO `sys_log` VALUES ('883', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-03 23:46:44');
INSERT INTO `sys_log` VALUES ('884', '1', 'admin', '登录', '24', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-02-25 22:15:20');
INSERT INTO `sys_log` VALUES ('885', '1', 'admin', '请求访问主页', '109', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-25 22:15:20');
INSERT INTO `sys_log` VALUES ('886', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-02-25 22:15:20');
INSERT INTO `sys_log` VALUES ('887', '1', 'admin', '登录', '32', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 17:45:24');
INSERT INTO `sys_log` VALUES ('888', '1', 'admin', '请求访问主页', '172', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 17:45:24');
INSERT INTO `sys_log` VALUES ('889', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 17:45:25');
INSERT INTO `sys_log` VALUES ('890', '1', 'admin', '登录', '19', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 21:57:54');
INSERT INTO `sys_log` VALUES ('891', '1', 'admin', '请求访问主页', '137', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 21:57:54');
INSERT INTO `sys_log` VALUES ('892', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 21:57:55');
INSERT INTO `sys_log` VALUES ('893', '1', 'admin', '登录', '12', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 21:59:07');
INSERT INTO `sys_log` VALUES ('894', '1', 'admin', '请求访问主页', '115', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 21:59:07');
INSERT INTO `sys_log` VALUES ('895', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 21:59:07');
INSERT INTO `sys_log` VALUES ('896', '1', 'admin', '登录', '20', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 22:01:51');
INSERT INTO `sys_log` VALUES ('897', '1', 'admin', '请求访问主页', '135', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:01:51');
INSERT INTO `sys_log` VALUES ('898', '1', 'admin', '请求访问主页', '19', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:01:51');
INSERT INTO `sys_log` VALUES ('899', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:07:34');
INSERT INTO `sys_log` VALUES ('900', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:07:34');
INSERT INTO `sys_log` VALUES ('901', '1', 'admin', '登录', '19', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 22:57:15');
INSERT INTO `sys_log` VALUES ('902', '1', 'admin', '请求访问主页', '81', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:57:15');
INSERT INTO `sys_log` VALUES ('903', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 22:57:15');
INSERT INTO `sys_log` VALUES ('904', '1', 'admin', '登录', '3', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-04 23:30:32');
INSERT INTO `sys_log` VALUES ('905', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 23:30:32');
INSERT INTO `sys_log` VALUES ('906', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-04 23:30:32');
INSERT INTO `sys_log` VALUES ('907', '1', 'admin', '登录', '26', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-12 21:48:14');
INSERT INTO `sys_log` VALUES ('908', '1', 'admin', '请求访问主页', '107', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 21:48:14');
INSERT INTO `sys_log` VALUES ('909', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 21:48:15');
INSERT INTO `sys_log` VALUES ('910', '1', 'admin', '登录', '16', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-12 21:57:37');
INSERT INTO `sys_log` VALUES ('911', '1', 'admin', '请求访问主页', '103', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 21:57:38');
INSERT INTO `sys_log` VALUES ('912', '1', 'admin', '请求访问主页', '18', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 21:57:38');
INSERT INTO `sys_log` VALUES ('913', '1', 'admin', '添加用户', '11', 'com.justa.system.controller.UserController.add()', null, '127.0.0.1', '2018-03-12 21:58:13');
INSERT INTO `sys_log` VALUES ('914', '1', 'admin', '添加菜单', '0', 'com.justa.system.controller.MenuController.add()', null, '127.0.0.1', '2018-03-12 21:58:16');
INSERT INTO `sys_log` VALUES ('915', '1', 'admin', '添加角色', '0', 'com.justa.system.controller.RoleController.add()', null, '127.0.0.1', '2018-03-12 21:58:24');
INSERT INTO `sys_log` VALUES ('916', '1', 'admin', '添加公众号', '0', 'com.justa.system.controller.WechatOfficialAccountsController.add()', null, '127.0.0.1', '2018-03-12 21:58:39');
INSERT INTO `sys_log` VALUES ('917', '1', 'admin', '编辑菜单', '6', 'com.justa.system.controller.MenuController.edit()', null, '127.0.0.1', '2018-03-12 21:59:06');
INSERT INTO `sys_log` VALUES ('918', '1', 'admin', '登录', '9', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-12 22:12:23');
INSERT INTO `sys_log` VALUES ('919', '1', 'admin', '请求访问主页', '97', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:12:24');
INSERT INTO `sys_log` VALUES ('920', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:12:24');
INSERT INTO `sys_log` VALUES ('921', '1', 'admin', '请求访问主页', '16', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:14:18');
INSERT INTO `sys_log` VALUES ('922', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:14:19');
INSERT INTO `sys_log` VALUES ('923', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:14:36');
INSERT INTO `sys_log` VALUES ('924', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:14:36');
INSERT INTO `sys_log` VALUES ('925', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:15:35');
INSERT INTO `sys_log` VALUES ('926', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:15:36');
INSERT INTO `sys_log` VALUES ('927', '1', 'admin', '请求访问主页', '12', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:17:55');
INSERT INTO `sys_log` VALUES ('928', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:17:55');
INSERT INTO `sys_log` VALUES ('929', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:19');
INSERT INTO `sys_log` VALUES ('930', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:20');
INSERT INTO `sys_log` VALUES ('931', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:40');
INSERT INTO `sys_log` VALUES ('932', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:40');
INSERT INTO `sys_log` VALUES ('933', '1', 'admin', '请求访问主页', '9', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:50');
INSERT INTO `sys_log` VALUES ('934', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-12 22:18:51');
INSERT INTO `sys_log` VALUES ('935', '1', 'admin', '添加用户', '6', 'com.justa.system.controller.UserController.add()', null, '127.0.0.1', '2018-03-12 22:20:31');
INSERT INTO `sys_log` VALUES ('936', '1', 'admin', '登录', '22', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-13 21:59:07');
INSERT INTO `sys_log` VALUES ('937', '1', 'admin', '请求访问主页', '118', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-13 21:59:07');
INSERT INTO `sys_log` VALUES ('938', '1', 'admin', '请求访问主页', '11', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-13 21:59:08');
INSERT INTO `sys_log` VALUES ('939', '1', 'admin', '登录', '40', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-14 22:24:06');
INSERT INTO `sys_log` VALUES ('940', '1', 'admin', '请求访问主页', '112', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-14 22:24:06');
INSERT INTO `sys_log` VALUES ('941', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-14 22:24:06');
INSERT INTO `sys_log` VALUES ('942', '1', 'admin', '登录', '12', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-14 22:50:25');
INSERT INTO `sys_log` VALUES ('943', '1', 'admin', '请求访问主页', '111', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-14 22:50:26');
INSERT INTO `sys_log` VALUES ('944', '1', 'admin', '请求访问主页', '18', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-14 22:50:26');
INSERT INTO `sys_log` VALUES ('945', '1', 'admin', '登录', '31', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-03-18 09:57:20');
INSERT INTO `sys_log` VALUES ('946', '1', 'admin', '请求访问主页', '140', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-18 09:57:20');
INSERT INTO `sys_log` VALUES ('947', '1', 'admin', '请求访问主页', '17', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-03-18 09:57:21');
INSERT INTO `sys_log` VALUES ('948', '1', 'admin', '登录', '163', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-04-02 22:57:59');
INSERT INTO `sys_log` VALUES ('949', '1', 'admin', '请求访问主页', '193', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-02 22:58:00');
INSERT INTO `sys_log` VALUES ('950', '1', 'admin', '请求访问主页', '20', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-02 22:58:01');
INSERT INTO `sys_log` VALUES ('951', '1', 'admin', '登录', '64', 'com.justa.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2018-04-03 21:44:27');
INSERT INTO `sys_log` VALUES ('952', '1', 'admin', '请求访问主页', '149', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-03 21:44:27');
INSERT INTO `sys_log` VALUES ('953', '1', 'admin', '请求访问主页', '14', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-03 21:44:28');
INSERT INTO `sys_log` VALUES ('954', '1', 'admin', '请求访问主页', '15', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-03 21:48:20');
INSERT INTO `sys_log` VALUES ('955', '1', 'admin', '请求访问主页', '10', 'com.justa.system.controller.LoginController.index()', null, '127.0.0.1', '2018-04-03 21:48:20');
INSERT INTO `sys_log` VALUES ('956', '1', 'admin', '添加公众号', '0', 'com.justa.system.controller.WechatOfficialAccountsController.add()', null, '127.0.0.1', '2018-04-03 22:07:31');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '基础管理', '', '', '0', 'fa fa-bars', '5', '2017-08-09 22:49:47', null);
INSERT INTO `sys_menu` VALUES ('2', '3', '系统菜单', 'sys/menu/', 'sys:menu:menu', '1', 'fa fa-th-list', '2', '2017-08-09 22:55:15', null);
INSERT INTO `sys_menu` VALUES ('3', '0', '系统管理', '', '', '0', 'fa fa-desktop', '3', '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES ('6', '3', '用户管理', 'sys/user/', 'sys:user:user', '1', 'fa fa-user', '0', '2017-08-10 14:12:11', null);
INSERT INTO `sys_menu` VALUES ('7', '3', '角色管理', 'sys/role', 'sys:role:role', '1', 'fa fa-paw', '1', '2017-08-10 14:13:19', null);
INSERT INTO `sys_menu` VALUES ('12', '6', '新增', '', 'sys:user:add', '2', '', '0', '2017-08-14 10:51:35', null);
INSERT INTO `sys_menu` VALUES ('13', '6', '编辑', '', 'sys:user:edit', '2', '', '0', '2017-08-14 10:52:06', null);
INSERT INTO `sys_menu` VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '0', '2017-08-14 10:52:24', null);
INSERT INTO `sys_menu` VALUES ('15', '7', '新增', '', 'sys:role:add', '2', '', '0', '2017-08-14 10:56:37', null);
INSERT INTO `sys_menu` VALUES ('20', '2', '新增', '', 'sys:menu:add', '2', '', '0', '2017-08-14 10:59:32', null);
INSERT INTO `sys_menu` VALUES ('21', '2', '编辑', '', 'sys:menu:edit', '2', '', '0', '2017-08-14 10:59:56', null);
INSERT INTO `sys_menu` VALUES ('22', '2', '删除', '', 'sys:menu:remove', '2', '', '0', '2017-08-14 11:00:26', null);
INSERT INTO `sys_menu` VALUES ('24', '6', '批量删除', '', 'sys:user:batchRemove', '2', '', '0', '2017-08-14 17:27:18', null);
INSERT INTO `sys_menu` VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '0', '2017-08-14 17:27:43', null);
INSERT INTO `sys_menu` VALUES ('26', '6', '重置密码', '', 'sys:user:resetPwd', '2', '', '0', '2017-08-14 17:28:34', null);
INSERT INTO `sys_menu` VALUES ('27', '91', '系统日志', 'common/log', 'common:log', '1', 'fa fa-warning', '0', '2017-08-14 22:11:53', null);
INSERT INTO `sys_menu` VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '0', '2017-08-14 22:30:22', null);
INSERT INTO `sys_menu` VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '0', '2017-08-14 22:30:43', null);
INSERT INTO `sys_menu` VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '0', '2017-08-14 22:31:02', null);
INSERT INTO `sys_menu` VALUES ('48', '77', '代码生成', 'common/generator', 'common:generator', '1', 'fa fa-code', '3', null, null);
INSERT INTO `sys_menu` VALUES ('49', '0', '文章管理', '', '', '0', 'fa fa-rss', '2', null, null);
INSERT INTO `sys_menu` VALUES ('50', '49', '文章列表', 'blog/bContent', 'blog:bContent:bContent', '1', 'fa fa-file-image-o', '1', null, null);
INSERT INTO `sys_menu` VALUES ('51', '50', '新增', '', 'blog:bContent:add', '2', '', null, null, null);
INSERT INTO `sys_menu` VALUES ('55', '7', '编辑', '', 'sys:role:edit', '2', '', null, null, null);
INSERT INTO `sys_menu` VALUES ('56', '7', '删除', '', 'sys:role:remove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('57', '91', '运行监控', '/druid/index.html', '', '1', 'fa fa-caret-square-o-right', '1', null, null);
INSERT INTO `sys_menu` VALUES ('58', '50', '编辑', '', 'blog:bContent:edit', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('59', '50', '删除', '', 'blog:bContent:remove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('60', '50', '批量删除', '', 'blog:bContent:batchRemove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('61', '2', '批量删除', '', 'sys:menu:batchRemove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('62', '7', '批量删除', '', 'sys:role:batchRemove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('68', '49', '发布文章', '/blog/bContent/add', 'blog:bContent:add', '1', 'fa fa-edit', '0', null, null);
INSERT INTO `sys_menu` VALUES ('71', '1', '文件管理', '/common/sysFile', 'common:sysFile:sysFile', '1', 'fa fa-folder-open', '2', null, null);
INSERT INTO `sys_menu` VALUES ('72', '77', '计划任务', 'common/job', 'common:taskScheduleJob', '1', 'fa fa-hourglass-1', '4', null, null);
INSERT INTO `sys_menu` VALUES ('77', '0', '系统工具', '', '', '0', 'fa fa-gear', '7', null, null);
INSERT INTO `sys_menu` VALUES ('78', '1', '数据字典', '/common/sysDict', 'common:sysDict:sysDict', '1', 'fa fa-book', '1', null, null);
INSERT INTO `sys_menu` VALUES ('79', '78', '增加', '/common/sysDict/add', 'common:sysDict:add', '2', null, '2', null, null);
INSERT INTO `sys_menu` VALUES ('80', '78', '编辑', '/common/sysDict/edit', 'common:sysDict:edit', '2', null, '2', null, null);
INSERT INTO `sys_menu` VALUES ('81', '78', '删除', '/common/sysDict/remove', 'common:sysDict:remove', '2', '', '3', null, null);
INSERT INTO `sys_menu` VALUES ('83', '78', '批量删除', '/common/sysDict/batchRemove', 'common:sysDict:batchRemove', '2', '', '4', null, null);
INSERT INTO `sys_menu` VALUES ('91', '0', '系统监控', '', '', '0', 'fa fa-video-camera', '4', null, null);
INSERT INTO `sys_menu` VALUES ('92', '91', '在线用户', 'sys/online', '', '1', 'fa fa-user', null, null, null);
INSERT INTO `sys_menu` VALUES ('97', '0', '图表管理', '', '', '0', 'fa fa-bar-chart', '6', null, null);
INSERT INTO `sys_menu` VALUES ('98', '97', '百度chart', '/chart/graph_echarts.html', '', '1', 'fa fa-area-chart', null, null, null);
INSERT INTO `sys_menu` VALUES ('99', '96', '所有权限', '', 'act:process', '2', '', null, null, null);
INSERT INTO `sys_menu` VALUES ('100', '0', '公众号管理', '', '', '0', 'fa fa-address-card-o', '1', null, null);
INSERT INTO `sys_menu` VALUES ('101', '100', '公众号管理', 'sys/wechatOfficialAccounts', 'sys:wechatOfficialAccounts:wechatOfficialAccounts', '1', 'fa fa-address-book-o', null, null, null);
INSERT INTO `sys_menu` VALUES ('102', '101', '新增', '', 'sys:wechatOfficialAccounts:add', '2', '', '0', null, null);
INSERT INTO `sys_menu` VALUES ('103', '101', '编辑', '', 'sys:wechatOfficialAccounts:edit', '2', '', '1', null, null);
INSERT INTO `sys_menu` VALUES ('104', '101', '删除', '', 'sys:wechatOfficialAccounts:remove', '2', '', '2', null, null);
INSERT INTO `sys_menu` VALUES ('105', '101', '批量删除', '', 'sys:wechatOfficialAccounts:batchRemove', '2', '', '4', null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级用户角色', 'admin', '拥有最高权限', '2', '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES ('2', '运营', null, '运营', null, null, null);

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3043 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('367', '44', '1');
INSERT INTO `sys_role_menu` VALUES ('368', '44', '32');
INSERT INTO `sys_role_menu` VALUES ('369', '44', '33');
INSERT INTO `sys_role_menu` VALUES ('370', '44', '34');
INSERT INTO `sys_role_menu` VALUES ('371', '44', '35');
INSERT INTO `sys_role_menu` VALUES ('372', '44', '28');
INSERT INTO `sys_role_menu` VALUES ('373', '44', '29');
INSERT INTO `sys_role_menu` VALUES ('374', '44', '30');
INSERT INTO `sys_role_menu` VALUES ('375', '44', '38');
INSERT INTO `sys_role_menu` VALUES ('376', '44', '4');
INSERT INTO `sys_role_menu` VALUES ('377', '44', '27');
INSERT INTO `sys_role_menu` VALUES ('378', '45', '38');
INSERT INTO `sys_role_menu` VALUES ('379', '46', '3');
INSERT INTO `sys_role_menu` VALUES ('380', '46', '20');
INSERT INTO `sys_role_menu` VALUES ('381', '46', '21');
INSERT INTO `sys_role_menu` VALUES ('382', '46', '22');
INSERT INTO `sys_role_menu` VALUES ('383', '46', '23');
INSERT INTO `sys_role_menu` VALUES ('384', '46', '11');
INSERT INTO `sys_role_menu` VALUES ('385', '46', '12');
INSERT INTO `sys_role_menu` VALUES ('386', '46', '13');
INSERT INTO `sys_role_menu` VALUES ('387', '46', '14');
INSERT INTO `sys_role_menu` VALUES ('388', '46', '24');
INSERT INTO `sys_role_menu` VALUES ('389', '46', '25');
INSERT INTO `sys_role_menu` VALUES ('390', '46', '26');
INSERT INTO `sys_role_menu` VALUES ('391', '46', '15');
INSERT INTO `sys_role_menu` VALUES ('392', '46', '2');
INSERT INTO `sys_role_menu` VALUES ('393', '46', '6');
INSERT INTO `sys_role_menu` VALUES ('394', '46', '7');
INSERT INTO `sys_role_menu` VALUES ('598', '50', '38');
INSERT INTO `sys_role_menu` VALUES ('632', '38', '42');
INSERT INTO `sys_role_menu` VALUES ('737', '51', '38');
INSERT INTO `sys_role_menu` VALUES ('738', '51', '39');
INSERT INTO `sys_role_menu` VALUES ('739', '51', '40');
INSERT INTO `sys_role_menu` VALUES ('740', '51', '41');
INSERT INTO `sys_role_menu` VALUES ('741', '51', '4');
INSERT INTO `sys_role_menu` VALUES ('742', '51', '32');
INSERT INTO `sys_role_menu` VALUES ('743', '51', '33');
INSERT INTO `sys_role_menu` VALUES ('744', '51', '34');
INSERT INTO `sys_role_menu` VALUES ('745', '51', '35');
INSERT INTO `sys_role_menu` VALUES ('746', '51', '27');
INSERT INTO `sys_role_menu` VALUES ('747', '51', '28');
INSERT INTO `sys_role_menu` VALUES ('748', '51', '29');
INSERT INTO `sys_role_menu` VALUES ('749', '51', '30');
INSERT INTO `sys_role_menu` VALUES ('750', '51', '1');
INSERT INTO `sys_role_menu` VALUES ('1064', '54', '53');
INSERT INTO `sys_role_menu` VALUES ('1095', '55', '2');
INSERT INTO `sys_role_menu` VALUES ('1096', '55', '6');
INSERT INTO `sys_role_menu` VALUES ('1097', '55', '7');
INSERT INTO `sys_role_menu` VALUES ('1098', '55', '3');
INSERT INTO `sys_role_menu` VALUES ('1099', '55', '50');
INSERT INTO `sys_role_menu` VALUES ('1100', '55', '49');
INSERT INTO `sys_role_menu` VALUES ('1101', '55', '1');
INSERT INTO `sys_role_menu` VALUES ('1856', '53', '28');
INSERT INTO `sys_role_menu` VALUES ('1857', '53', '29');
INSERT INTO `sys_role_menu` VALUES ('1858', '53', '30');
INSERT INTO `sys_role_menu` VALUES ('1859', '53', '27');
INSERT INTO `sys_role_menu` VALUES ('1860', '53', '57');
INSERT INTO `sys_role_menu` VALUES ('1861', '53', '71');
INSERT INTO `sys_role_menu` VALUES ('1862', '53', '48');
INSERT INTO `sys_role_menu` VALUES ('1863', '53', '72');
INSERT INTO `sys_role_menu` VALUES ('1864', '53', '1');
INSERT INTO `sys_role_menu` VALUES ('1865', '53', '7');
INSERT INTO `sys_role_menu` VALUES ('1866', '53', '55');
INSERT INTO `sys_role_menu` VALUES ('1867', '53', '56');
INSERT INTO `sys_role_menu` VALUES ('1868', '53', '62');
INSERT INTO `sys_role_menu` VALUES ('1869', '53', '15');
INSERT INTO `sys_role_menu` VALUES ('1870', '53', '2');
INSERT INTO `sys_role_menu` VALUES ('1871', '53', '61');
INSERT INTO `sys_role_menu` VALUES ('1872', '53', '20');
INSERT INTO `sys_role_menu` VALUES ('1873', '53', '21');
INSERT INTO `sys_role_menu` VALUES ('1874', '53', '22');
INSERT INTO `sys_role_menu` VALUES ('2084', '56', '68');
INSERT INTO `sys_role_menu` VALUES ('2085', '56', '60');
INSERT INTO `sys_role_menu` VALUES ('2086', '56', '59');
INSERT INTO `sys_role_menu` VALUES ('2087', '56', '58');
INSERT INTO `sys_role_menu` VALUES ('2088', '56', '51');
INSERT INTO `sys_role_menu` VALUES ('2089', '56', '50');
INSERT INTO `sys_role_menu` VALUES ('2090', '56', '49');
INSERT INTO `sys_role_menu` VALUES ('2243', '48', '72');
INSERT INTO `sys_role_menu` VALUES ('2247', '63', '-1');
INSERT INTO `sys_role_menu` VALUES ('2248', '63', '84');
INSERT INTO `sys_role_menu` VALUES ('2249', '63', '85');
INSERT INTO `sys_role_menu` VALUES ('2250', '63', '88');
INSERT INTO `sys_role_menu` VALUES ('2251', '63', '87');
INSERT INTO `sys_role_menu` VALUES ('2252', '64', '84');
INSERT INTO `sys_role_menu` VALUES ('2253', '64', '89');
INSERT INTO `sys_role_menu` VALUES ('2254', '64', '88');
INSERT INTO `sys_role_menu` VALUES ('2255', '64', '87');
INSERT INTO `sys_role_menu` VALUES ('2256', '64', '86');
INSERT INTO `sys_role_menu` VALUES ('2257', '64', '85');
INSERT INTO `sys_role_menu` VALUES ('2258', '65', '89');
INSERT INTO `sys_role_menu` VALUES ('2259', '65', '88');
INSERT INTO `sys_role_menu` VALUES ('2260', '65', '86');
INSERT INTO `sys_role_menu` VALUES ('2262', '67', '48');
INSERT INTO `sys_role_menu` VALUES ('2263', '68', '88');
INSERT INTO `sys_role_menu` VALUES ('2264', '68', '87');
INSERT INTO `sys_role_menu` VALUES ('2265', '69', '89');
INSERT INTO `sys_role_menu` VALUES ('2266', '69', '88');
INSERT INTO `sys_role_menu` VALUES ('2267', '69', '86');
INSERT INTO `sys_role_menu` VALUES ('2268', '69', '87');
INSERT INTO `sys_role_menu` VALUES ('2269', '69', '85');
INSERT INTO `sys_role_menu` VALUES ('2270', '69', '84');
INSERT INTO `sys_role_menu` VALUES ('2271', '70', '85');
INSERT INTO `sys_role_menu` VALUES ('2272', '70', '89');
INSERT INTO `sys_role_menu` VALUES ('2273', '70', '88');
INSERT INTO `sys_role_menu` VALUES ('2274', '70', '87');
INSERT INTO `sys_role_menu` VALUES ('2275', '70', '86');
INSERT INTO `sys_role_menu` VALUES ('2276', '70', '84');
INSERT INTO `sys_role_menu` VALUES ('2277', '71', '87');
INSERT INTO `sys_role_menu` VALUES ('2278', '72', '59');
INSERT INTO `sys_role_menu` VALUES ('2279', '73', '48');
INSERT INTO `sys_role_menu` VALUES ('2280', '74', '88');
INSERT INTO `sys_role_menu` VALUES ('2281', '74', '87');
INSERT INTO `sys_role_menu` VALUES ('2282', '75', '88');
INSERT INTO `sys_role_menu` VALUES ('2283', '75', '87');
INSERT INTO `sys_role_menu` VALUES ('2284', '76', '85');
INSERT INTO `sys_role_menu` VALUES ('2285', '76', '89');
INSERT INTO `sys_role_menu` VALUES ('2286', '76', '88');
INSERT INTO `sys_role_menu` VALUES ('2287', '76', '87');
INSERT INTO `sys_role_menu` VALUES ('2288', '76', '86');
INSERT INTO `sys_role_menu` VALUES ('2289', '76', '84');
INSERT INTO `sys_role_menu` VALUES ('2292', '78', '88');
INSERT INTO `sys_role_menu` VALUES ('2293', '78', '87');
INSERT INTO `sys_role_menu` VALUES ('2294', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2295', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2296', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2308', '80', '87');
INSERT INTO `sys_role_menu` VALUES ('2309', '80', '86');
INSERT INTO `sys_role_menu` VALUES ('2310', '80', '-1');
INSERT INTO `sys_role_menu` VALUES ('2311', '80', '84');
INSERT INTO `sys_role_menu` VALUES ('2312', '80', '85');
INSERT INTO `sys_role_menu` VALUES ('2328', '79', '72');
INSERT INTO `sys_role_menu` VALUES ('2329', '79', '48');
INSERT INTO `sys_role_menu` VALUES ('2330', '79', '77');
INSERT INTO `sys_role_menu` VALUES ('2331', '79', '84');
INSERT INTO `sys_role_menu` VALUES ('2332', '79', '89');
INSERT INTO `sys_role_menu` VALUES ('2333', '79', '88');
INSERT INTO `sys_role_menu` VALUES ('2334', '79', '87');
INSERT INTO `sys_role_menu` VALUES ('2335', '79', '86');
INSERT INTO `sys_role_menu` VALUES ('2336', '79', '85');
INSERT INTO `sys_role_menu` VALUES ('2337', '79', '-1');
INSERT INTO `sys_role_menu` VALUES ('2338', '77', '89');
INSERT INTO `sys_role_menu` VALUES ('2339', '77', '88');
INSERT INTO `sys_role_menu` VALUES ('2340', '77', '87');
INSERT INTO `sys_role_menu` VALUES ('2341', '77', '86');
INSERT INTO `sys_role_menu` VALUES ('2342', '77', '85');
INSERT INTO `sys_role_menu` VALUES ('2343', '77', '84');
INSERT INTO `sys_role_menu` VALUES ('2344', '77', '72');
INSERT INTO `sys_role_menu` VALUES ('2345', '77', '-1');
INSERT INTO `sys_role_menu` VALUES ('2346', '77', '77');
INSERT INTO `sys_role_menu` VALUES ('2974', '57', '93');
INSERT INTO `sys_role_menu` VALUES ('2975', '57', '99');
INSERT INTO `sys_role_menu` VALUES ('2976', '57', '95');
INSERT INTO `sys_role_menu` VALUES ('2977', '57', '101');
INSERT INTO `sys_role_menu` VALUES ('2978', '57', '96');
INSERT INTO `sys_role_menu` VALUES ('2979', '57', '94');
INSERT INTO `sys_role_menu` VALUES ('2980', '57', '-1');
INSERT INTO `sys_role_menu` VALUES ('2981', '58', '93');
INSERT INTO `sys_role_menu` VALUES ('2982', '58', '99');
INSERT INTO `sys_role_menu` VALUES ('2983', '58', '95');
INSERT INTO `sys_role_menu` VALUES ('2984', '58', '101');
INSERT INTO `sys_role_menu` VALUES ('2985', '58', '96');
INSERT INTO `sys_role_menu` VALUES ('2986', '58', '94');
INSERT INTO `sys_role_menu` VALUES ('2987', '58', '-1');
INSERT INTO `sys_role_menu` VALUES ('2988', '2', '77');
INSERT INTO `sys_role_menu` VALUES ('2989', '2', '72');
INSERT INTO `sys_role_menu` VALUES ('2990', '2', '48');
INSERT INTO `sys_role_menu` VALUES ('2991', '2', '-1');
INSERT INTO `sys_role_menu` VALUES ('2992', '1', '98');
INSERT INTO `sys_role_menu` VALUES ('2993', '1', '92');
INSERT INTO `sys_role_menu` VALUES ('2994', '1', '57');
INSERT INTO `sys_role_menu` VALUES ('2995', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('2996', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('2997', '1', '28');
INSERT INTO `sys_role_menu` VALUES ('2998', '1', '72');
INSERT INTO `sys_role_menu` VALUES ('2999', '1', '48');
INSERT INTO `sys_role_menu` VALUES ('3000', '1', '68');
INSERT INTO `sys_role_menu` VALUES ('3001', '1', '60');
INSERT INTO `sys_role_menu` VALUES ('3002', '1', '59');
INSERT INTO `sys_role_menu` VALUES ('3003', '1', '58');
INSERT INTO `sys_role_menu` VALUES ('3004', '1', '51');
INSERT INTO `sys_role_menu` VALUES ('3005', '1', '62');
INSERT INTO `sys_role_menu` VALUES ('3006', '1', '56');
INSERT INTO `sys_role_menu` VALUES ('3007', '1', '55');
INSERT INTO `sys_role_menu` VALUES ('3008', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('3009', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('3010', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('3011', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('3012', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('3013', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('3014', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('3015', '1', '61');
INSERT INTO `sys_role_menu` VALUES ('3016', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('3017', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('3018', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('3019', '1', '83');
INSERT INTO `sys_role_menu` VALUES ('3020', '1', '81');
INSERT INTO `sys_role_menu` VALUES ('3021', '1', '80');
INSERT INTO `sys_role_menu` VALUES ('3022', '1', '79');
INSERT INTO `sys_role_menu` VALUES ('3023', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('3024', '1', '97');
INSERT INTO `sys_role_menu` VALUES ('3025', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('3026', '1', '91');
INSERT INTO `sys_role_menu` VALUES ('3027', '1', '77');
INSERT INTO `sys_role_menu` VALUES ('3028', '1', '50');
INSERT INTO `sys_role_menu` VALUES ('3029', '1', '49');
INSERT INTO `sys_role_menu` VALUES ('3030', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('3031', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('3032', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('3033', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('3034', '1', '78');
INSERT INTO `sys_role_menu` VALUES ('3035', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('3036', '1', '100');
INSERT INTO `sys_role_menu` VALUES ('3037', '1', '105');
INSERT INTO `sys_role_menu` VALUES ('3038', '1', '104');
INSERT INTO `sys_role_menu` VALUES ('3039', '1', '103');
INSERT INTO `sys_role_menu` VALUES ('3040', '1', '102');
INSERT INTO `sys_role_menu` VALUES ('3041', '1', '101');
INSERT INTO `sys_role_menu` VALUES ('3042', '1', '-1');

-- ----------------------------
-- Table structure for `sys_task`
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES ('2', '0/10 * * * * ?', 'run1', '1', '', '4028ea815a3d2a8c015a3d2f8d2a0002', 'com.bootdo.common.task.WelcomeJob', '2017-05-19 18:30:56', '0', 'group1', '2017-05-19 18:31:07', null, '', 'welcomJob');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(32) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', '27bd386e70f280e24c2f4f2a549b82cf', '6', 'admin@example.com', '17699999999', '1', '1', '2017-08-15 21:40:39', '2017-08-15 21:41:00', '96', '2017-12-14 00:00:00', '138', 'ccc', '121;', '北京市', '北京市市辖区', '东城区');
INSERT INTO `sys_user` VALUES ('2', 'test', '临时用户', '6cf3bb3deba2aadbd41ec9a22511084e', '6', 'test@bootdo.com', null, '1', '1', '2017-08-14 13:43:05', '2017-08-14 21:15:36', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('36', 'ldh', '刘德华', 'bfd9394475754fbe45866eba97738c36', '7', 'ldh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('123', 'zxy', '张学友', '35174ba93f5fe7267f1fb3c1bf903781', '6', 'zxy@bootdo', null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('124', 'wyf', '吴亦凡', 'e179e6f687bbd57b9d7efc4746c8090a', '6', 'wyf@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('130', 'lh', '鹿晗', '7924710cd673f68967cde70e188bb097', '9', 'lh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('131', 'lhc', '令狐冲', 'd515538e17ecb570ba40344b5618f5d4', '6', 'lhc@bootdo.com', null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('132', 'lyf', '刘亦菲', '7fdb1d9008f45950c1620ba0864e5fbd', '13', 'lyf@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('134', 'lyh', '李彦宏', 'dc26092b3244d9d432863f2738180e19', '8', 'lyh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('137', 'test2', '测试用户2', '649169898e69272c0e5bc899baf1e904', '12', 'test2@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_user_plus`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_plus`;
CREATE TABLE `sys_user_plus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `payment` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_plus
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('73', '30', '48');
INSERT INTO `sys_user_role` VALUES ('74', '30', '49');
INSERT INTO `sys_user_role` VALUES ('75', '30', '50');
INSERT INTO `sys_user_role` VALUES ('76', '31', '48');
INSERT INTO `sys_user_role` VALUES ('77', '31', '49');
INSERT INTO `sys_user_role` VALUES ('78', '31', '52');
INSERT INTO `sys_user_role` VALUES ('79', '32', '48');
INSERT INTO `sys_user_role` VALUES ('80', '32', '49');
INSERT INTO `sys_user_role` VALUES ('81', '32', '50');
INSERT INTO `sys_user_role` VALUES ('82', '32', '51');
INSERT INTO `sys_user_role` VALUES ('83', '32', '52');
INSERT INTO `sys_user_role` VALUES ('84', '33', '38');
INSERT INTO `sys_user_role` VALUES ('85', '33', '49');
INSERT INTO `sys_user_role` VALUES ('86', '33', '52');
INSERT INTO `sys_user_role` VALUES ('87', '34', '50');
INSERT INTO `sys_user_role` VALUES ('88', '34', '51');
INSERT INTO `sys_user_role` VALUES ('89', '34', '52');
INSERT INTO `sys_user_role` VALUES ('106', '124', '1');
INSERT INTO `sys_user_role` VALUES ('110', '1', '1');
INSERT INTO `sys_user_role` VALUES ('111', '2', '1');
INSERT INTO `sys_user_role` VALUES ('113', '131', '48');
INSERT INTO `sys_user_role` VALUES ('120', '134', '1');
INSERT INTO `sys_user_role` VALUES ('121', '134', '48');
INSERT INTO `sys_user_role` VALUES ('123', '130', '1');
INSERT INTO `sys_user_role` VALUES ('124', null, '48');
INSERT INTO `sys_user_role` VALUES ('125', '132', '52');
INSERT INTO `sys_user_role` VALUES ('126', '132', '49');
INSERT INTO `sys_user_role` VALUES ('127', '123', '48');
INSERT INTO `sys_user_role` VALUES ('132', '36', '48');
INSERT INTO `sys_user_role` VALUES ('134', '137', '2');

-- ----------------------------
-- Table structure for `tb_wechat_official_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `tb_wechat_official_accounts`;
CREATE TABLE `tb_wechat_official_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `wechatid` varchar(50) NOT NULL COMMENT '微信公众号',
  `type` int(11) NOT NULL COMMENT '类型（1-服务号；2-订阅号；3-企业号）',
  `intro` varchar(50) NOT NULL COMMENT '介绍',
  `certification` varchar(50) NOT NULL COMMENT '认证情况',
  `address` varchar(50) NOT NULL COMMENT '所在地址',
  `accountbody` varchar(50) NOT NULL COMMENT '账号主题体',
  `heatrankings` int(11) DEFAULT NULL COMMENT '热度排名',
  `isRecommend` int(11) NOT NULL COMMENT '是否推荐（0-否；1-是）',
  `logo` varchar(200) DEFAULT NULL COMMENT '头像logo',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wechatid` (`wechatid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='微信公众号信息表';

-- ----------------------------
-- Records of tb_wechat_official_accounts
-- ----------------------------
INSERT INTO `tb_wechat_official_accounts` VALUES ('1', 'lxy', 'lxy', '1', '1', '1', '1', '1', '0', '0', null);
INSERT INTO `tb_wechat_official_accounts` VALUES ('2', 'justa', 'xxx', '2', '123', '321', '123', '421', '0', '0', null);
INSERT INTO `tb_wechat_official_accounts` VALUES ('3', '郭莉', 'guoli', '1', '菜逼', '', '', '', null, '1', null);
