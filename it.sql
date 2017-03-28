/*
Navicat MySQL Data Transfer

Source Server         : 毕业设计
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : it

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-03-24 12:48:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '774131720@qq.com', '18435186084', '高明岗', 'A12345');
INSERT INTO `admin` VALUES ('2', '774131720@qq.com', '18435186084', 'yr', 'B45678');
INSERT INTO `admin` VALUES ('3', '77413720@qq.com', '18435186084', '杨冉', 'B12345');
INSERT INTO `admin` VALUES ('4', '774131720@qq.com', '18435186084', 'gg', 'B12345');
INSERT INTO `admin` VALUES ('5', '774131720@qq.com', '13716098126', 'glg', 'A12345');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `jobId` int(11) DEFAULT NULL COMMENT '职位id',
  PRIMARY KEY (`id`),
  KEY `id_jobId` (`jobId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '问了很多基础，只是自己有待提高~公司内部环境不错', '1');
INSERT INTO `comment` VALUES ('2', '[面试过程好多细节问题平时没有休息 ,基础知识也要巩固一下 会继续努力的 么么达～去', '1');
INSERT INTO `comment` VALUES ('3', '[面试过程]招的偏前端，没继续聊下去', '2');
INSERT INTO `comment` VALUES ('4', '面试过程好多基础问题平时没有休息 ,基础知识也要巩固一下 会继续努力', '2');
INSERT INTO `comment` VALUES ('8', '很好', '1');
INSERT INTO `comment` VALUES ('9', '不错的公司领导<br />', '1');
INSERT INTO `comment` VALUES ('10', '<strong>面试官很好</strong><br />', '4');
INSERT INTO `comment` VALUES ('12', '<strong><u>面试官很好</u></strong><br />', '1');
INSERT INTO `comment` VALUES ('13', '360是不错的公司<br />', '7');
INSERT INTO `comment` VALUES ('14', '时代运筹<br />', '5');
INSERT INTO `comment` VALUES ('15', '公司很差！<br />', '11');
INSERT INTO `comment` VALUES ('16', '<strong>还不错</strong>', '4');
INSERT INTO `comment` VALUES ('17', '你好<br />', '2');
INSERT INTO `comment` VALUES ('18', '对公司不错哦！<br />', '16');
INSERT INTO `comment` VALUES ('19', '这个公司不错<br />', '1');
INSERT INTO `comment` VALUES ('20', '<strong><em>360很不错的公司，我很喜欢</em></strong><br />', '7');
INSERT INTO `comment` VALUES ('21', '公司还不错', '3');

-- ----------------------------
-- Table structure for dirc
-- ----------------------------
DROP TABLE IF EXISTS `dirc`;
CREATE TABLE `dirc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `dtype` varchar(255) DEFAULT NULL,
  `parent` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dirc
-- ----------------------------
INSERT INTO `dirc` VALUES ('1', '硬件开发', 'hardware', '职位类别', '0');
INSERT INTO `dirc` VALUES ('2', '计算机软件', 'software', '职位类别', '0');
INSERT INTO `dirc` VALUES ('3', '互联网研发测试', 'test', '职位类别', '0');
INSERT INTO `dirc` VALUES ('4', '产品/运营', 'producter', '职位类别', '0');
INSERT INTO `dirc` VALUES ('5', '博士', 'doctorer', '学历要求', '0');
INSERT INTO `dirc` VALUES ('6', '硕士', 'master', '学历要求', '0');
INSERT INTO `dirc` VALUES ('7', '本科', 'undergraduate', '学历要求', '0');
INSERT INTO `dirc` VALUES ('8', '大专', 'junior', '学历要求', '0');
INSERT INTO `dirc` VALUES ('9', '在读生', 'onRead', '工作经验', '0');
INSERT INTO `dirc` VALUES ('10', '应届毕业生', 'graduate', '工作经验', '0');
INSERT INTO `dirc` VALUES ('11', '1-2年', 'one', '工作经验', '0');
INSERT INTO `dirc` VALUES ('12', '2-3年', 'two', '工作经验', '0');
INSERT INTO `dirc` VALUES ('13', '全职', 'all', '工作性质', '0');
INSERT INTO `dirc` VALUES ('14', '兼职', 'parttime', '工作性质', '0');
INSERT INTO `dirc` VALUES ('15', '实习', 'practice', '工作性质', '0');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `jobName` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `jobType` varchar(10) DEFAULT NULL COMMENT '职位类型',
  `jobRegion` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `education` varchar(10) DEFAULT NULL COMMENT '教育类型',
  `jobExpr` varchar(10) DEFAULT NULL COMMENT '工作经验',
  `jobIntr` varchar(1000) DEFAULT NULL COMMENT '职位介绍',
  `Name` varchar(255) DEFAULT NULL COMMENT '发布人',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `jobWelfare` varchar(255) DEFAULT NULL COMMENT '福利',
  `img` varchar(255) DEFAULT NULL COMMENT '公司logo',
  `main` varchar(255) DEFAULT NULL COMMENT '网站',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `salary` int(255) DEFAULT NULL COMMENT '薪水',
  `jobProp` varchar(255) DEFAULT NULL COMMENT '工作性质',
  `publishDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发布日期',
  `state` int(10) DEFAULT '0' COMMENT '状态',
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`jobType`),
  KEY `education` (`education`),
  KEY `experience` (`jobExpr`),
  KEY `prop` (`jobProp`),
  KEY `adminId` (`adminId`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '亚马逊', 'Java实习生', '硬件开发', '北京', '博士', '1--2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n<p>能对产品需求、系统架构以及现有业务提出改善意见以及合理技\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6>我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，     <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'ymx.jpg', 'http://www.ymx.com', '北京-海淀区-苏州街', '5', '全职', '2017-03-13 10:20:30', '0', '1');
INSERT INTO `job` VALUES ('2', '优会', 'PHP实习生', '计算机软件', '上海', '硕士', '2--3年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>熟悉基于Struts和Ibatis或者Hibernate的J2EE应用平台架构，熟练使用Spring等框架\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.大专以上学历，具有大型网站项目开发经验者为佳；；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.熟悉PHP5，对OOP编程思想有深入了解；</p>\r\n                    <p>4.了解Apache、MySQL、PHP等软件的编译安装和最优化配置；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yh.png', 'http://www.youhui.com', '北京-海淀区-苏州街', '10', '实习', '2017-03-13 10:20:31', '0', '2');
INSERT INTO `job` VALUES ('3', '麦子金服', '高级JAVA工程师', '计算机软件', '北京', '本科', '1-2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>熟悉Oracle数据库\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'mzjf.jpg', 'http://www.mzjf.com', '北京-中关村', '15', '兼职', '2017-03-13 10:20:32', '0', '3');
INSERT INTO `job` VALUES ('4', '通力', 'Java工程师', '互联网测试', '北京', '大专', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>有强烈的责任心，优秀的表达能力及沟通能力；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'tl.png', 'http://www.tl.cn', '北京-上地', '12', '兼职', '2017-03-13 10:20:33', '0', '4');
INSERT INTO `job` VALUES ('5', '识代运筹', 'Java开发工程师', '计算机软件', '北京', '大专', '1-2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>有较强的学习和理解能力，思路清晰，善于思考，能独立分析和解决问题；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yc.jpg', 'http://www.sdyc.com', '北京-中关村', '16', '实习', '2017-03-13 10:20:34', '0', '5');
INSERT INTO `job` VALUES ('6', '优酷', 'Java研发工程师', '产品/运营', '北京', '大专', '1-2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>能独立完成产品需求，对突发性出现的问题能够及时追踪、定位和解决\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yk.png', 'http://www.yk.cn', '北京-通州区', '25', '全职', '2017-03-13 10:20:39', '0', '1');
INSERT INTO `job` VALUES ('7', '360', 'PHP开发工程师', '产品/运营', '上海', '本科', '2--3年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>参与云汉芯城电商平台的整体规划、功能设计、开发工作\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.精通PHP与MYSQL，熟悉LAMP架构与MVC框架，拥有良好的代码撰写习惯；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', '360.jpg', 'http://www.360.com', '上海-世博园区', '14', '兼职', '2017-03-13 10:20:41', '0', '2');
INSERT INTO `job` VALUES ('8', '斗鱼直播', 'PHP研发工程师', '计算机软件', '上海', '硕士', '2--3年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>参与云汉芯城电商平台的整体规划、功能设计、开发工作；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.两年以上相关技术岗位开发经验；；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'dy.jpg', 'http://www.douyu.cn', '上海-徐家汇', '20', '兼职', '2017-03-13 10:20:44', '0', '3');
INSERT INTO `job` VALUES ('9', '拉勾网', '大数据工程师', '硬件开发', '深圳', '博士', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>负责公司相关产品的数据分析和挖掘，为用户提供更智能更专业的产品体验； \r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>支持公司其它部门的数据需求，提供决策支持。 </p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.熟悉Hadoop和Spark平台，熟悉相关工具来处理海量数据；</p>\r\n                    <p>2.具有互联网行业数据经验优先；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'lg.png', 'http://www.lagou.com', '深圳-科技园', '35', '实习', '2017-03-13 10:20:45', '0', '4');
INSERT INTO `job` VALUES ('10', '腾讯', '大数据架构师', '硬件开发', '深圳', '大专', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>支持产品团队和运营团队，从数据帮助产品找到产品优化提升的方向，\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>负责所有数据开发，包括对用户行为数据进行建模、统计、分析、监控；</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'tx.jpg', 'http://www.tenxun.cn', '深圳-王科城', '30', '全职', '2017-03-13 10:20:46', '0', '5');
INSERT INTO `job` VALUES ('11', '亚马逊', 'PHP实习生', '计算机软件', '深圳', '本科', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n<p>能对产品需求、系统架构以及现有业务提出改善意见以及合理技\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'ymx.jpg', 'http://www.ymx.com', '北京-海淀区-苏州街', '5', '实习', '2017-03-13 10:20:48', '0', '5');
INSERT INTO `job` VALUES ('12', '优会', 'PHP实习生', '互联网测试', '太原', '硕士', '1--2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>熟悉基于Struts和Ibatis或者Hibernate的J2EE应用平台架构，熟练使用Spring等框架\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.大专以上学历，具有大型网站项目开发经验者为佳；；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.熟悉PHP5，对OOP编程思想有深入了解；</p>\r\n                    <p>4.了解Apache、MySQL、PHP等软件的编译安装和最优化配置；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yh.png', 'http://www.youhui.com', '太原-迎泽区', '10', '全职', '2017-03-13 10:20:51', '0', '4');
INSERT INTO `job` VALUES ('13', '麦子金服', '高级JAVA工程师', '互联网测试', '上海', '大专', '2--3年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>熟悉Oracle数据库\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'mzjf.jpg', 'http://www.mzjf.com', '北京-中关村', '15', '全职', '2017-03-13 10:20:52', '0', '4');
INSERT INTO `job` VALUES ('14', '通力', 'Java工程师', '计算机软件', '西安', '本科', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>有强烈的责任心，优秀的表达能力及沟通能力；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'tl.png', 'http://www.tl.cn', '北京-上地', '12', '实习', '2017-03-13 10:20:56', '0', '3');
INSERT INTO `job` VALUES ('15', '识代运筹', 'Java开发工程师', '硬件开发', '成都', '本科', '1--2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>有较强的学习和理解能力，思路清晰，善于思考，能独立分析和解决问题；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yc.jpg', 'http://www.sdyc.com', '北京-中关村', '16', '兼职', '2017-03-13 10:20:57', '0', '3');
INSERT INTO `job` VALUES ('16', '优酷', 'Java研发工程师', '硬件开发', '哈尔滨', '硕士', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>能独立完成产品需求，对突发性出现的问题能够及时追踪、定位和解决\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'yk.png', 'http://www.yk.cn', '北京-通州区', '25', '实习', '2017-03-13 10:20:58', '0', '3');
INSERT INTO `job` VALUES ('17', '360', 'PHP研发工程师', '计算机软件', '大连', '大专', '无', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>参与云汉芯城电商平台的整体规划、功能设计、开发工作\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.本科或本科以上学历，扎实的Java基础；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.精通PHP与MYSQL，熟悉LAMP架构与MVC框架，拥有良好的代码撰写习惯；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', '360.jpg', 'http://www.360.com', '上海-世博园区', '14', '实习', '2017-03-13 10:21:05', '0', '2');
INSERT INTO `job` VALUES ('18', '斗鱼直播', 'PHP研发工程师', '硬件开发', '合肥', '本科', '2--3年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>参与云汉芯城电商平台的整体规划、功能设计、开发工作；\r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>注重系统可用、可靠、可扩展以及安全等方面的Java后端开发高手。</p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.两年以上相关技术岗位开发经验；；</p>\r\n                    <p>2.三年以上Java开发经验，有互联网开发背景；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'dy.jpg', 'http://www.douyu.cn', '上海-徐家汇', '20', '全职', '2017-03-13 10:21:04', '0', '2');
INSERT INTO `job` VALUES ('19', '拉勾网', '大数据工程师', '硬件开发', '北京', '博士', '1--2年', '<p style=\"margin-top:10px;\">希望你是一个有想法</p>\r\n                    <p>负责公司相关产品的数据分析和挖掘，为用户提供更智能更专业的产品体验； \r\n                    术实现方案，并高效实施落地；</p>\r\n                    <p>支持公司其它部门的数据需求，提供决策支持。 </p>\r\n                    <p>有良好的团队协作能力，能独当一面。</p>\r\n                    <h6 style=\"margin-top:20px;\">我们希望你：</h6>\r\n                    <p>1.熟悉Hadoop和Spark平台，熟悉相关工具来处理海量数据；</p>\r\n                    <p>2.具有互联网行业数据经验优先；</p>\r\n                    <p>3.掌握面向对象设计开发，熟悉常见设计模式；</p>\r\n                    <p>4.熟练使用常用MVC、ORM框架；</p>\r\n                    <p>5.熟练使用MySQ进行应用开发，熟悉数据库原理以及常用性能优化技术；</p>\r\n                    <p>6.熟悉分布式、缓存、消息、搜索等机制，有分布式系统、集群架构设计和使用经验优先；</p>\r\n                    <p>7.熟悉HTML/CSS/JS等前端技术优先；</p>\r\n                    <p>8.有责任心、有想法，热爱技术，喜欢钻研；</p>\r\n                    <p>9.有较强的逻辑思维能力，善于分析、归纳、快速定位并解决问题。</p>', '韩林祥', '18435186084', '774131720@qq.com', '年终奖', 'lg.png', 'http://www.lagou.com', '深圳-科技园', '35', '全职', '2017-03-13 10:21:06', '0', '1');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) DEFAULT NULL COMMENT '简历附件',
  `userName` varchar(255) DEFAULT NULL COMMENT '求职者名字',
  `uid` int(10) NOT NULL COMMENT '求职者id',
  `jobId` int(11) DEFAULT NULL,
  `state` int(10) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `uid-id` (`uid`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `job` (`id`),
  CONSTRAINT `uid-id` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('2', '戴维斯.docx', '詹姆斯', '7', '2', '1');
INSERT INTO `resume` VALUES ('3', '易建联.docx', '易建联', '13', '2', '3');
INSERT INTO `resume` VALUES ('4', '奥尼尔.docx', '奥尼尔', '10', '4', '1');
INSERT INTO `resume` VALUES ('5', '科比.docx', '科比', '11', '5', '0');
INSERT INTO `resume` VALUES ('6', '韦德.docx', '韦德', '8', '5', '0');
INSERT INTO `resume` VALUES ('7', '姚明.doc', '姚明', '12', '4', '0');
INSERT INTO `resume` VALUES ('23', '高明岗.doc', '高明岗', '6', '2', '0');
INSERT INTO `resume` VALUES ('24', '保罗.doc', '保罗', '9', '2', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `passWord` varchar(255) DEFAULT NULL COMMENT '密码',
  `tel` varchar(255) NOT NULL COMMENT '联系方式',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `gender` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `workyear` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `expectPosition` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '高明岗', 'Gmg082', '18435186084', 'gmg00@qq.com', '女', '本科', '2年', '我是应届毕业生', '成都', '实习', 'Java', '2k-5k');
INSERT INTO `user` VALUES ('7', '詹姆斯', 'B12345', '18535186086', 'gmg00@qq.com', '男', '硕士', '2年', '我目前正在职，正考虑换个新环境', '重庆', '兼职', 'Android', '2k-5k');
INSERT INTO `user` VALUES ('8', '韦德', 'Gmg082', '18535186085', 'gmg01@qq.com', '男', '本科', '2年', '我目前已离职，可快速到岗', '成都', '全职', '产品经理', '5k-10k');
INSERT INTO `user` VALUES ('9', '保罗', 'B12345', '18535186086', 'gmg02@qq.com', '男', '硕士', '3年', '我暂时不想找工作', '杭州', '全职', 'Java高级工程师', '10k-15k');
INSERT INTO `user` VALUES ('10', '奥尼尔', 'Gmg082', '18535186087', 'gmg03@qq.com', '男', '硕士', '应届毕业生', '我是应届毕业生', '北京', '实习', 'Java实习生', '5k-10k');
INSERT INTO `user` VALUES ('11', '科比', 'B12345', '18535186088', 'gmg04@qq.com', '男', '本科', '2年', '我目前正在职，正考虑换个新环境', '长春', '实习', 'UI工程师', '5k-10k');
INSERT INTO `user` VALUES ('12', '姚明', 'Gmg082', '18535186089', 'gmg05@qq.com', '男', '本科', '3年', '我暂时不想找工作', '成都', '实习', '信息安全', '5k-10k');
INSERT INTO `user` VALUES ('13', '易建联', 'B12345', '18535186008', 'gmg08@qq.com', '男', '硕士', '2年', '我目前正在职，正考虑换个新环境', '北京', '实习', 'Sap', '5k-10k');
