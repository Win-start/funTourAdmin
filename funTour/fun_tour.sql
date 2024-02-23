/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : fun_tour

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2024-02-23 15:47:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '李华', 'admin');
INSERT INTO `admin` VALUES ('2', 'admin2', '张三', 'admin');
INSERT INTO `admin` VALUES ('3', 'aaa', 'aaaa', 'aaa');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '北京市');
INSERT INTO `city` VALUES ('2', '2', '天津市');
INSERT INTO `city` VALUES ('3', '3', '石家庄市');
INSERT INTO `city` VALUES ('4', '3', '唐山市');
INSERT INTO `city` VALUES ('5', '3', '秦皇岛市');
INSERT INTO `city` VALUES ('6', '4', '太原市');
INSERT INTO `city` VALUES ('7', '4', '大同市');
INSERT INTO `city` VALUES ('8', '4', '阳泉市');
INSERT INTO `city` VALUES ('9', '5', '呼和浩特市');
INSERT INTO `city` VALUES ('10', '5', '包头市');
INSERT INTO `city` VALUES ('11', '5', '乌海市');
INSERT INTO `city` VALUES ('12', '6', '沈阳市');
INSERT INTO `city` VALUES ('13', '6', '大连市');
INSERT INTO `city` VALUES ('14', '6', '鞍山市');
INSERT INTO `city` VALUES ('15', '7', '长春市');
INSERT INTO `city` VALUES ('16', '7', '吉林市');
INSERT INTO `city` VALUES ('17', '7', '四平市');
INSERT INTO `city` VALUES ('18', '8', '哈尔滨市');
INSERT INTO `city` VALUES ('19', '8', '齐齐哈尔市');
INSERT INTO `city` VALUES ('20', '8', '牡丹江市');
INSERT INTO `city` VALUES ('21', '9', '上海市');
INSERT INTO `city` VALUES ('22', '10', '南京市');
INSERT INTO `city` VALUES ('23', '10', '无锡市');
INSERT INTO `city` VALUES ('24', '10', '徐州市');
INSERT INTO `city` VALUES ('25', '11', '杭州市');
INSERT INTO `city` VALUES ('26', '11', '宁波市');
INSERT INTO `city` VALUES ('27', '11', '温州市');
INSERT INTO `city` VALUES ('28', '12', '合肥市');
INSERT INTO `city` VALUES ('29', '12', '芜湖市');
INSERT INTO `city` VALUES ('30', '12', '蚌埠市');
INSERT INTO `city` VALUES ('31', '13', '福州市');
INSERT INTO `city` VALUES ('32', '13', '厦门市');
INSERT INTO `city` VALUES ('33', '13', '漳州市');
INSERT INTO `city` VALUES ('34', '14', '南昌市');
INSERT INTO `city` VALUES ('35', '14', '九江市');
INSERT INTO `city` VALUES ('36', '14', '赣州市');
INSERT INTO `city` VALUES ('37', '15', '济南市');
INSERT INTO `city` VALUES ('38', '15', '青岛市');
INSERT INTO `city` VALUES ('39', '15', '淄博市');
INSERT INTO `city` VALUES ('40', '16', '郑州市');
INSERT INTO `city` VALUES ('41', '16', '开封市');
INSERT INTO `city` VALUES ('42', '16', '洛阳市');
INSERT INTO `city` VALUES ('43', '17', '武汉市');
INSERT INTO `city` VALUES ('44', '17', '黄石市');
INSERT INTO `city` VALUES ('45', '17', '十堰市');
INSERT INTO `city` VALUES ('46', '18', '长沙市');
INSERT INTO `city` VALUES ('47', '18', '株洲市');
INSERT INTO `city` VALUES ('48', '18', '湘潭市');
INSERT INTO `city` VALUES ('49', '19', '广州市');
INSERT INTO `city` VALUES ('50', '19', '深圳市');
INSERT INTO `city` VALUES ('51', '19', '珠海市');
INSERT INTO `city` VALUES ('52', '20', '南宁市');
INSERT INTO `city` VALUES ('53', '20', '桂林市');
INSERT INTO `city` VALUES ('54', '20', '柳州市');
INSERT INTO `city` VALUES ('55', '21', '海口市');
INSERT INTO `city` VALUES ('56', '21', '三亚市');
INSERT INTO `city` VALUES ('57', '21', '三沙市');
INSERT INTO `city` VALUES ('58', '22', '重庆市');
INSERT INTO `city` VALUES ('59', '23', '成都市');
INSERT INTO `city` VALUES ('60', '23', '自贡市');
INSERT INTO `city` VALUES ('61', '23', '攀枝花市');
INSERT INTO `city` VALUES ('62', '24', '贵阳市');
INSERT INTO `city` VALUES ('63', '24', '六盘水市');
INSERT INTO `city` VALUES ('64', '24', '遵义市');
INSERT INTO `city` VALUES ('65', '25', '昆明市');
INSERT INTO `city` VALUES ('66', '25', '曲靖市');
INSERT INTO `city` VALUES ('67', '25', '玉溪市');
INSERT INTO `city` VALUES ('68', '26', '拉萨市');
INSERT INTO `city` VALUES ('69', '26', '昌都市');
INSERT INTO `city` VALUES ('70', '26', '林芝市');
INSERT INTO `city` VALUES ('71', '27', '西安市');
INSERT INTO `city` VALUES ('72', '27', '铜川市');
INSERT INTO `city` VALUES ('73', '27', '宝鸡市');
INSERT INTO `city` VALUES ('74', '28', '兰州市');
INSERT INTO `city` VALUES ('75', '28', '嘉峪关市');
INSERT INTO `city` VALUES ('76', '28', '金昌市');
INSERT INTO `city` VALUES ('77', '29', '西宁市');
INSERT INTO `city` VALUES ('78', '29', '海东市');
INSERT INTO `city` VALUES ('79', '29', '海北藏族自治州');
INSERT INTO `city` VALUES ('80', '30', '银川市');
INSERT INTO `city` VALUES ('81', '30', '石嘴山市');
INSERT INTO `city` VALUES ('82', '30', '吴忠市');
INSERT INTO `city` VALUES ('83', '31', '乌鲁木齐市');
INSERT INTO `city` VALUES ('84', '31', '克拉玛依市');
INSERT INTO `city` VALUES ('85', '19', '惠州市');
INSERT INTO `city` VALUES ('86', '19', '潮州市');
INSERT INTO `city` VALUES ('87', '19', '梅州市');
INSERT INTO `city` VALUES ('88', '19', '阳江市');
INSERT INTO `city` VALUES ('89', '19', '佛山市');
INSERT INTO `city` VALUES ('90', '19', '肇庆市');
INSERT INTO `city` VALUES ('91', '19', '汕头市');
INSERT INTO `city` VALUES ('92', '19', '清远市');
INSERT INTO `city` VALUES ('93', '19', '中山市');
INSERT INTO `city` VALUES ('94', '19', '湛江市');
INSERT INTO `city` VALUES ('95', '19', '汕尾市');
INSERT INTO `city` VALUES ('96', '19', '江门市');
INSERT INTO `city` VALUES ('97', '19', '云浮市');
INSERT INTO `city` VALUES ('98', '19', '韶关市');
INSERT INTO `city` VALUES ('99', '32', '国外');
INSERT INTO `city` VALUES ('100', '19', '揭阳市');
INSERT INTO `city` VALUES ('101', '15', '泰安市');
INSERT INTO `city` VALUES ('102', '33', '香港特别行政区');
INSERT INTO `city` VALUES ('103', '34', '澳门');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('5', '7', '44');
INSERT INTO `collect` VALUES ('6', '7', '22');
INSERT INTO `collect` VALUES ('7', '7', '16');
INSERT INTO `collect` VALUES ('8', '7', '1');
INSERT INTO `collect` VALUES ('9', '7', '17');
INSERT INTO `collect` VALUES ('10', '12', '22');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `c_content` varchar(255) DEFAULT NULL,
  `c_like` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', null, '2', '真的好厉害', '1107', '2024-01-19 21:04:43');
INSERT INTO `comment` VALUES ('2', '1', null, '2', '真的好厉害', '107', '2024-01-19 21:04:45');
INSERT INTO `comment` VALUES ('3', '1', null, '3', '无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。', '1001', '2024-01-19 21:02:02');
INSERT INTO `comment` VALUES ('4', '1', null, '1', '无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。', '1586', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('5', '1', null, '2', '我见到的过的城市化程度最高的城市。高楼耸立，无论是平地还是山地；立体交通，各种高架桥，一辆辆汽车像是七星瓢虫一样穿梭来穿梭去。偶尔瞥见一眼居住房屋，你不禁都要好奇，在这儿生活工作的人们，是如何在这种被压缩的空间中生存的。 ', '2002', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('6', '1', null, '3', '真的好厉害', '520', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('7', '1', null, '1', '无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。', '1000', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('8', '1', null, '1', '无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。', '520', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('9', '1', null, '3', '我见到的过的城市化程度最高的城市。高楼耸立，无论是平地还是山地；立体交通，各种高架桥，一辆辆汽车像是七星瓢虫一样穿梭来穿梭去。偶尔瞥见一眼居住房屋，你不禁都要好奇，在这儿生活工作的人们，是如何在这种被压缩的空间中生存的。 ', '1251', '2024-01-19 16:42:37');
INSERT INTO `comment` VALUES ('10', '1', null, '2', '真的好厉害\r\n无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。\r\n无论你置身于香港哪里，过街红绿灯的响声总是不绝于耳，相信看过TVB影视剧的人对这样的声音应该不会陌生的。\r\n我见到的过的城市化程度最高的城市。高楼耸立，无论是平地还是山地；立体交通，各种高架桥，一辆辆汽车像是七星瓢虫一样穿梭来穿梭去。偶尔瞥见一眼居住房屋，你不禁都要好奇，在这儿生活工作的人们，是如何在这种被压缩的空间中生存的。 ', '321', '2024-01-19 21:04:48');
INSERT INTO `comment` VALUES ('16', '2', null, '6', '这里真的非常nice！', null, '2024-01-25 21:43:18');
INSERT INTO `comment` VALUES ('17', '1', null, '7', '美丽的城市是我所希望的', null, '2024-01-25 21:50:40');
INSERT INTO `comment` VALUES ('18', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:50:54');
INSERT INTO `comment` VALUES ('19', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:15');
INSERT INTO `comment` VALUES ('20', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:16');
INSERT INTO `comment` VALUES ('21', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:16');
INSERT INTO `comment` VALUES ('22', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:16');
INSERT INTO `comment` VALUES ('23', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:21');
INSERT INTO `comment` VALUES ('24', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:21');
INSERT INTO `comment` VALUES ('25', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:21');
INSERT INTO `comment` VALUES ('26', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:51:22');
INSERT INTO `comment` VALUES ('27', '1', null, '7', '美丽的城市是我所向往的', '1', '2024-01-25 21:51:22');
INSERT INTO `comment` VALUES ('28', '1', null, '7', '美丽的城市是我所向往的', '1', '2024-01-25 21:51:22');
INSERT INTO `comment` VALUES ('29', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:52:06');
INSERT INTO `comment` VALUES ('30', '1', null, '7', '1111', null, '2024-01-25 21:52:21');
INSERT INTO `comment` VALUES ('31', '1', null, '7', '111', '1', '2024-01-25 21:52:40');
INSERT INTO `comment` VALUES ('34', '2', null, '6', '这里真的非常nice！', null, '2024-01-25 21:54:40');
INSERT INTO `comment` VALUES ('35', '1', null, '7', '美丽的城市是我所向往的', null, '2024-01-25 21:55:01');
INSERT INTO `comment` VALUES ('41', '1', null, '7', '这个圣诞节很好哒', null, '2024-01-25 21:59:43');
INSERT INTO `comment` VALUES ('42', '34', null, '7', '真的很好玩爱了爱了', '1', '2024-01-25 22:01:14');
INSERT INTO `comment` VALUES ('43', '34', null, '7', '澳门这个地方好玩的真的很多', null, '2024-01-25 22:02:00');
INSERT INTO `comment` VALUES ('44', '19', null, '2', '广东这个地方真的好好啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', null, '2024-01-26 21:05:28');
INSERT INTO `comment` VALUES ('45', '19', null, '2', '美丽的城市，魅力十足！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！', null, '2024-01-26 21:08:59');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) DEFAULT '',
  `hotel_phone` varchar(255) DEFAULT '',
  `hotel_email` varchar(255) DEFAULT NULL,
  `hotel_price` varchar(255) DEFAULT '',
  `hotel_province` varchar(255) DEFAULT NULL,
  `hotel_city` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) DEFAULT NULL,
  `available_rooms` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hotel_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', '北京王府井万豪酒店', '88888888', 'reservations@marriott.com', '2000-5000', '北京市', '北京市', '北京市东城区王府井大街1号', '20', '京王府井万豪酒店位于北京市中心地带，提供五星级服务和豪华客房。', '/img/hotel/26ecdf78-4484-448b-8134-809c6469d753.jpeg');
INSERT INTO `hotel` VALUES ('2', '北京首都机场凯宾斯基酒店', '88888888', 'reservations.beijing@kempinski.com', '1000-2000', '北京市', '北京市', '北京市顺义区天竺镇新国展路2号', '10', '北京首都机场凯宾斯基酒店位于北京首都国际机场附近，提供便捷的航班接送和优质的住宿体验。', '/img/hotel/7eca5bd9-ce41-4c8d-9814-63e373851408.jpg');
INSERT INTO `hotel` VALUES ('3', '北京国贸洲际酒店', '88888888', 'reservation.icbjc@ihg.com', '1500-5000', '北京市', '北京市', '北京市朝阳区建国路1号', '15', '北京国贸洲际酒店位于北京市中心地带，拥有豪华客房、多个餐厅和会议设施。', '/img/hotel/66e2e6ce-2222-4f9e-9c2d-50367b8c99fb.jpg');
INSERT INTO `hotel` VALUES ('4', '北京丽思卡尔顿酒店', '88888888', 'rc.bjrcs.reservation@ritzcarlton.com', '3000-8000', '北京市', '北京市', '北京市朝阳区亮马桥路83号', '20', '北京丽思卡尔顿酒店位于北京市朝阳区亮马桥路的繁华商业区，提供奢华客房和多种娱乐设施', '/img/hotel/a20cca4b-f34b-40e2-94b2-5af7cd9493d1.jpeg');
INSERT INTO `hotel` VALUES ('5', '北京三里屯洲际酒店', '88888888', 'reservation.sltn@ihg.com', '1500-5000', '北京市', '北京市', '北京市朝阳区三里屯路11号', '20', '北京三里屯洲际酒店位于北京市朝阳区三里屯商业区，提供豪华客房、多个餐厅和会议设施。', '/img/hotel/1b098fdb-13d1-4010-a8a4-819661baf28b.jpg');
INSERT INTO `hotel` VALUES ('9', '删掉', '1111', '11', '1', '1', '1', '1', '1', '1', '/img/hotel/36964fb2-ea9d-4e6f-ac68-37bbd7051b81.jpg');
INSERT INTO `hotel` VALUES ('10', '1', '1', '1', '1', '1', '1', '1', '1', '1', '/img/hotel/26d58e70-78d6-4c7b-b205-f6ad5d653942.jpeg');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT 1,
  `create_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '4', '7', '郑', '13412121212', '1', '2024-02-03 16:07:56');
INSERT INTO `orders` VALUES ('4', '4', '7', '郑', '13412121212', '0', '2024-02-03 16:07:52');
INSERT INTO `orders` VALUES ('5', '1', '12', '李四', '13412121212', '1', '2024-02-07 11:41:04');
INSERT INTO `orders` VALUES ('6', '7', '12', '李四', '13512121212', '1', '2024-02-07 11:45:34');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京市');
INSERT INTO `province` VALUES ('2', '天津市');
INSERT INTO `province` VALUES ('3', '河北省');
INSERT INTO `province` VALUES ('4', '山西省');
INSERT INTO `province` VALUES ('5', '内蒙古自治区');
INSERT INTO `province` VALUES ('6', '辽宁省');
INSERT INTO `province` VALUES ('7', '吉林省');
INSERT INTO `province` VALUES ('8', '黑龙江省');
INSERT INTO `province` VALUES ('9', '上海市');
INSERT INTO `province` VALUES ('10', '江苏省');
INSERT INTO `province` VALUES ('11', '浙江省');
INSERT INTO `province` VALUES ('12', '安徽省');
INSERT INTO `province` VALUES ('13', '福建省');
INSERT INTO `province` VALUES ('14', '江西省');
INSERT INTO `province` VALUES ('15', '山东省');
INSERT INTO `province` VALUES ('16', '河南省');
INSERT INTO `province` VALUES ('17', '湖北省');
INSERT INTO `province` VALUES ('18', '湖南省');
INSERT INTO `province` VALUES ('19', '广东省');
INSERT INTO `province` VALUES ('20', '广西壮族自治区');
INSERT INTO `province` VALUES ('21', '海南省');
INSERT INTO `province` VALUES ('22', '重庆市');
INSERT INTO `province` VALUES ('23', '四川省');
INSERT INTO `province` VALUES ('24', '贵州省');
INSERT INTO `province` VALUES ('25', '云南省');
INSERT INTO `province` VALUES ('26', '西藏自治区');
INSERT INTO `province` VALUES ('27', '陕西省');
INSERT INTO `province` VALUES ('28', '甘肃省');
INSERT INTO `province` VALUES ('29', '青海省');
INSERT INTO `province` VALUES ('30', '宁夏回族自治区');
INSERT INTO `province` VALUES ('31', '新疆维吾尔自治区');
INSERT INTO `province` VALUES ('32', '国外');
INSERT INTO `province` VALUES ('33', '香港');
INSERT INTO `province` VALUES ('34', '澳门');

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(500) NOT NULL,
  `route_price` double NOT NULL,
  `route_Introduce` varchar(1000) DEFAULT '',
  `route_date` date DEFAULT NULL,
  `count` int(11) DEFAULT 0,
  `r_image` varchar(200) DEFAULT '',
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('1', '【旅展 半价特惠 重走丝路•漫游宁夏 双飞4天】银川西部影视城 穆民新村 中卫沙坡头【品美酒 回族学唱花儿 感悟民俗】', '999', '走进【宁夏沙坡头】，感受西北大漠风情、体会“大漠孤烟直，长河落日圆”的塞上风光！', '2024-05-04', '0', 'img/product/small/m304b69a4c8328f7d6b8d5dadef020fe07.jpg', '80', '30');
INSERT INTO `route` VALUES ('2', '【官网专享 立减¥500 张家界天门山+大峡谷+凤凰古城+玻璃栈道+玻璃桥 高铁4天 无自费5钻】印象鲵宴-赶年宴+2晚蓝湾博格酒店', '1799', '官网专线，顶级品质！全程超豪华住宿，2晚入住超豪华铂金-蓝湾博格国际酒店，独家尊享金马VIP贵宾专用楼层。', '2024-05-04', '990', 'img/product/small/m34866f055de8630e94e25c40f277a79ba.jpg', null, '18');
INSERT INTO `route` VALUES ('3', '【官网专享 5折预售 越南下龙湾+河内+芒街 高铁4天 高级团】双导游服务 免收服务小费【越超值·美食越南】', '1199', '双导游服务，免收服务小费，周全照顾贴心服务随心出游！品尝越南特色国宝美食，升级一餐越式炸鸡火锅宴！', '2024-05-04', '100', 'img/product/small/m3db4d2277b5df3d98597f79082ef92d6d.jpg', null, '32');
INSERT INTO `route` VALUES ('4', '【官网专享 送箱 ¥1099秒杀 华东五市+乌镇+南浔 双飞6天 南京进上海出】升级1晚豪华酒店 漫步西湖【水墨江南】', '1099', '升级入住1晚豪华酒店；畅玩江南两大经典水乡——乌镇水乡和南浔水乡，体验这里的历史文化底蕴、清丽婉约的水乡古镇风貌。', '2024-05-04', '100', 'img/product/small/m3d91ef60e0c7fdeee97a4e2d3e5a42e84.jpg', '25', '11');
INSERT INTO `route` VALUES ('5', '梅州 双飞3天2晚 自由行套票【含广州直飞梅州早对晚含税往返机票+2晚梅州市区酒店】', '999', '含广州直飞梅州早对晚含税往返机票+2晚梅州市区酒店！', '2024-05-04', '100', 'img/product/small/m3ac1aa10b493b4b22221e19ba39f7e6a1.jpg', '87', '19');
INSERT INTO `route` VALUES ('6', '【宁夏银川 双飞4天】 银川中华回乡文化园 中卫沙坡头 宁夏回族自治区博物馆 西关清真寺', '1299', '中卫升级1晚豪华酒店！走进【宁夏沙坡头】，感受西北大漠风情、体会“大漠孤烟直，长河落日圆”的塞上风光！', '2024-05-04', '100', 'img/product/small/m312cf97538027a813a4fb0bd6980a7fea.jpg', '80', '30');
INSERT INTO `route` VALUES ('7', '【¥1099秒杀 约惠华东五市+乌镇+木渎+灵山大佛 双飞6天 无锡进上海出】升级2晚豪华酒店', '1099', '畅玩乌镇水乡和木渎水乡，游览上海迪士尼小镇，其中升级入住2晚豪华酒店，品尝杭州特色宴“乾隆御茶宴”，送品尝金秋肥美大闸蟹一只！', '2024-05-04', '100', 'img/product/small/m370365f2ea91b638695218a6df13e3819.jpg', '26', '11');
INSERT INTO `route` VALUES ('8', '【¥1099秒杀 特惠华东五市+乌镇+木渎+灵山大佛 双飞6天 上海进杭州出】升级2晚豪华酒店', '1099', '升级两晚豪华酒店，畅游双水乡乌镇+木渎古镇，南京中山陵，杭州西湖！', '2024-05-04', '100', 'img/product/small/m30971b3d22ab37242636088780cfb8eb5.jpg', '25', '11');
INSERT INTO `route` VALUES ('9', '【豪叹喜来登 桂林 阳朔西街高铁4天纯玩 高级团】漓江 西山公园 象鼻山 银子岩', '1299', '1晚指定入住福朋喜来登酒店，船游全程大漓江，游览世界溶洞奇观银子岩', '2024-05-04', '100', 'img/product/small/m35c17b5b73d618bbdd2abe231f1307838.jpg', null, '20');
INSERT INTO `route` VALUES ('10', '【春节 湖南郴州莽山+东江湖+冰雪森林温泉 高铁3天 顶贵团】欢迎年宴+温泉养生宴+农家菜【金狗闹郴晚·冰天雪地泡温泉】', '2399', '莽山景区入住“森林中的皇宫”之美誉的莽山森林温泉酒店；市区入住享“酒店就是景区”美誉的国际奢华品牌酒店---温德姆至尊豪庭酒店！', '2024-05-04', '100', 'img/product/small/m3c9823bc50368af0fe83eff14a5587c0a.jpg', null, '18');
INSERT INTO `route` VALUES ('11', '【春节 莽山+东江湖+冰雪森林温泉 高铁3天 贵宾团】年夜欢迎晚宴+温泉养身宴+特色火锅+湘南风味餐+莽山农家菜', '1999', '独家首创“画中游”游览方式—-徒步醉美小东江景区，颁发徒步证书；特别赠送：美味·东江鱼品尝装礼盒！', '2024-05-04', '100', 'img/product/small/m3501326413840ce82b9ba14db3a3a5eea.jpg', null, '1');
INSERT INTO `route` VALUES ('12', '【立减¥400 桃花季包列 西藏拉萨+日喀则+林芝 双卧12天】青藏铁路 布达拉宫 东方瑞士鲁朗 圣湖羊卓雍措 扎什伦布寺', '5599', '【包列进藏】乘坐世界最先进的青藏列车，观世界坐标级景观带，有氧车厢进入西藏，由低海拔至高海拔逐步适应，安全保障。畅享拉林高等级公路沿途“颜值担当”雪域江南风光！', '2024-05-04', '100', 'img/product/small/m32bdf1849b307712c4a0843b89ed83b5f.jpg', null, '1');
INSERT INTO `route` VALUES ('13', '【立减¥200 桃花季包列 西藏拉萨+林芝桃花季双卧10天】青藏铁路景观带 布达拉宫 东方瑞士鲁朗 嘎拉桃花村', '4399', '【包列进藏】乘坐世界最先进的青藏列车，观世界坐标级景观带，有氧车厢进入西藏，由低海拔至高海拔逐步适应，安全保障。畅享拉林高等级公路沿途“颜值担当”雪域江南风光！', '2024-05-04', '100', 'img/product/small/m3f535b6065c0085e6e69d1df7337bc60c.jpg', null, '1');
INSERT INTO `route` VALUES ('14', '【¥999/2人 广西北海双飞4天 南航往返】北海银滩 北海海景大道 北部湾广场 侨港镇 南迈渔村', '999', '南航飞机直达北海不用1个半小时，畅游真正“天下第一滩”北海十里银滩！漫步北海老街，探秘南迈渔村！', '2024-05-04', '100', 'img/product/small/m3d62aa9f19c84f99a8b700f12824b195b.jpg', null, '20');
INSERT INTO `route` VALUES ('15', '【¥1999秒杀 新疆乌鲁木齐+天山天池+鄯善+火焰山 双飞5天 超贵团】库姆塔格沙漠 坎儿井', '1999', '升级一晚超豪华酒店！鄯善沙漠哈密瓜的故乡，沙漠中的绿洲吐 鲁 番，畅游天山天池！', '2024-05-04', '100', 'img/product/small/m3b73ad0712746ef03019e34fb9757401d.jpg', null, '31');
INSERT INTO `route` VALUES ('16', '【越南下龙湾+巡洲岛+吉婆岛+河内 高铁5天 纯玩贵宾团】0购物0自费 尊享1晚国际品牌超豪华酒店+1晚巡洲岛豪华海边度假酒店海景房', '1899', '畅游·下龙湾，登陆巡洲岛，游恬静的北越明珠吉婆岛！尊享1晚国际品牌超豪华酒店+1晚巡洲岛豪华海边度假酒店海景房', '2024-05-04', '100', 'img/product/small/m391ef27749fd523c757403de0a5d033d5.jpg', null, '5');
INSERT INTO `route` VALUES ('17', '【海南三亚+兴隆+海口+蜈支洲岛+西岛+亚龙湾+天涯海角双飞4天 超贵团】海口/三亚进 三亚/海口出 不走回头路【经典皇牌 至尊双岛】', '1899', '不走回头路，劲省4小时车程，升级三亚一晚超豪华度假酒店，畅游天涯海角+亚龙湾沙滩+椰田古寨！', '2024-05-04', '100', 'img/product/small/m3552ce9d728ca8c85323df5395e8de1a2.jpg', null, '21');
INSERT INTO `route` VALUES ('18', '【江西井冈山双飞4天】笔架山 游菖蒲古村 穿红军服走红军路', '1199', '广州直飞井冈山机场，车程劲省2小时；乘坐十公里长的亚洲第一索道——笔架山索道；', '2024-05-04', '100', 'img/product/small/m3bc92ed09dc80f91641ea195983bf1284.jpg', null, '30');
INSERT INTO `route` VALUES ('19', '【湘西360°全景 张家界高铁5天】韶山 天子山 袁家界 天门山 玻璃栈道 大峡谷景区玻璃桥 凤凰古城', '2099', '挑战天门山玻璃栈道、大峡谷玻璃桥，享侗族才家合拢宴 ，特色蘑菇宴，土家风味宴，游览韶山毛主席故里！', '2024-05-04', '100', 'img/product/small/m3d69b0ea3165d04302cc068ac14192bd1.jpg', null, '18');
INSERT INTO `route` VALUES ('20', '【莽山+森林温泉+东江湖高铁3天 纯玩顶贵团5钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '1499', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '2024-05-04', '100', 'img/product/small/m30e5efc21e11e76fbf0e75da4b7b9d97e.jpg', null, '32');
INSERT INTO `route` VALUES ('21', '【莽山+森林温泉+东江湖高铁3天 纯玩超贵团4+5钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '1399', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '2024-05-04', '100', 'img/product/small/m30e5efc21e11e76fbf0e75da4b7b9d97e.jpg', null, '11');
INSERT INTO `route` VALUES ('22', '【莽山+森林温泉+东江湖高铁3天 纯玩贵宾团4钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '1199', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '2024-05-04', '100', 'img/product/small/m3e58cd1b85e778b6f57a3745037704b35.jpg', null, '19');
INSERT INTO `route` VALUES ('23', '【江西庐山 三清山 婺源纯玩双飞5天】庐山植物园 婺源篁岭“晒秋” 景德镇', '1999', '三清山脚升级1晚超豪华酒店；直飞景德镇，全程纯玩，旅程更舒适；', '2024-05-04', '100', 'img/product/small/m35b95dd85d2fe9fe53f743e618f67d891.jpg', null, '14');
INSERT INTO `route` VALUES ('24', '【品味江西双飞4天纯玩】三清山 夜宿庐山 婺源篁岭晒秋 瓷都景德镇', '1599', '全程纯玩，品尝婺源农家宴，三清山生态宴，解析徽派建筑—婺源，因“晒秋”闻名遐迩！', '2024-05-04', '100', 'img/product/small/m3ce75dde0868132a5b0e2b303b9e5dd0c.jpg', null, '2');
INSERT INTO `route` VALUES ('25', '【+1元换购两大夜景 华东五市双飞六天纯玩】扬州瘦西湖 灵山大佛 双水乡乌镇+南浔', '2699', '升级一晚超豪华酒店 ，加1元换购：价值280元苏州游船+上海环球金融中心94层！灵山大佛许下美好的愿望！', '2024-05-04', '0', 'img/product/small/m3f15936372dc3462d335b0e4ae95ef10b.jpg', null, '3');
INSERT INTO `route` VALUES ('26', '【安徽黄山 双飞4天跟团游】直飞黄山 住1晚山上 宏村探古 夜宿鲍家花园 品徽州火锅【超贵团】', '2099', '黄山直飞！入住一晚入住黄山山酒店，1晚花园式的私家园林内酒店—歙县鲍家花园大酒店！品尝徽州火锅！', '2024-05-04', '980', 'img/product/small/m3eedfb8ee93dfc041aa9dea6f2751a0d8.jpg', null, '12');
INSERT INTO `route` VALUES ('27', '【3.18出发 厨神夜宴·龙脊放水节 高铁3天·专场篝火晚会】龙脊古壮寨梯田 平安梯田 西山桃花节【超贵团】', '499', '“世界梯田之冠”龙脊梯田水满田畴，层层银链的震撼风景！金马贵宾独家尊享：金牌全猪宴、高山篝火晚会！精选住宿：升级1晚超豪华酒店。', '2024-05-04', '0', 'img/product/small/m3cfa8355222bddde5a05ce589a602079f.jpg', null, '5');
INSERT INTO `route` VALUES ('28', '【春节 买1送1 云南香格里拉+丽江+大理 高铁7天 超贵团】石卡雪山 虎跳峡 独克宗祈福 拉市海 洱海公园 花语牧场 昆明红嘴鸥【畅享温泉SPA】', '5799', '昆明1晚入住超豪华温泉酒店，尽享地道温泉SPA！登顶香格里拉+藏族神山石卡雪山，尽享玩雪乐趣，走进藏区古镇独克宗，感受地道藏式民俗，转动世界最大转经筒，祈福新年大吉！', '2024-05-04', '0', 'img/product/small/m3420d7f66c7aec9d0cf5c2654aa973f8c.jpg', null, '5');
INSERT INTO `route` VALUES ('29', '【3.17出发 龙脊放水节】龙脊平安梯田 古壮寨梯田 船游一江四湖 桂林城徽象鼻山 兴坪古镇 骥马村油菜花海 阳朔西街动车三天团', '599', '“世界梯田之冠”龙脊梯田水满田畴，层层银链的震撼风景！金马贵宾独家尊享：金牌全猪宴，金马专场高山篝火晚会！', '2024-05-04', '0', 'img/product/small/m3ef702190f1c51354db5b9e754573428b.jpg', null, '5');
INSERT INTO `route` VALUES ('30', '【春节 张家界天门山+大峡谷玻璃桥+凤凰古城 高铁4天】玻璃栈道 溪布老街【品土家三下锅】', '2599', '全程入住豪华标准舒适酒店或精装客栈，提升旅游体验！品年味：湘西民族特色风味【土家三下锅/蘑菇宴（588元/桌）】欢欢喜喜过大年！', '2024-05-04', '0', 'img/product/small/m39428c374b8f8debe994cfbff6de4a3db.jpg', null, '5');
INSERT INTO `route` VALUES ('31', '【春节 张家界森林公园+大峡谷玻璃桥+凤凰古城 高铁4天 升级超豪华酒店】百龙天梯 袁家界 杨家界 金鞭溪 溪布老街 土司王-赶年盛宴【品质纯玩 超贵团】', '1899', '升级一晚超豪铂金酒店，华而不奢，温情似家【蓝湾博格国际酒店】；赠送袁家界景区百龙天梯双程（价值144元/位），VIP通道、无需排队、尽享贵宾礼遇！', '2024-05-04', '0', 'img/product/small/m3c9c87a1175252d187eb8c4bc228c317d.jpg', null, '5');
INSERT INTO `route` VALUES ('32', '【春节爆款 张家界天门山玻璃栈道+大峡谷玻璃桥+凤凰古城 高铁4天】游飘在水上的溪布老街 品土家三下锅【贵宾团 4钻】', '2099', '零购物·一价全含；畅玩年味四大核心热门景区：天门山国家森林公园、大峡谷玻璃桥、凤凰古城、溪布街；每人一份平安发财贺新春小礼品！', '2024-05-04', '0', 'img/product/small/m349baf8219aca81648fa94e66ca09014e.jpg', null, '5');
INSERT INTO `route` VALUES ('33', '【春节 张家界国家森林公园+大峡谷玻璃桥+凤凰古城 高铁4天】袁家界 金鞭溪 飘在水上的溪布老街 品土家三下锅【贵宾团 4钻】', '2099', '零购物，一价全含；游玩热门景区：张家界国家森林公园、大峡谷玻璃桥、凤凰古城、溪布街；全程入住豪华标准舒适酒店或精装客栈，舒适温馨', '2024-05-04', '0', 'img/product/small/m324c5af15cf5e02bdf68873e4d485a182.jpg', null, '5');
INSERT INTO `route` VALUES ('34', '【春节 北京+天津+雪世界滑雪 双飞5天 天津往返 纯玩3+5钻】升级1晚丽都皇冠假日酒店 新春庙会 雍和宫祈福 八达岭长城【津津有味】', '3599', '游玩北京一年一度的大庆典——新春庙会；升级体验乘坐25分钟京津城际高速列车！加游华北户外至大的滑雪场-雪世界滑雪！北京升级1晚入住国际品牌超豪华酒店-【丽都皇冠假日酒店】！', '2024-05-04', '0', 'img/product/small/m3b2c6e8fa0e92882b9362c68dfa504324.jpg', null, '1');
INSERT INTO `route` VALUES ('35', '【超值·越南船游下龙湾+芒街+首都河内 高铁4天 高级团】巴亭广场 镇国寺 【享越式炸鸡火锅宴】', '599', '包船游誉为世界自然遗产亦有海上桂林美誉的【下龙湾】！入住两晚下龙度假区酒店，感受异域风情；入住一晚河内市区酒店，感受异域民风！', '2024-05-04', '0', 'img/product/small/m3b350a4abe82f0a7d0fd2897ce7d59ae5.jpg', null, '1');
INSERT INTO `route` VALUES ('36', '【春节 直飞北京 双飞6天 纯玩4钻】新春庙会 雍和宫祈福 故宫 八达岭长城 什刹海 雪世界滑雪', '4399', '游玩北京一年一度的大庆典——新春庙会；加游历代皇帝御用寺庙——雍和宫祈福；赠送北京市第一家以3D画形式展现北京千年皇家文化的专业画廊—【明清宫3D画廊】！', '2024-05-04', '0', 'img/product/small/m3b2c6e8fa0e92882b9362c68dfa504324.jpg', null, '1');
INSERT INTO `route` VALUES ('37', '【春节陕西西安兵马俑+华山+延安+黄河壶口冰瀑 双飞5天 西安往返】华清宫 黄帝陵轩辕庙 汉城湖新春庙会【贵宾团】', '4699', '观摩“世界第八大奇迹”——【兵马俑】，领略秦王军阵雄风； 问鼎五岳之巅【西岳华山】，回味金庸笔下的侠客柔情！', '2024-05-04', '0', 'img/product/small/m3a6e5b5ba8ef83b3057c1ac58cb0a51a9.jpg', null, '15');
INSERT INTO `route` VALUES ('38', '【春节 云南香格里拉+丽江+大理+昆明+玉龙雪山+洱海 双飞6天 昆明往返 纯玩超贵团】升级楚雄入住当地超豪华型酒店', '3999', '尽享冬色香格里拉，登顶玉龙雪山；畅享丽江、大理双古城，体验小资洱海风光；升级一晚入住当地超豪华型酒店！', '2024-05-04', '999', 'img/product/small/m3fbf284c91f951d6a5a071a3f02010669.jpg', null, '15');
INSERT INTO `route` VALUES ('39', '【春节 立减¥200 云南香格里拉+丽江+大理+昆明+玉龙雪山+洱海 高铁7天 昆明往返 纯玩超贵团】楚雄升级当地超豪华酒店', '3899', '升级楚雄入住当地超豪华型酒店！团团赠品云南名食：丽江土鸡宴&野生菌火锅！', '2024-05-04', '0', 'img/product/small/m3791748e3f2093699116c6bd3fd8a8752.jpg', null, '15');
INSERT INTO `route` VALUES ('40', '【第2位5折 春节 贵州黄果树瀑布+西江千户苗寨+贵阳 高铁4天 纯玩】特别升级1晚超豪华酒店【苗韵西江】', '2999', '贵州旅游精品线：黄果树、西江千户苗寨。加游非遗文化聚集地的丹寨万达小镇！全程入住豪华酒店，升级一晚超豪华酒店！', '2024-05-04', '0', 'img/product/small/m37d8d151694fd4efe55f6fc82fff568b0.jpg', null, '15');
INSERT INTO `route` VALUES ('41', '【春节爆款 直飞北京 双飞6天 纯玩3钻】新春庙会 雍和宫祈福 故宫 八达岭长城 什刹海', '3099', '游玩北京一年一度的大庆典——新春庙会；加游历代皇帝御用寺庙——雍和宫祈福；赠送北京市第一家以3D画形式展现北京千年皇家文化的专业画廊—【明清宫3D画廊】！', '2024-05-04', '0', 'img/product/small/m34df74737b1cae0f6893d5b9895d4545b.jpg', null, '15');
INSERT INTO `route` VALUES ('42', '【春节 北京+天津 双飞5天 天津往返 纯玩4钻】新春庙会 雍和宫祈福 八达岭长城 天津三街 周邓纪念馆【津津有味】', '3599', '游玩北京一年一度的大庆典——新春庙会；升级体验乘坐25分钟京津城际高速列车！加游华北户外至大的滑雪场-雪世界滑雪！ 参观以3D画形式展现北京千年皇家文化的专业画廊—【明清宫3D画廊】', '2024-05-04', '0', 'img/product/small/m3e5a38453ae434a21243962988d559a78.jpg', null, '13');
INSERT INTO `route` VALUES ('43', '【春节 北京滑雪+天津 双飞5天 天津往返 纯玩3+5钻】升级1晚喜来登 新春庙会 雍和宫祈福 雪世界 八达岭长城【津津有味】', '3199', '北京升级1晚入住国际品牌超豪华酒店-【喜来登】；赠送北京市第一家以3D画形式展现北京千年皇家文化的专业画廊—【明清宫3D画廊】', '2024-05-04', '0', 'img/product/small/m3b2c6e8fa0e92882b9362c68dfa504324.jpg', null, '13');
INSERT INTO `route` VALUES ('44', '【春节 北京滑雪+秦皇岛 双飞6天 秦皇岛往返 纯玩3钻】山海关 北戴河 北京庙会 雍和宫祈福 八达岭长城 【京彩联游】', '3399', '一次畅游北京、秦皇岛、北戴河三大风光城市，特别体验雪世界滑雪，品尝北京特色烤鸭，1号蒸菜！', '2024-05-04', '0', 'img/product/small/m34a3bd4d04ba909d08a02d9ea30c6235d.jpg', null, '13');
INSERT INTO `route` VALUES ('45', '【春节 桂林+阳朔 高铁3天 贵宾团】纯玩0自费 住豪华酒店 船游大漓江 开运迎春宴 西山桃花展 訾洲郁金香花海【经典桂林】', '1199', '全程入住豪华酒店；其乐融融的春节气氛，特别安排享用迎春开运宴（价值888元/围）、阳朔啤酒鱼宴；乘船游全程【大漓江】，身心体验“舟行碧波上，人在画中游”的山水画卷！', '2024-05-04', '0', 'img/product/small/m3fa7b43b0cc93b78676a5cd9e5a32c309.jpg', null, '13');
INSERT INTO `route` VALUES ('46', '【春节爆款 桂林+阳朔 高铁3天 惠贵团】纯玩0自费 住高级酒店 船游大漓江 开运迎春宴 西山桃花展 訾洲郁金香花海【经典桂林】', '1099', '春节期间阳朔升级入住豪华酒店；其乐融融的春节气氛，特别安排享用迎春开运宴（价值888元/围）、阳朔啤酒鱼宴；乘船游全程【大漓江】，身心体验“舟行碧波上，人在画中游”的山水画卷！', '2024-05-04', '0', 'img/product/small/m3d3fabe71ace1184426ac6df14bfb6cd6.jpg', null, '13');
INSERT INTO `route` VALUES ('47', '【春节 桂林+阳朔 高铁3天 贵宾团】纯玩0自费 住豪华酒店 船游兴坪漓江 开运迎春宴 西山桃花展 訾洲郁金香花海【浪漫桂林】', '1059', '全程入住豪华酒店，充分时间游览异国情调的阳朔西街；其乐融融的春节气氛，特别安排享用迎春开运宴（价值888元/围）、阳朔啤酒鱼宴！', '2024-05-04', '0', 'img/product/small/m3ec4a602492df72816ec03871f2bb59df.jpg', null, '13');
INSERT INTO `route` VALUES ('48', '【春节 桂林+阳朔高铁3天 惠贵团】纯玩0自费 住高级酒店 船游兴坪漓江 开运迎春宴 西山桃花展 訾洲郁金香花海【浪漫桂林】', '999', '其乐融融的春节气氛，特别安排享用迎春开运宴（价值888元/围）、阳朔啤酒鱼宴！', '2024-05-04', '0', 'img/product/small/m35c17b5b73d618bbdd2abe231f1307838.jpg', null, '13');
INSERT INTO `route` VALUES ('49', '【春节 云南丽江+大理+昆明+玉龙雪山+洱海 高铁6天 昆明往返 纯玩贵宾团】纯享云南•一价全包无自费', '3399', '全程纯玩、一价全包、无必须自费项目！', '2024-05-04', '0', 'img/product/small/m3249bc7b6808cc74080f1bb45d5e82c4e.jpg', null, '17');
INSERT INTO `route` VALUES ('50', '【春节 张家界天门山+玻璃栈道+大峡谷+玻璃桥+凤凰古城+《魅力湘西》 高铁4天 纯玩5钻】团年盛宴+洲际皇冠假日 零购物零加点', '2299', '升级1晚顶级国际奢华集团连锁品牌【洲际-皇冠假日酒店】！四大核心景区、三大特色景点，行程丰富，门票过千，绝不走马观花！', '2024-05-04', '0', 'img/product/small/m36e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', null, '17');
INSERT INTO `route` VALUES ('51', '【春节 桂林漓江+象鼻山+银子岩+世外桃源+阳朔西街 高铁4天 超贵团】纯玩0自费 豪叹喜来登', '1799', '享受其乐融融的春节气氛，特别安排享用迎春开运宴（价值600元/围）、喜来登自助晚餐；2晚入住豪华酒店，桂林1晚入住国际品牌福朋喜来登酒店！', '2024-05-04', '0', 'img/product/small/m35c17b5b73d618bbdd2abe231f1307838.jpg', null, '17');
INSERT INTO `route` VALUES ('52', '【春节 神农架滑雪 双飞4天 纯玩高级团 直飞宜昌】官门山 神农架滑雪场 大熊猫馆 三峡大坝【火辣辣南方滑雪胜地·神农架】', '2099', '直飞宜昌，前往南方规模最大、雪质最好的神农架滑雪场，探访【国宝熊猫大熊猫白面书生，宜昌升级1晚当地豪华酒店！', '2024-05-04', '0', 'img/product/small/m354c084c1f16b42021e8af859532a5045.jpg', null, '17');
INSERT INTO `route` VALUES ('53', '【春节 越南岘港+下龙湾+河内 双高铁双飞6天 纯玩贵宾团】0购物0自费【越识叹·南北越联游·玩转巴拿山】', '4699', '零购物零自费！全程入住超豪华度假酒店，尊享越南法式度假！全程越式料理+豪叹价值268元SEN莲花国际自助餐+越式炸鸡火锅宴！凭祥进东兴出，全程不走回头路', '2024-05-04', '0', 'img/product/small/m3a97735f3c1f4d895c2950abbf7e758fd.jpg', null, '17');
INSERT INTO `route` VALUES ('54', '【云南泸沽湖+丽江+大理+昆明+玉龙雪山+洱海双飞6天 贵宾团】里务比岛 猪槽船游湖 拉市海【梦幻女儿国】', '2899', '深度游玩丽江，特别安排入住三晚丽江当地豪华酒店；探秘女儿国【泸沽湖】，特别安排乘坐【猪槽船】感受泸沽湖里务比岛独特的美！', '2024-05-04', '0', 'img/product/small/m3de663b67f7fa51bc482d40c87aea6da9.jpg', null, '17');
INSERT INTO `route` VALUES ('55', '【春节 海南三亚+蜈支洲岛 双飞4天 海口入三亚出/三亚入海口出 超贵团】独家安排游艇出海 升级1晚海边超豪华度假酒店', '4399', '海口入三亚出/三亚入海口出，不走回头路！独家安排私家豪华游艇（容纳20-30人）包艇出海，拒绝散拼大游船！举办私家游艇派对：卡拉OK、红酒、点心、海上浮潜、海上垂钓……', '2024-05-04', '1000', 'img/product/small/m34332119c1d3b137dee37e76e5d2d9391.jpg', null, '17');
INSERT INTO `route` VALUES ('56', '【春节 云南香格里拉+丽江+大理+昆明+玉龙雪山+洱海 双飞6天 昆入丽出/丽入昆出 超贵团】纯玩无购物 松赞林寺祈福【金品游】', '7299', '精选云南三大国家5A级景点•专业策划合理路线，全程不走回头路•享受最具特色的云南年味；昆明和香格里拉升级当地超豪华酒店，其余当地豪华型酒店，享受优质的住宿！', '2024-05-04', '0', 'img/product/small/m3cbf47c96c3a70765eb9c90efb345f0d3.jpg', null, '25');
INSERT INTO `route` VALUES ('57', '【春节 云南丽江+大理+昆明+玉龙雪山+洱海双飞6天 昆明往返 超贵团】全程纯玩 无购物 无必须自费 丽江河灯祈福', '5799', '全程纯玩，无指定购物店，一价全包，无必须自费；包含玉龙雪山等经典景点门票索道价值约500元，行程丰富，绝不走马观花', '2024-05-04', '0', 'img/product/small/m37e6079026b2f5357598dee8bb2c1772a.jpg', null, '25');
INSERT INTO `route` VALUES ('58', '阳朔 高铁3天2晚 自由行套票【含广州往返二等座高铁票+西街口豪华型阳朔万丽花园大酒店2晚+每日西式自助早餐】', '459', '广州到阳朔往返二等座高铁票+西街口豪华型阳朔万丽花园大酒店2晚+每日西式自助早餐！', '2024-05-04', '0', 'img/product/small/m338695211e1e6b944cba365c06ce98ba0.jpg', null, '25');
INSERT INTO `route` VALUES ('59', '【广西龙脊梯田放水节+桂林 高铁3天·豪叹希尔顿】龙脊古壮寨梯田 平安梯田 布尼梯田 篝火晚会 美食厨神专场全猪宴团【超贵团】', '666', '“世界梯田之冠”龙脊梯田水满田畴，层层银链的震撼风景！（至佳观赏期3月-4月上旬）；深度游览龙脊梯田两大核心观景区：古壮寨梯田、平安寨梯田！', '2024-05-04', '0', 'img/product/small/m32d0abfffd0a64b397315bd0eed5776d4.jpg', null, '25');
INSERT INTO `route` VALUES ('60', '【云南罗平油菜花+贵州兴义万峰林+黄果树大瀑布 高铁5天·纯玩0自费】船游万峰湖 马岭河大峡谷 雨补鲁天坑【金马自营-赏花·温泉·山水瀑布】', '1999', '游云南罗平油菜花，观赏最壮观的万亩金色油菜花海，一年仅一个月的花期。特别升级一晚超豪华住宿以及当地温泉酒店，尊享舒适旅程！', '2024-05-04', '0', 'img/product/small/m3af93767375fa2a989f1c82b3df3da7c7.jpg', null, '25');
INSERT INTO `route` VALUES ('61', '【特价 东北雪乡+亚布力+哈尔滨双飞5天】童话世界雪乡 亚布力激情滑雪 林海雪源威虎寨【经典小东北】', '2499', '穿越林海，深入匪窝，化身杨子荣去大闹威虎寨！体验贵族式运动“亚布力激情滑雪”！超值体验价值180元的赫哲族冰上捕鱼！', '2024-05-04', '0', 'img/product/small/m3049f23927f06d90e98fc254acd839846.jpg', null, '25');
INSERT INTO `route` VALUES ('62', '【宁夏双飞4天】 银川华夏西部影视城 宁夏回族自治区博物馆 中卫沙坡头 穆民新村', '1499', '穿越林海，深入匪窝，化身杨子荣去大闹威虎寨！体验贵族式运动“亚布力激情滑雪”！超值体验价值180元的赫哲族冰上捕鱼！', '2024-05-04', '0', 'img/product/small/m312cf97538027a813a4fb0bd6980a7fea.jpg', null, '20');
INSERT INTO `route` VALUES ('63', '【特价 东北长白山+雪乡+亚布力+吉林+哈尔滨+长春双飞6天】亚布力激情滑雪 吉林雾凇【东北小环游】', '6599', '亚布力滑雪度假区激情滑雪！雪地自驾欢乐卡丁车！长白山下酒店舒适温泉！升级2晚超豪华酒店！', '2024-05-04', '0', 'img/product/small/m32147bf064e03b7313fe250b262d902c1.jpg', null, '20');
INSERT INTO `route` VALUES ('64', '【春节 广西桂林+阳朔动车三天 品开运迎春宴·豪叹希尔顿·全程0自费】訾洲郁金香花海 城徽象鼻山 船游一江四湖 兴坪古镇【超贵团】', '839', '金马贵宾独家尊享迎春开运宴；一块儿包饺子！桂林入住国际品牌希尔顿欢朋酒店，舒适客房35平米超大自由空间！品希尔顿酒店中西式自助早餐！阳朔安排入住豪华酒店！', '2024-05-04', '0', 'img/product/small/m3a0b210f47a778170efe260bd75a2fd01.jpg', null, '20');
INSERT INTO `route` VALUES ('65', '【旅展特价 贵州黄果树瀑布+西江千户苗寨+荔波大小七孔 高铁5天】丹寨万达小镇 荔波古镇 时光贵州古镇【经典全景·升级一晚超豪华酒店】', '1799', '乘贵广高铁，观赏“亚洲第一瀑布”，世界双自然遗产地“荔波大小七孔”，游玩西江千户苗寨；安顺升级一晚超豪华酒店！', '2024-05-04', '0', 'img/product/small/m39f7d21f616436e6d795e98a43c93f8fa.jpg', null, '20');
INSERT INTO `route` VALUES ('66', '【女神月·广西龙脊放水节+西山桃花节·高铁3天】平安梯田 金坑梯田 小寨油菜花海 侗情水庄 金牌全猪宴 漓江鱼油茶宴【超贵团 全程0自费+豪叹大公馆】', '666', '龙脊梯田，水满田畴，层层银链的震撼风景！前往《绝地逃亡》拍摄地【平安梯田】“九龙五虎”震撼实景真实再现！金坑梯田，邂逅金坑小寨油菜花海！', '2024-05-04', '0', 'img/product/small/m3ef702190f1c51354db5b9e754573428b.jpg', null, '28');
INSERT INTO `route` VALUES ('67', '【买1送1 致享云南香格里拉+丽江+大理+昆明 双飞6天 超贵团】石卡雪山 虎跳峡 独克宗古镇 拉市海 洱海公园 花语牧场 昆明九乡溶洞【美食篝火•温泉SPA•河灯许愿】', '4399', '门票一价全包；登顶香格里拉藏族神山：石卡雪山；昆明1晚免费升级超豪华温泉酒店！', '2024-05-04', '0', 'img/product/small/m31baca2c10aeda9fbb13bc14e0411a9ec.jpg', null, '28');
INSERT INTO `route` VALUES ('68', '【买1送1 云南香格里拉+丽江+大理+昆明 高铁7天 超贵团】石卡雪山 虎跳峡 独克宗古镇 拉市海 洱海公园 花语牧场 昆明九乡溶洞【美食篝火•温泉SPA•河灯许愿】', '3999', '门票一价全包；登顶香格里拉藏族神山-石卡雪山；走进藏区古镇独克宗，感受地道藏式民俗；安排价值50元/人餐标的纳西风味宴+纳西篝火舞动；昆明1晚升级超豪华温泉酒店！', '2024-05-04', '0', 'img/product/small/m3420d7f66c7aec9d0cf5c2654aa973f8c.jpg', null, '28');
INSERT INTO `route` VALUES ('69', '【山东泰山+曲阜孔府+青岛+威海+蓬莱+济宁 双飞6天】升级1晚超豪华酒店', '2099', '欧韵青岛、花园威海、蓬莱寻仙、风筝潍坊、泰山祈福、曲阜圣城、佛国兖州、泉城济南；一次游遍山东全景，不走回头路！', '2024-05-04', '0', 'img/product/small/m359078394c93364d01d2dafd60a4ac78b.jpg', null, '28');
INSERT INTO `route` VALUES ('70', '【春节 湖南长沙+张家界天门山+大峡谷玻璃桥+凤凰古城 奢华度假 高铁5天 顶贵团5钻】玻璃栈道vs玻璃桥 澧水游船【观冯小刚执导《魅力湘西》+全程超豪华酒店】', '2599', '升级1晚顶级国际奢华集团连锁品牌【洲际-皇冠假日酒店】！五大核心景区，行程丰富，门票过千，绝不走马观花！品新春盛宴——火宫殿、才家合拢宴，一起吃顿土家盛宴团年饭！', '2024-05-04', '0', 'img/product/small/m31beb6833a226867f4e9c4d9b1d3679ed.jpg', null, '28');
INSERT INTO `route` VALUES ('71', '【贵州专列2· 赏樱·温泉·优宿 黄果树大瀑布+荔波大小七孔+西江千户苗寨 高铁5天】平坝万亩樱花 贵定音寨“金海雪山”花海·赏花摄影之旅【金马自营】', '2599', '贵阳特别升级入住挂五星温泉酒店——保利国际温泉酒店，尊享温泉体验；【使用飞天航拍器，配置专业摄影人员跟队指导】全景直击音寨“金海雪山”油菜花海以及平坝万亩樱花高空俯瞰盛况！', '2024-05-04', '0', 'img/product/small/m3e820d274755c674e67d0e0da5bdbf8a9.jpg', null, '28');
INSERT INTO `route` VALUES ('72', '【贵州赏樱专列1·玩转航拍 黄果树大瀑布+西江千户苗寨 高铁4天】平坝万亩樱花 贵定音寨“金海雪山”花海·赏花摄影之旅【金马自营】', '1899', '【使用飞天航拍器，配置专业摄影人员跟队指导】全景直击音寨“金海雪山”油菜花海以及平坝万亩樱花高空俯瞰盛况！入住1晚“中国首家布依族艺术酒店”的超豪华【黄果树爱度艺术酒店】！', '2024-05-04', '0', 'img/product/small/m379471f9320ee1e879f28986eea488fff.jpg', null, '21');
INSERT INTO `route` VALUES ('73', '【春节 湖南张家界+大峡谷玻璃桥+凤凰古城+重庆酉阳桃花源+湖北恩施大峡谷 高铁5天 一价全包】湘鄂渝三省联游 尊享恩施土家团年饭-刨汤宴', '3299', '湘鄂渝联游：经典张凤+重庆酉阳桃花源+湖北恩施大峡谷，一次出行，玩转湖南湖北重庆精华景点， 一价全含，零加点，零购物！尊享恩施土家团年饭-刨汤宴，欢欢喜喜过土家年！', '2024-05-04', '0', 'img/product/small/m324c5af15cf5e02bdf68873e4d485a182.jpg', null, '21');
INSERT INTO `route` VALUES ('74', '【春节 私享湖南 张家界森林公园+天门山玻璃栈道+凤凰古城+大峡谷玻璃桥高铁5天】袁家界 金鞭溪 观冯小刚《魅力湘西》 游宝峰湖【顶贵团】', '5499', '私家定制4人即走；全景湘西，行程丰富，门票过千，绝不走马观花；全程超豪华住宿，张家界升级三晚挂牌五星！', '2024-05-04', '0', 'img/product/small/m349baf8219aca81648fa94e66ca09014e.jpg', null, '21');
INSERT INTO `route` VALUES ('75', '【2月 桂林龙脊梯田放水节+阳朔高铁3天·全程0自费】龙脊梯田+平安寨梯田+阳朔葡萄峰林+遇龙河风光【豪叹杀猪宴】', '739', '游览素有“世界梯田之冠”美誉的龙脊梯田；独家尊享•龙脊壮家最高礼遇：品尝价值680元/围的龙脊杀猪宴！安排1晚入住特色龙脊吊脚楼！', '2024-05-04', '0', 'img/product/small/m3ef702190f1c51354db5b9e754573428b.jpg', null, '21');
INSERT INTO `route` VALUES ('76', '【春节 云南罗平油菜花+贵州兴义万峰林+广西百色 高铁5天·0购物0自费】乌蒙大草原滑雪 雨布鲁天坑 马岭河大峡谷 民族篝火晚会【云贵桂三省纯玩团】', '2699', '乘坐南昆高铁直抵百色，独家揭秘《爸爸去哪儿5》最火拍摄地，玩转金色花海，探访远离喧嚣的古寨人家！ 全程升级4晚超豪华酒店，享受美妙的黔西南之夜！', '2024-05-04', '0', 'img/product/small/m3180b564776c1e140b73f15de5f3a5312.jpg', null, '21');
INSERT INTO `route` VALUES ('77', '【春节 贵州黄果树瀑布+荔波小七孔+西江千户苗寨 单飞单动5天之旅】陡坡塘 天星桥 丹寨万达小镇 贵阳青岩古镇【单飞荔波·畅游贵州】', '2799', '成人报名即送价值188元茅台镇酱香型白酒一瓶；入住两晚豪华酒店+升级一晚超豪华酒店，西江入住景区特色客栈！ 品尝西江长桌宴、黄果树土鸡宴，感受当地贵州美食！', '2024-05-04', '0', 'img/product/small/m39f7d21f616436e6d795e98a43c93f8fa.jpg', null, '8');
INSERT INTO `route` VALUES ('78', '【春节 贵州黄果树大瀑布+云南罗平油菜花 高铁5天】兴义万峰林船游万峰湖 马岭河大峡谷 雨补鲁天坑【赏花 温泉 山水瀑布 0自费 金马自营】', '2499', '一次满足你赏花+叹温泉+赏山水瀑布美景三个愿望！游云南罗平油菜花，观赏最壮观的万亩金色油菜花海！', '2024-05-04', '0', 'img/product/small/m34f047ea4d1d1e0b832aa8a5dd55716c4.jpg', null, '8');
INSERT INTO `route` VALUES ('79', '【春节 贵州黄果树+云南罗平油菜花高铁4天 纯玩0自费】天星桥 陡坡塘瀑布 云南罗平金鸡岭油菜花 贵阳青岩古镇【金马自营】', '1999', '游云南罗平油菜花，观赏最壮观的万亩金色油菜花海，一年仅一个月的花期最佳观赏期为2月中旬-3月份；全程入住当地豪华酒店！品尝价值500元/围安顺特色药膳宴及贵州地道【酸汤鱼宴】！', '2024-05-04', '0', 'img/product/small/m3aaaaa5b07f6835ebb28ac4821052f94b.jpg', null, '8');
INSERT INTO `route` VALUES ('80', '【张家界天门山+大峡谷+凤凰古城+玻璃栈道+玻璃桥 高铁4天 纯玩5钻】纯玩无自费 尊享1晚张家界挂牌五星京武铂尔曼酒店', '1849', '全程品质超豪华标准酒店！赠送最高户外电梯-百龙天梯·体验66秒直达山顶，免除排队烦恼！含金量足：门票总价达￥758/人。', '2024-05-04', '0', 'img/product/small/m3465e6dbdbd77e48ef66862436c36d0a3.jpg', null, '8');
INSERT INTO `route` VALUES ('81', '【春节 武汉+神农架滑雪 高铁5天 纯玩】入住1晚滑雪场酒店 升级1晚武汉香格里拉酒店', '3899', '入住一晚滑雪场酒店，武汉升级入住香格里拉酒店！', '2024-05-04', '0', 'img/product/small/m354c084c1f16b42021e8af859532a5045.jpg', null, '8');
INSERT INTO `route` VALUES ('82', '【春节 云南罗平油菜花+贵州+广西 高铁5天 超贵纯玩团】0购物0自费 三大特色宴 布依族篝火晚会【云贵桂三省联游】', '2699', '独家揭秘《爸爸去哪儿5》最火拍摄地，玩转金色花海，探访远离喧嚣的古寨人家！', '2024-05-04', '0', 'img/product/small/m3180b564776c1e140b73f15de5f3a5312.jpg', null, '8');
INSERT INTO `route` VALUES ('83', '【越南岘港+APEC领导人峰会公园+山茶半岛+下龙湾+天堂岛+河内 单高铁双飞6天 惠贵团】东兴入岘港出 【南北越联游】', '1699', '东兴入岘港出，不走回头路！中越双导游服务，全程专业导游讲解，团团必派广州领队全程贴心服务！', '2024-05-04', '0', 'img/product/small/m3c59f2779e7e8389160c59974f514e257.jpg', null, '8');
INSERT INTO `route` VALUES ('84', '【张家界深度纯玩 高铁4天贵宾团 】天门山 玻璃栈道 大峡谷玻璃桥 橘子洲头', '2199', '游览天门山森林公园，挑战玻璃栈道+大峡谷玻璃桥 ，品张家界土家风味餐！', '2024-05-04', '0', 'img/product/small/m3c9c87a1175252d187eb8c4bc228c317d.jpg', null, '8');
INSERT INTO `route` VALUES ('85', '【旅展特价 厦门鼓浪屿3天2晚自由行套餐】含：广州往返二等座高铁票，1晚厦门海边度假客栈+1晚鼓浪屿特色客栈', '799', '含：广州往返二等座高铁票，1晚厦门海边度假客栈+1晚鼓浪屿特色客栈，避开城市的喧嚣，总能找到一个虚度光阴的理由', '2024-05-04', '0', 'img/product/small/m317ba719d8bcaed4f6e9d0636b7b41888.jpg', null, '9');
INSERT INTO `route` VALUES ('86', '【旅展 买1送1 美食越南·船游下龙湾+芒街+河内 高铁4天】巴亭广场 镇国寺 越式炸鸡火锅宴【佛山出发 高级团】', '999', '入住两晚下龙度假区酒店，感受异域风情；入住一晚河内市区酒店，感受异域民风！', '2024-05-04', '0', 'img/product/small/m37e9d416ccd26ac920f2f8073cf680011.jpg', null, '9');
INSERT INTO `route` VALUES ('87', '【旅展】梅州双飞3天2晚自由行套票【含广州直飞往返南航含税机票+两晚入住梅州市区豪华精品酒店】', '399', '含广州直飞往返南航含税机票+两晚入住梅州市区豪华精品酒店！', '2024-05-04', '0', 'img/product/small/m31e09326b42fd836ce5fc34e0a2351d39.jpg', null, '9');
INSERT INTO `route` VALUES ('88', '【旅展买1送1 东北+俄罗斯联游 双飞6天】异域风情俄罗斯 魅力海参崴 醉美吉林长白山 朝鲜族民俗村 长春【赠送长白山下矿物温泉】', '5399', '赴俄罗斯远东最大的城市【海参崴】，体验俄中朝三国交界海湾的异国情调！登中华十大名山——【长白山】，朝鲜族与满族人朝拜的圣山，邂逅神秘美丽的长白山天池！', '2024-05-04', '0', 'img/product/small/m329953e2c2cc49be10810e70c396bb002.jpg', null, '9');
INSERT INTO `route` VALUES ('89', '【旅展特惠】三亚4天3晚自由行套餐【含广州往返经济舱含税机票，每日自助早餐，3晚三亚万嘉戴斯度假酒店及亚龙湾凯莱仙人掌度假酒店二选一，特惠+1元赠送蜈支洲岛一天游】', '1499', '含广州往返经济舱含税机票，每日自助早餐，3晚三亚万嘉戴斯度假酒店及亚龙湾凯莱仙人掌度假酒店二选一，特惠+1元赠送蜈支洲岛一天游！', '2024-05-04', '0', 'img/product/small/m3fd7637f5a1a26457acf474e1b6e19504.jpg', null, '9');
INSERT INTO `route` VALUES ('90', '【3.8女神节 • 普者黑赏花包列】— 云南普者黑十里桃花园 千亩玫瑰园 青龙山 太阳魂酒庄 动车四天【纯玩贵宾团】', '1499', '探寻剧版《三生三里十里桃花》拍摄地【菜花箐】，花季醉美千株【桃花园】+【玫瑰园】，亲自体验制作鲜花饼！', '2024-05-04', '0', '/img/route/ad07f3d2-0b86-4af8-81fd-0e61667c3ad5.jpg', null, '9');
INSERT INTO `route` VALUES ('91', '【皇牌厦门 动车三天贵宾团】厦门鼓浪屿、演武大桥观景台、云上厦门、沙坡尾“吃堡”美食、厦门大学、南普陀、曾厝垵', '1199', '欣赏极具参观价值、文化价值和艺术价值的旅游景点，深厚的地域特色，将闽南文化完美展现！', '2024-05-04', '0', 'img/product/small/m31b7e6805e116982076fa15ece3c515a1.jpg', null, '9');
INSERT INTO `route` VALUES ('92', '【旅展 第2位5折】梅州双飞3天2晚自由行套餐【含广州往返含税机票+1晚梅州市区豪华酒店+1晚升级五星级客天下国际大酒店+额外赠送客家小镇门票】', '799', '含广州往返含税机票，入住1晚梅州市区豪华酒店，第二晚升级住五星级客天下国际大酒店，额外赠送客家小镇门票，感受浓郁的客家文化！', '2024-05-04', '0', 'img/product/small/m33ba04de59f51957cdb9e2d4fac106ac2.jpg', null, '9');
INSERT INTO `route` VALUES ('93', '【厦门动车四天贵宾团】鼓浪屿 演武大桥观景台 沙坡尾“吃堡”美食 厦门大学 集美学村 南普陀 老院子民俗园', '1299', '欣赏极具参观价值、文化价值和艺术价值的旅游景点，深厚的地域特色，将闽南文化完美展现！', '2024-05-04', '0', 'img/product/small/m3afc3e64f7ad9d519511704c449558522.jpg', null, '10');
INSERT INTO `route` VALUES ('94', '【桂林赏樱·漫步阳朔油菜花】桂林阳朔高铁3天2晚半自由行套餐【含广州往返二等座高铁票+全程入住豪华型酒店+赠送价值75元南溪山樱花园门票一张】', '699', '含广州往返二等座高铁票，全程入住豪华型酒店，特别赠送价值75元南溪山樱花园门票一张！', '2024-05-04', '0', 'img/product/small/m347fb11112d9d1beca8eb05fa512f8ab5.jpg', null, '10');
INSERT INTO `route` VALUES ('95', '（春季）【玩遍江南&尊享希尔顿 华东五市 纯玩双飞六天 】灵山大佛 禅意拈花湾 双水乡乌镇+南浔', '2299', '超值换购：加1元换购价值280元的上海环球金融中心94层夜景和苏州七里山塘（含船）两大夜景，超值！', '2024-05-04', '0', 'img/product/small/m3d5d79457cd1f3c2b54a10994d7d9dc08.jpg', null, '10');
INSERT INTO `route` VALUES ('96', '【上海迪斯尼+杭州+无锡+乌镇 纯玩双飞四天】迪士尼烟火秀 船游浪漫西湖 无锡“鼋头渚”赏樱花 杭州太子湾公园赏郁金香 乌镇西栅', '2499', '【玩转迪士尼&夜宿乌镇】上海迪士尼乐园保证游玩一天，无锡鼋头渚樱花漫天，春日品江南、漫度好时光~', '2024-05-04', '0', 'img/product/small/m317098a81ebfb14cbf99231f2366ba904.png', null, '10');
INSERT INTO `route` VALUES ('97', '【爆款 客都梅州】梅州双飞3天2晚自由行套票【含广州直飞往返含税机票，南方航空往返，入住两晚梅州市区豪华精品酒店】', '399', '含广州直飞往返含税机票，南方航空往返，入住两晚梅州市区豪华精品酒店！', '2024-05-04', '0', '/img/route/03984c14-41cb-472f-872b-3ac16e4f9431.jpg', null, '10');
INSERT INTO `route` VALUES ('98', '【湖北宜昌+东湖樱花园+长江三峡+恩施大峡谷+维多利亚号豪华邮轮体验 单高单卧5天】女儿城 云龙河地缝 巴乡古寨特色“摔碗酒”篝火晚会 恩施土司城【贵宾团】', '2199', '安排维多利亚豪华游轮，住涉邮轮标双一晚。沿途观赏长江三峡“巫峡十二峰”等美景；到中国最大的樱花园—东湖磨山樱花，5000株樱花竞吐芬芳！', '2024-05-04', '0', 'img/product/small/m384d4636d5e230082ce3f8ab56541171e.jpg', null, '11');
INSERT INTO `route` VALUES ('99', '【华东五市+乌镇西栅 双飞6天 纯玩】杭州西湖 西溪湿地 上海外滩 太湖 G20新杭城【冬游江南&夜宿乌镇 金马自营】', '1899', '全程纯玩无购物，只收20人，全陪陪伴玩遍江南！品味舌尖江南！无锡三白宴、杭州御茶宴、乌镇水乡特色风味宴！', '2024-05-04', '0', '/img/route/9b0f5e34-e752-42b1-b4d1-2e8cc64445ed.jpeg', '4', '3');
INSERT INTO `route` VALUES ('100', '【甘肃敦煌+张掖+兰州+莫高窟+鸣沙山+嘉峪关单高铁单卧6天】西域豪情 重走河西走廊', '2799', '寻访敦煌“东方艺术宝地”莫高窟，沙漠奇观—鸣沙山；天下沙漠第一泉月牙泉；登临明万里长城西止点、戈壁幻海--嘉峪关！', '2024-05-04', '0', '/img/route/7ebc5c37-7dae-4047-9284-41e13c0c5065.jpeg', '7', '5');
INSERT INTO `route` VALUES ('101', '【越南南北越联游 双动双飞6天】越南岘港 美溪海滩 会安 船游下龙湾 山 首都河内', '1599', '海：越南特色红木游船畅游下龙湾；陆：动车往返安全准时；空：越南境内安排双飞实现南北越联游！特别安排岘港一天自由活动!', '2024-05-04', '0', '/img/route/3f4098f1-23bc-4c90-ad48-941739dfd34c.jpeg', '16', '7');

-- ----------------------------
-- Table structure for route_img
-- ----------------------------
DROP TABLE IF EXISTS `route_img`;
CREATE TABLE `route_img` (
  `rg_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `bigPic` varchar(200) NOT NULL,
  `smallPic` varchar(200) DEFAULT '',
  PRIMARY KEY (`rg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route_img
-- ----------------------------
INSERT INTO `route_img` VALUES ('1', '1', 'img/product/size4/m421d66d4446940b1c80a0092c91e75184.jpg', 'img/product/size2/m221d66d4446940b1c80a0092c91e75184.jpg');
INSERT INTO `route_img` VALUES ('2', '1', 'img/product/size4/m4227f0cde1b021a77c56c1c18a8f2e7fd.jpg', 'img/product/size2/m2227f0cde1b021a77c56c1c18a8f2e7fd.jpg');
INSERT INTO `route_img` VALUES ('3', '1', 'img/product/size4/m412cf97538027a813a4fb0bd6980a7fea.jpg', 'img/product/size2/m212cf97538027a813a4fb0bd6980a7fea.jpg');
INSERT INTO `route_img` VALUES ('4', '1', 'img/product/size4/m47fe3031a3df75ab5e6711ae2338c18f7.jpg', 'img/product/size2/m27fe3031a3df75ab5e6711ae2338c18f7.jpg');
INSERT INTO `route_img` VALUES ('5', '2', 'img/product/size4/m44866f055de8630e94e25c40f277a79ba.jpg', 'img/product/size2/m24866f055de8630e94e25c40f277a79ba.jpg');
INSERT INTO `route_img` VALUES ('6', '3', 'img/product/size4/m4db4d2277b5df3d98597f79082ef92d6d.jpg', 'img/product/size2/m2db4d2277b5df3d98597f79082ef92d6d.jpg');
INSERT INTO `route_img` VALUES ('7', '4', 'img/product/size4/m4d91ef60e0c7fdeee97a4e2d3e5a42e84.jpg', 'img/product/size2/m2d91ef60e0c7fdeee97a4e2d3e5a42e84.jpg');
INSERT INTO `route_img` VALUES ('8', '5', 'img/product/size4/m4ac1aa10b493b4b22221e19ba39f7e6a1.jpg', 'img/product/size2/m2ac1aa10b493b4b22221e19ba39f7e6a1.jpg');
INSERT INTO `route_img` VALUES ('9', '5', 'img/product/size4/m4a3f85cf3b49c183ea3cc5cd4b0424532.jpg', 'img/product/size2/m2a3f85cf3b49c183ea3cc5cd4b0424532.jpg');
INSERT INTO `route_img` VALUES ('10', '5', 'img/product/size4/m41a8a1be2a84a99147278e5cf8ed432d0.jpg', 'img/product/size2/m21a8a1be2a84a99147278e5cf8ed432d0.jpg');
INSERT INTO `route_img` VALUES ('11', '5', 'img/product/size4/m40c291dba8e45063fbfcecea64b3e873f.jpg', 'img/product/size2/m20c291dba8e45063fbfcecea64b3e873f.jpg');
INSERT INTO `route_img` VALUES ('12', '6', 'img/product/size4/m412cf97538027a813a4fb0bd6980a7fea.jpg', 'img/product/size2/m212cf97538027a813a4fb0bd6980a7fea.jpg');
INSERT INTO `route_img` VALUES ('13', '6', 'img/product/size4/m404b69a4c8328f7d6b8d5dadef020fe07.jpg', 'img/product/size2/m204b69a4c8328f7d6b8d5dadef020fe07.jpg');
INSERT INTO `route_img` VALUES ('14', '6', 'img/product/size4/m4b0c7f8ed9ff7ec21d7c9f88da639f29d.jpg', 'img/product/size2/m2b0c7f8ed9ff7ec21d7c9f88da639f29d.jpg');
INSERT INTO `route_img` VALUES ('15', '6', 'img/product/size4/m470c5066e87b574c1c3faef60243053a3.jpg', 'img/product/size2/m270c5066e87b574c1c3faef60243053a3.jpg');
INSERT INTO `route_img` VALUES ('16', '7', 'img/product/size4/m470365f2ea91b638695218a6df13e3819.jpg', 'img/product/size2/m270365f2ea91b638695218a6df13e3819.jpg');
INSERT INTO `route_img` VALUES ('17', '7', 'img/product/size4/m40971b3d22ab37242636088780cfb8eb5.jpg', 'img/product/size2/m20971b3d22ab37242636088780cfb8eb5.jpg');
INSERT INTO `route_img` VALUES ('18', '7', 'img/product/size4/m49f5c81e544230b89c9115c98a9c69d55.jpg', 'img/product/size2/m29f5c81e544230b89c9115c98a9c69d55.jpg');
INSERT INTO `route_img` VALUES ('19', '7', 'img/product/size4/30e3d193d2c28770e9bd5aadd4d4f473.jpg', 'img/product/size2/m230e3d193d2c28770e9bd5aadd4d4f473.jpg');
INSERT INTO `route_img` VALUES ('20', '7', 'img/product/size4/m407dfe2072837d106371e75ad134df7ff.jpg', 'img/product/size2/m207dfe2072837d106371e75ad134df7ff.jpg');
INSERT INTO `route_img` VALUES ('21', '8', 'img/product/size4/m470365f2ea91b638695218a6df13e3819.jpg', 'img/product/size2/m270365f2ea91b638695218a6df13e3819.jpg');
INSERT INTO `route_img` VALUES ('22', '8', 'img/product/size4/m486b0e214cac64a12e1930cfb201e6333.jpg', 'img/product/size2/m286b0e214cac64a12e1930cfb201e6333.jpg');
INSERT INTO `route_img` VALUES ('23', '8', 'img/product/size4/m40971b3d22ab37242636088780cfb8eb5.jpg', 'img/product/size2/m20971b3d22ab37242636088780cfb8eb5.jpg');
INSERT INTO `route_img` VALUES ('24', '8', 'img/product/size4/m407dfe2072837d106371e75ad134df7ff.jpg', 'img/product/size2/m207dfe2072837d106371e75ad134df7ff.jpg');
INSERT INTO `route_img` VALUES ('25', '9', 'img/product/size4/m45c17b5b73d618bbdd2abe231f1307838.jpg', 'img/product/size2/m25c17b5b73d618bbdd2abe231f1307838.jpg');
INSERT INTO `route_img` VALUES ('26', '9', 'img/product/size4/m44eea54c83a3d8fd60292587019dbcabe.jpg', 'img/product/size2/m24eea54c83a3d8fd60292587019dbcabe.jpg');
INSERT INTO `route_img` VALUES ('27', '9', 'img/product/size4/m45c4df861ce9e612314a1eb5ac7e6a51d.jpg', 'img/product/size2/m25c4df861ce9e612314a1eb5ac7e6a51d.jpg');
INSERT INTO `route_img` VALUES ('28', '9', 'img/product/size4/m4326bd67f479df1078731770a42701203.jpg', 'img/product/size2/m2326bd67f479df1078731770a42701203.jpg');
INSERT INTO `route_img` VALUES ('29', '10', 'img/product/size4/3adc11d2765807c38f4ddfc5e2ee31fc.jpg', 'img/product/size2/m23adc11d2765807c38f4ddfc5e2ee31fc.jpg');
INSERT INTO `route_img` VALUES ('30', '10', 'img/product/size4/7e7d96dcf1052c4cb7b749703784fd42.jpg', 'img/product/size2/m27e7d96dcf1052c4cb7b749703784fd42.jpg');
INSERT INTO `route_img` VALUES ('31', '10', 'img/product/size4/m402caec5f3f80f1fc8122b6aeed2b0a16.jpg', 'img/product/size2/m202caec5f3f80f1fc8122b6aeed2b0a16.jpg');
INSERT INTO `route_img` VALUES ('32', '10', 'img/product/size4/m4c9823bc50368af0fe83eff14a5587c0a.jpg', 'img/product/size2/m2c9823bc50368af0fe83eff14a5587c0a.jpg');
INSERT INTO `route_img` VALUES ('33', '10', 'img/product/size4/m4e58cd1b85e778b6f57a3745037704b35.jpg', 'img/product/size2/m2e58cd1b85e778b6f57a3745037704b35.jpg');
INSERT INTO `route_img` VALUES ('34', '11', 'img/product/size4/m4d76a0028afabf41b371d596004709031.jpg', 'img/product/size2/m2d76a0028afabf41b371d596004709031.jpg');
INSERT INTO `route_img` VALUES ('35', '11', 'img/product/size4/m4c9823bc50368af0fe83eff14a5587c0a.jpg', 'img/product/size2/m2c9823bc50368af0fe83eff14a5587c0a.jpg');
INSERT INTO `route_img` VALUES ('36', '11', 'img/product/size4/m4e2bca5a2135d82d87406d4c997ab21a0.jpg', 'img/product/size2/m2e2bca5a2135d82d87406d4c997ab21a0.jpg');
INSERT INTO `route_img` VALUES ('37', '11', 'img/product/size4/m4a1c3be962560ab5e4bc39146f4749973.jpg', 'img/product/size2/m2a1c3be962560ab5e4bc39146f4749973.jpg');
INSERT INTO `route_img` VALUES ('38', '12', 'img/product/size4/m42bdf1849b307712c4a0843b89ed83b5f.jpg', 'img/product/size2/m22bdf1849b307712c4a0843b89ed83b5f.jpg');
INSERT INTO `route_img` VALUES ('39', '12', 'img/product/size4/m4f535b6065c0085e6e69d1df7337bc60c.jpg', 'img/product/size2/m2f535b6065c0085e6e69d1df7337bc60c.jpg');
INSERT INTO `route_img` VALUES ('40', '12', 'img/product/size4/m4d4e24bd288c8b9ecbd81d20dbf9fe5bc.jpg', 'img/product/size2/m2d4e24bd288c8b9ecbd81d20dbf9fe5bc.jpg');
INSERT INTO `route_img` VALUES ('41', '12', 'img/product/size4/m4285ab2afad8d9c78aa6f37895597a795.jpg', 'img/product/size2/m2285ab2afad8d9c78aa6f37895597a795.jpg');
INSERT INTO `route_img` VALUES ('42', '13', 'img/product/size4/m4f535b6065c0085e6e69d1df7337bc60c.jpg', 'img/product/size2/m2f535b6065c0085e6e69d1df7337bc60c.jpg');
INSERT INTO `route_img` VALUES ('43', '13', 'img/product/size4/m4d4e24bd288c8b9ecbd81d20dbf9fe5bc.jpg', 'img/product/size2/m2d4e24bd288c8b9ecbd81d20dbf9fe5bc.jpg');
INSERT INTO `route_img` VALUES ('44', '13', 'img/product/size4/m40055cde93431912b5a767eb0b4d2f769.jpg', 'img/product/size2/m20055cde93431912b5a767eb0b4d2f769.jpg');
INSERT INTO `route_img` VALUES ('45', '13', 'img/product/size4/m4958e1b9c2b8b43da1c3440b71155dc7d.jpg', 'img/product/size2/m2958e1b9c2b8b43da1c3440b71155dc7d.jpg');
INSERT INTO `route_img` VALUES ('46', '14', 'img/product/size4/d62aa9f19c84f99a8b700f12824b195b.jpg', 'img/product/size2/m2d62aa9f19c84f99a8b700f12824b195b.jpg');
INSERT INTO `route_img` VALUES ('47', '14', 'img/product/size4/m4d25620958f486c463412f437a5d5fd0a.jpg', 'img/product/size2/m2d25620958f486c463412f437a5d5fd0a.jpg');
INSERT INTO `route_img` VALUES ('48', '14', 'img/product/size4/m4b452e26d476d3c6322cc5d10af088e21.jpg', 'img/product/size2/m2b452e26d476d3c6322cc5d10af088e21.jpg');
INSERT INTO `route_img` VALUES ('49', '14', 'img/product/size4/m46abd52cb8e0a8dfae8f19ca0f1f5c193.jpg', 'img/product/size2/m26abd52cb8e0a8dfae8f19ca0f1f5c193.jpg');
INSERT INTO `route_img` VALUES ('50', '15', 'img/product/size4/m45b7321df30ac79f995200ec4a2fa2202.jpg', 'img/product/size2/m25b7321df30ac79f995200ec4a2fa2202.jpg');
INSERT INTO `route_img` VALUES ('51', '15', 'img/product/size4/m461767acd0d3c1379f51c3aeec34271e5.jpg', 'img/product/size2/m261767acd0d3c1379f51c3aeec34271e5.jpg');
INSERT INTO `route_img` VALUES ('52', '15', 'img/product/size4/m4b73ad0712746ef03019e34fb9757401d.jpg', 'img/product/size2/m2b73ad0712746ef03019e34fb9757401d.jpg');
INSERT INTO `route_img` VALUES ('53', '15', 'img/product/size4/m40cf507a9d5018c62a6eba80dda6d9dee.jpg', 'img/product/size2/m20cf507a9d5018c62a6eba80dda6d9dee.jpg');
INSERT INTO `route_img` VALUES ('54', '16', 'img/product/size4/m491ef27749fd523c757403de0a5d033d5.jpg', 'img/product/size2/m291ef27749fd523c757403de0a5d033d5.jpg');
INSERT INTO `route_img` VALUES ('55', '16', 'img/product/size4/m47e9d416ccd26ac920f2f8073cf680011.jpg', 'img/product/size2/m27e9d416ccd26ac920f2f8073cf680011.jpg');
INSERT INTO `route_img` VALUES ('56', '16', 'img/product/size4/m4335c21520ae161be10e69abc0e7bd36e.jpg', 'img/product/size2/m2335c21520ae161be10e69abc0e7bd36e.jpg');
INSERT INTO `route_img` VALUES ('57', '16', 'img/product/size4/m47a2af301a56ba722ffae8ae2a666e263.jpg', 'img/product/size2/m27a2af301a56ba722ffae8ae2a666e263.jpg');
INSERT INTO `route_img` VALUES ('58', '17', 'img/product/size4/m4540ae74a316311404126b408ed03d731.jpg', 'img/product/size2/m2540ae74a316311404126b408ed03d731.jpg');
INSERT INTO `route_img` VALUES ('59', '17', 'img/product/size4/m405399d357e100b320664bd4d99b0a381.jpg', 'img/product/size2/m205399d357e100b320664bd4d99b0a381.jpg');
INSERT INTO `route_img` VALUES ('60', '17', 'img/product/size4/m4ab024d539778cfee109fddf4e08a31fd.jpg', 'img/product/size2/m2ab024d539778cfee109fddf4e08a31fd.jpg');
INSERT INTO `route_img` VALUES ('61', '17', 'img/product/size4/m418d363b3ad3d3bf0308318d012f338a1.jpg', 'img/product/size2/m218d363b3ad3d3bf0308318d012f338a1.jpg');
INSERT INTO `route_img` VALUES ('62', '18', 'img/product/size4/m4bc92ed09dc80f91641ea195983bf1284.jpg', 'img/product/size2/m2bc92ed09dc80f91641ea195983bf1284.jpg');
INSERT INTO `route_img` VALUES ('63', '18', 'img/product/size4/m41ab5068b200aa3a61ac91e0729e65e53.jpg', 'img/product/size2/m21ab5068b200aa3a61ac91e0729e65e53.jpg');
INSERT INTO `route_img` VALUES ('64', '18', 'img/product/size4/m46b8f86372e7b6264c01641e9c0c48815.jpg', 'img/product/size2/m26b8f86372e7b6264c01641e9c0c48815.jpg');
INSERT INTO `route_img` VALUES ('65', '18', 'img/product/size4/m4a579364858089195e32fdded77adbba9.jpg', 'img/product/size2/m2a579364858089195e32fdded77adbba9.jpg');
INSERT INTO `route_img` VALUES ('66', '19', 'img/product/size4/m4d69b0ea3165d04302cc068ac14192bd1.jpg', 'img/product/size2/m2d69b0ea3165d04302cc068ac14192bd1.jpg');
INSERT INTO `route_img` VALUES ('67', '19', 'img/product/size4/m46252f2b0cae07557907bdd8482f6b4c7.jpg', 'img/product/size2/m26252f2b0cae07557907bdd8482f6b4c7.jpg');
INSERT INTO `route_img` VALUES ('68', '19', 'img/product/size4/m4220493598a144aceec2e7c6ed8f69c2e.jpg', 'img/product/size2/m2220493598a144aceec2e7c6ed8f69c2e.jpg');
INSERT INTO `route_img` VALUES ('69', '19', 'img/product/size4/m40aae1ff572409c9082aff495dcaaa54a.jpg', 'img/product/size2/m20aae1ff572409c9082aff495dcaaa54a.jpg');
INSERT INTO `route_img` VALUES ('70', '20', 'img/product/size4/m40e5efc21e11e76fbf0e75da4b7b9d97e.jpg', 'img/product/size2/m20e5efc21e11e76fbf0e75da4b7b9d97e.jpg');
INSERT INTO `route_img` VALUES ('71', '20', 'img/product/size4/m450e663b078d59efddad611d2d1bc9854.jpg', 'img/product/size2/m250e663b078d59efddad611d2d1bc9854.jpg');
INSERT INTO `route_img` VALUES ('72', '20', 'img/product/size4/m45474ad3239b0dd60df7a94f92f4e7bf1.jpg', 'img/product/size2/m25474ad3239b0dd60df7a94f92f4e7bf1.jpg');
INSERT INTO `route_img` VALUES ('73', '20', 'img/product/size4/m4e58cd1b85e778b6f57a3745037704b35.jpg', 'img/product/size2/m2e58cd1b85e778b6f57a3745037704b35.jpg');
INSERT INTO `route_img` VALUES ('74', '21', 'img/product/size4/m40e5efc21e11e76fbf0e75da4b7b9d97e.jpg', 'img/product/size2/m20e5efc21e11e76fbf0e75da4b7b9d97e.jpg');
INSERT INTO `route_img` VALUES ('75', '21', 'img/product/size4/m450e663b078d59efddad611d2d1bc9854.jpg', 'img/product/size2/m250e663b078d59efddad611d2d1bc9854.jpg');
INSERT INTO `route_img` VALUES ('76', '21', 'img/product/size4/m4e58cd1b85e778b6f57a3745037704b35.jpg', 'img/product/size2/m2e58cd1b85e778b6f57a3745037704b35.jpg');
INSERT INTO `route_img` VALUES ('77', '21', 'img/product/size4/m45474ad3239b0dd60df7a94f92f4e7bf1.jpg', 'img/product/size2/m25474ad3239b0dd60df7a94f92f4e7bf1.jpg');
INSERT INTO `route_img` VALUES ('78', '22', 'img/product/size4/m4e58cd1b85e778b6f57a3745037704b35.jpg', 'img/product/size2/m2e58cd1b85e778b6f57a3745037704b35.jpg');
INSERT INTO `route_img` VALUES ('79', '22', 'img/product/size4/m45474ad3239b0dd60df7a94f92f4e7bf1.jpg', 'img/product/size2/m25474ad3239b0dd60df7a94f92f4e7bf1.jpg');
INSERT INTO `route_img` VALUES ('80', '22', 'img/product/size4/m4501326413840ce82b9ba14db3a3a5eea.jpg', 'img/product/size2/m2501326413840ce82b9ba14db3a3a5eea.jpg');
INSERT INTO `route_img` VALUES ('81', '22', 'img/product/size4/m4e2bca5a2135d82d87406d4c997ab21a0.jpg', 'img/product/size2/m2e2bca5a2135d82d87406d4c997ab21a0.jpg');
INSERT INTO `route_img` VALUES ('82', '23', 'img/product/size4/5b95dd85d2fe9fe53f743e618f67d891.jpg', 'img/product/size2/m25b95dd85d2fe9fe53f743e618f67d891.jpg');
INSERT INTO `route_img` VALUES ('83', '23', 'img/product/size4/5b214cac251e1ae9f68a12c2a1f36112.jpg', 'img/product/size2/m25b214cac251e1ae9f68a12c2a1f36112.jpg');
INSERT INTO `route_img` VALUES ('84', '23', 'img/product/size4/m45e4549cdf1b96bef888ef3fb4270bb21.jpg', 'img/product/size2/m25e4549cdf1b96bef888ef3fb4270bb21.jpg');
INSERT INTO `route_img` VALUES ('85', '23', 'img/product/size4/m48232a6e4e062af0e628523bcf8ed7125.jpg', 'img/product/size2/m28232a6e4e062af0e628523bcf8ed7125.jpg');
INSERT INTO `route_img` VALUES ('86', '24', 'img/product/size4/m4ce75dde0868132a5b0e2b303b9e5dd0c.jpg', 'img/product/size2/m2ce75dde0868132a5b0e2b303b9e5dd0c.jpg');
INSERT INTO `route_img` VALUES ('87', '24', 'img/product/size4/m4656f02f1a15798b571d8c9a30a7c7d11.jpg', 'img/product/size2/m2656f02f1a15798b571d8c9a30a7c7d11.jpg');
INSERT INTO `route_img` VALUES ('88', '24', 'img/product/size4/m4f0cfa8e71eeab4c1ed27d3516222323a.jpg', 'img/product/size2/m2f0cfa8e71eeab4c1ed27d3516222323a.jpg');
INSERT INTO `route_img` VALUES ('89', '24', 'img/product/size4/m48232a6e4e062af0e628523bcf8ed7125.jpg', 'img/product/size2/m28232a6e4e062af0e628523bcf8ed7125.jpg');
INSERT INTO `route_img` VALUES ('90', '25', 'img/product/size4/m414549366a107832bbe32fe3bd10ee721.jpg', 'img/product/size2/m214549366a107832bbe32fe3bd10ee721.jpg');
INSERT INTO `route_img` VALUES ('91', '25', 'img/product/size4/m479570c015cfce5df6f5c04f964e6e1fa.jpg', 'img/product/size2/m279570c015cfce5df6f5c04f964e6e1fa.jpg');
INSERT INTO `route_img` VALUES ('92', '25', 'img/product/size4/m4fb30aa13253ab3bb2c906660c06c0771.jpg', 'img/product/size2/m2fb30aa13253ab3bb2c906660c06c0771.jpg');
INSERT INTO `route_img` VALUES ('93', '25', 'img/product/size4/m4b24609106b696fe291840ed0e24a4fb7.jpg', 'img/product/size2/m2b24609106b696fe291840ed0e24a4fb7.jpg');
INSERT INTO `route_img` VALUES ('94', '25', 'img/product/size4/m40971b3d22ab37242636088780cfb8eb5.jpg', 'img/product/size2/m20971b3d22ab37242636088780cfb8eb5.jpg');
INSERT INTO `route_img` VALUES ('95', '26', 'img/product/size4/m4606a5822815d9079cb2182d0930e483b.jpg', 'img/product/size2/m2606a5822815d9079cb2182d0930e483b.jpg');
INSERT INTO `route_img` VALUES ('96', '26', 'img/product/size4/m46e4a93743a0d22a76d89c6b99efa23a1.jpg', 'img/product/size2/m26e4a93743a0d22a76d89c6b99efa23a1.jpg');
INSERT INTO `route_img` VALUES ('97', '26', 'img/product/size4/m4d8e823f3517dcfcb6bc7e041eb4c6ab2.jpg', 'img/product/size2/m2d8e823f3517dcfcb6bc7e041eb4c6ab2.jpg');
INSERT INTO `route_img` VALUES ('98', '26', 'img/product/size4/m459be5cdd9c93127889c0e4a01aa3151f.jpg', 'img/product/size2/m259be5cdd9c93127889c0e4a01aa3151f.jpg');
INSERT INTO `route_img` VALUES ('99', '27', 'img/product/size4/m41a859d88bf2940f2540bf4ce93545eea.jpg', 'img/product/size2/m21a859d88bf2940f2540bf4ce93545eea.jpg');
INSERT INTO `route_img` VALUES ('100', '27', 'img/product/size4/m4ef702190f1c51354db5b9e754573428b.jpg', 'img/product/size2/m2ef702190f1c51354db5b9e754573428b.jpg');
INSERT INTO `route_img` VALUES ('101', '27', 'img/product/size4/m4893589aa9911e29e85df2f0e13569406.jpg', 'img/product/size2/m2893589aa9911e29e85df2f0e13569406.jpg');
INSERT INTO `route_img` VALUES ('102', '27', 'img/product/size4/m4709aa05d3efb7e9a1be5ffa6560f18c0.jpg', 'img/product/size2/m2709aa05d3efb7e9a1be5ffa6560f18c0.jpg');
INSERT INTO `route_img` VALUES ('103', '28', 'img/product/size4/m41baca2c10aeda9fbb13bc14e0411a9ec.jpg', 'img/product/size2/m21baca2c10aeda9fbb13bc14e0411a9ec.jpg');
INSERT INTO `route_img` VALUES ('104', '28', 'img/product/size4/m4420d7f66c7aec9d0cf5c2654aa973f8c.jpg', 'img/product/size2/m2420d7f66c7aec9d0cf5c2654aa973f8c.jpg');
INSERT INTO `route_img` VALUES ('105', '28', 'img/product/size4/m4084767bd581b81be5170a5f562f8e1c7.jpg', 'img/product/size2/m2084767bd581b81be5170a5f562f8e1c7.jpg');
INSERT INTO `route_img` VALUES ('106', '28', 'img/product/size4/m41ce39524c56ba38c2833529f34d205fb.jpg', 'img/product/size2/m21ce39524c56ba38c2833529f34d205fb.jpg');
INSERT INTO `route_img` VALUES ('107', '29', 'img/product/size4/m4893589aa9911e29e85df2f0e13569406.jpg', 'img/product/size2/m2893589aa9911e29e85df2f0e13569406.jpg');
INSERT INTO `route_img` VALUES ('108', '29', 'img/product/size4/m4884fe7f47d6ea05bc3bfd1b96e920f26.jpg', 'img/product/size2/m2884fe7f47d6ea05bc3bfd1b96e920f26.jpg');
INSERT INTO `route_img` VALUES ('109', '29', 'img/product/size4/m4ef702190f1c51354db5b9e754573428b.jpg', 'img/product/size2/m2ef702190f1c51354db5b9e754573428b.jpg');
INSERT INTO `route_img` VALUES ('110', '29', 'img/product/size4/m4cfa8355222bddde5a05ce589a602079f.jpg', 'img/product/size2/m2cfa8355222bddde5a05ce589a602079f.jpg');
INSERT INTO `route_img` VALUES ('111', '30', 'img/product/size4/m49428c374b8f8debe994cfbff6de4a3db.jpg', 'img/product/size2/m29428c374b8f8debe994cfbff6de4a3db.jpg');
INSERT INTO `route_img` VALUES ('112', '30', 'img/product/size4/m424c5af15cf5e02bdf68873e4d485a182.jpg', 'img/product/size2/m224c5af15cf5e02bdf68873e4d485a182.jpg');
INSERT INTO `route_img` VALUES ('113', '30', 'img/product/size4/m449baf8219aca81648fa94e66ca09014e.jpg', 'img/product/size2/m249baf8219aca81648fa94e66ca09014e.jpg');
INSERT INTO `route_img` VALUES ('114', '30', 'img/product/size4/m43a4a9104d68e57ab9e0b0fbbc624a156.jpg', 'img/product/size2/m23a4a9104d68e57ab9e0b0fbbc624a156.jpg');
INSERT INTO `route_img` VALUES ('115', '30', 'img/product/size4/m4c8c538f186ae63fed44460e32441bb74.jpg', 'img/product/size2/m2c8c538f186ae63fed44460e32441bb74.jpg');
INSERT INTO `route_img` VALUES ('116', '31', 'img/product/size4/ff685ee57ff012eeb172c18df7795db7.jpg', 'img/product/size2/m2ff685ee57ff012eeb172c18df7795db7.jpg');
INSERT INTO `route_img` VALUES ('117', '31', 'img/product/size4/56f0e4ffc7466ae2406730b8424d7c64.jpg', 'img/product/size2/m256f0e4ffc7466ae2406730b8424d7c64.jpg');
INSERT INTO `route_img` VALUES ('118', '31', 'img/product/size4/m424c5af15cf5e02bdf68873e4d485a182.jpg', 'img/product/size2/m224c5af15cf5e02bdf68873e4d485a182.jpg');
INSERT INTO `route_img` VALUES ('119', '31', 'img/product/size4/m449baf8219aca81648fa94e66ca09014e.jpg', 'img/product/size2/m249baf8219aca81648fa94e66ca09014e.jpg');
INSERT INTO `route_img` VALUES ('120', '31', 'img/product/size4/m46e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', 'img/product/size2/m26e65da7aaabb0e8e29ddd56f9f79cbe8.jpg');
INSERT INTO `route_img` VALUES ('121', '31', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('122', '31', 'img/product/size4/m4c8c538f186ae63fed44460e32441bb74.jpg', 'img/product/size2/m2c8c538f186ae63fed44460e32441bb74.jpg');
INSERT INTO `route_img` VALUES ('123', '32', 'img/product/size4/m4465e6dbdbd77e48ef66862436c36d0a3.jpg', 'img/product/size2/m2465e6dbdbd77e48ef66862436c36d0a3.jpg');
INSERT INTO `route_img` VALUES ('124', '32', 'img/product/size4/m4a1aac6664bcc6ee35469307ccb148fc8.jpg', 'img/product/size2/m2a1aac6664bcc6ee35469307ccb148fc8.jpg');
INSERT INTO `route_img` VALUES ('125', '32', 'img/product/size4/m4bcaf13c4b287a473b5999eff8f887d95.jpg', 'img/product/size2/m2bcaf13c4b287a473b5999eff8f887d95.jpg');
INSERT INTO `route_img` VALUES ('126', '32', 'img/product/size4/m49428c374b8f8debe994cfbff6de4a3db.jpg', 'img/product/size2/m29428c374b8f8debe994cfbff6de4a3db.jpg');
INSERT INTO `route_img` VALUES ('127', '33', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('128', '33', 'img/product/size4/m43a4a9104d68e57ab9e0b0fbbc624a156.jpg', 'img/product/size2/m23a4a9104d68e57ab9e0b0fbbc624a156.jpg');
INSERT INTO `route_img` VALUES ('129', '33', 'img/product/size4/m4220493598a144aceec2e7c6ed8f69c2e.jpg', 'img/product/size2/m2220493598a144aceec2e7c6ed8f69c2e.jpg');
INSERT INTO `route_img` VALUES ('130', '33', 'img/product/size4/m4d07a3e37145d623e59f4e4e33544ce2f.jpg', 'img/product/size2/m2d07a3e37145d623e59f4e4e33544ce2f.jpg');
INSERT INTO `route_img` VALUES ('131', '34', 'img/product/size4/m4d97f3c41f82329b7a45e67e9de2c96ca.jpg', 'img/product/size2/m2d97f3c41f82329b7a45e67e9de2c96ca.jpg');
INSERT INTO `route_img` VALUES ('132', '34', 'img/product/size4/m4774d9019ce8f65e7823859891353d31e.jpg', 'img/product/size2/m2774d9019ce8f65e7823859891353d31e.jpg');
INSERT INTO `route_img` VALUES ('133', '34', 'img/product/size4/m44a3bd4d04ba909d08a02d9ea30c6235d.jpg', 'img/product/size2/m24a3bd4d04ba909d08a02d9ea30c6235d.jpg');
INSERT INTO `route_img` VALUES ('134', '34', 'img/product/size4/m44dd570b4f897d6a3196e66ad00b37f77.jpg', 'img/product/size2/m24dd570b4f897d6a3196e66ad00b37f77.jpg');
INSERT INTO `route_img` VALUES ('135', '35', 'img/product/size4/m4b350a4abe82f0a7d0fd2897ce7d59ae5.jpg', 'img/product/size2/m2b350a4abe82f0a7d0fd2897ce7d59ae5.jpg');
INSERT INTO `route_img` VALUES ('136', '35', 'img/product/size4/m47a2af301a56ba722ffae8ae2a666e263.jpg', 'img/product/size2/m27a2af301a56ba722ffae8ae2a666e263.jpg');
INSERT INTO `route_img` VALUES ('137', '35', 'img/product/size4/m4b43446c904abce430c968d003aece6a8.jpg', 'img/product/size2/m2b43446c904abce430c968d003aece6a8.jpg');
INSERT INTO `route_img` VALUES ('138', '35', 'img/product/size4/m491ef27749fd523c757403de0a5d033d5.jpg', 'img/product/size2/m291ef27749fd523c757403de0a5d033d5.jpg');
INSERT INTO `route_img` VALUES ('139', '36', 'img/product/size4/m44dd570b4f897d6a3196e66ad00b37f77.jpg', 'img/product/size2/m24dd570b4f897d6a3196e66ad00b37f77.jpg');
INSERT INTO `route_img` VALUES ('140', '36', 'img/product/size4/m42d3dddcfc618e1a72a4233e581db79de.jpg', 'img/product/size2/m22d3dddcfc618e1a72a4233e581db79de.jpg');
INSERT INTO `route_img` VALUES ('141', '36', 'img/product/size4/m4dd1e6135a394edad9fcf4847c60bd6f5.jpg', 'img/product/size2/m2dd1e6135a394edad9fcf4847c60bd6f5.jpg');
INSERT INTO `route_img` VALUES ('142', '36', 'img/product/size4/m4d42586626fd35d31927926bb9d807f36.jpg', 'img/product/size2/m2d42586626fd35d31927926bb9d807f36.jpg');
INSERT INTO `route_img` VALUES ('143', '37', 'img/product/size4/m429417d0ce48c867d55038ab39779fef3.jpg', 'img/product/size2/m229417d0ce48c867d55038ab39779fef3.jpg');
INSERT INTO `route_img` VALUES ('144', '37', 'img/product/size4/m4a6e5b5ba8ef83b3057c1ac58cb0a51a9.jpg', 'img/product/size2/m2a6e5b5ba8ef83b3057c1ac58cb0a51a9.jpg');
INSERT INTO `route_img` VALUES ('145', '37', 'img/product/size4/m454cecf003a06bc072d5f88a4f07a32da.jpg', 'img/product/size2/m254cecf003a06bc072d5f88a4f07a32da.jpg');
INSERT INTO `route_img` VALUES ('146', '37', 'img/product/size4/m43a6ab4a9324cac4edccee3622ce49a61.jpg', 'img/product/size2/m23a6ab4a9324cac4edccee3622ce49a61.jpg');
INSERT INTO `route_img` VALUES ('147', '38', 'img/product/size4/m47e6079026b2f5357598dee8bb2c1772a.jpg', 'img/product/size2/m27e6079026b2f5357598dee8bb2c1772a.jpg');
INSERT INTO `route_img` VALUES ('148', '38', 'img/product/size4/m47165675a4c083a54972035afd10f6066.jpg', 'img/product/size2/m27165675a4c083a54972035afd10f6066.jpg');
INSERT INTO `route_img` VALUES ('149', '38', 'img/product/size4/m48bb4bcb4d9610a756c655ccb881b8629.jpg', 'img/product/size2/m28bb4bcb4d9610a756c655ccb881b8629.jpg');
INSERT INTO `route_img` VALUES ('150', '38', 'img/product/size4/m42d5f7517d1f822788efbfc58ee0371a8.jpg', 'img/product/size2/m22d5f7517d1f822788efbfc58ee0371a8.jpg');
INSERT INTO `route_img` VALUES ('151', '39', 'img/product/size4/m4791748e3f2093699116c6bd3fd8a8752.jpg', 'img/product/size2/m2791748e3f2093699116c6bd3fd8a8752.jpg');
INSERT INTO `route_img` VALUES ('152', '39', 'img/product/size4/m4103c3a2a39bf72f9e7d63b769341dcdf.jpg', 'img/product/size2/m2103c3a2a39bf72f9e7d63b769341dcdf.jpg');
INSERT INTO `route_img` VALUES ('153', '39', 'img/product/size4/m4a90f31aab241b12d6e6782440d5bae19.jpg', 'img/product/size2/m2a90f31aab241b12d6e6782440d5bae19.jpg');
INSERT INTO `route_img` VALUES ('154', '39', 'img/product/size4/m4fbf284c91f951d6a5a071a3f02010669.jpg', 'img/product/size2/m2fbf284c91f951d6a5a071a3f02010669.jpg');
INSERT INTO `route_img` VALUES ('155', '40', 'img/product/size4/m47d8d151694fd4efe55f6fc82fff568b0.jpg', 'img/product/size2/m27d8d151694fd4efe55f6fc82fff568b0.jpg');
INSERT INTO `route_img` VALUES ('156', '40', 'img/product/size4/m41827c9b3257e86f5359a54da9e2cab2c.jpg', 'img/product/size2/m21827c9b3257e86f5359a54da9e2cab2c.jpg');
INSERT INTO `route_img` VALUES ('157', '40', 'img/product/size4/m4644acd7c62100dc4cbe9247a0a8d4efe.jpg', 'img/product/size2/m2644acd7c62100dc4cbe9247a0a8d4efe.jpg');
INSERT INTO `route_img` VALUES ('158', '40', 'img/product/size4/m49f7d21f616436e6d795e98a43c93f8fa.jpg', 'img/product/size2/m29f7d21f616436e6d795e98a43c93f8fa.jpg');
INSERT INTO `route_img` VALUES ('159', '41', 'img/product/size4/m44df74737b1cae0f6893d5b9895d4545b.jpg', 'img/product/size2/m24df74737b1cae0f6893d5b9895d4545b.jpg');
INSERT INTO `route_img` VALUES ('160', '41', 'img/product/size4/m4e5a38453ae434a21243962988d559a78.jpg', 'img/product/size2/m2e5a38453ae434a21243962988d559a78.jpg');
INSERT INTO `route_img` VALUES ('161', '41', 'img/product/size4/m4ca81e31ce4a93bb9350d968b55a9129e.jpg', 'img/product/size2/m2ca81e31ce4a93bb9350d968b55a9129e.jpg');
INSERT INTO `route_img` VALUES ('162', '41', 'img/product/size4/m4dd1e6135a394edad9fcf4847c60bd6f5.jpg', 'img/product/size2/m2dd1e6135a394edad9fcf4847c60bd6f5.jpg');
INSERT INTO `route_img` VALUES ('163', '42', 'img/product/size4/m470bd10ffb14a1c04694a0ab43e5f78f2.jpg', 'img/product/size2/m270bd10ffb14a1c04694a0ab43e5f78f2.jpg');
INSERT INTO `route_img` VALUES ('164', '42', 'img/product/size4/m4b2c6e8fa0e92882b9362c68dfa504324.jpg', 'img/product/size2/m2b2c6e8fa0e92882b9362c68dfa504324.jpg');
INSERT INTO `route_img` VALUES ('165', '42', 'img/product/size4/m46bc789f14c0c3c72b01d1c52fb4d786f.jpg', 'img/product/size2/m26bc789f14c0c3c72b01d1c52fb4d786f.jpg');
INSERT INTO `route_img` VALUES ('166', '42', 'img/product/size4/m44dd570b4f897d6a3196e66ad00b37f77.jpg', 'img/product/size2/m24dd570b4f897d6a3196e66ad00b37f77.jpg');
INSERT INTO `route_img` VALUES ('167', '43', 'img/product/size4/m4b2c6e8fa0e92882b9362c68dfa504324.jpg', 'img/product/size2/m2b2c6e8fa0e92882b9362c68dfa504324.jpg');
INSERT INTO `route_img` VALUES ('168', '43', 'img/product/size4/m46bc789f14c0c3c72b01d1c52fb4d786f.jpg', 'img/product/size2/m26bc789f14c0c3c72b01d1c52fb4d786f.jpg');
INSERT INTO `route_img` VALUES ('169', '43', 'img/product/size4/m44a3bd4d04ba909d08a02d9ea30c6235d.jpg', 'img/product/size2/m24a3bd4d04ba909d08a02d9ea30c6235d.jpg');
INSERT INTO `route_img` VALUES ('170', '43', 'img/product/size4/m4d97f3c41f82329b7a45e67e9de2c96ca.jpg', 'img/product/size2/m2d97f3c41f82329b7a45e67e9de2c96ca.jpg');
INSERT INTO `route_img` VALUES ('171', '44', 'img/product/size4/m47d2a736173cabdfff1f53827955cc926.jpg', 'img/product/size2/m27d2a736173cabdfff1f53827955cc926.jpg');
INSERT INTO `route_img` VALUES ('172', '44', 'img/product/size4/m4ae1f3a49daf6ff79871f6211d49e9c26.jpg', 'img/product/size2/m2ae1f3a49daf6ff79871f6211d49e9c26.jpg');
INSERT INTO `route_img` VALUES ('173', '44', 'img/product/size4/m44dd570b4f897d6a3196e66ad00b37f77.jpg', 'img/product/size2/m24dd570b4f897d6a3196e66ad00b37f77.jpg');
INSERT INTO `route_img` VALUES ('174', '44', 'img/product/size4/m4a91779e64adcd291562b59dd225639b7.jpg', 'img/product/size2/m2a91779e64adcd291562b59dd225639b7.jpg');
INSERT INTO `route_img` VALUES ('175', '45', 'img/product/size4/m4fa7b43b0cc93b78676a5cd9e5a32c309.jpg', 'img/product/size2/m2fa7b43b0cc93b78676a5cd9e5a32c309.jpg');
INSERT INTO `route_img` VALUES ('176', '45', 'img/product/size4/m46a742af132f219e1b228250400a141ab.jpg', 'img/product/size2/m26a742af132f219e1b228250400a141ab.jpg');
INSERT INTO `route_img` VALUES ('177', '45', 'img/product/size4/m4057f3fb8520c175e48b6a914d0d6e397.jpg', 'img/product/size2/m2057f3fb8520c175e48b6a914d0d6e397.jpg');
INSERT INTO `route_img` VALUES ('178', '45', 'img/product/size4/m45c17b5b73d618bbdd2abe231f1307838.jpg', 'img/product/size2/m25c17b5b73d618bbdd2abe231f1307838.jpg');
INSERT INTO `route_img` VALUES ('179', '46', 'img/product/size4/m4a92bdb8a11c5f83bdeddb8ee3abbd3fc.jpg', 'img/product/size2/m2a92bdb8a11c5f83bdeddb8ee3abbd3fc.jpg');
INSERT INTO `route_img` VALUES ('180', '46', 'img/product/size4/m427382ebdb3f1ac9bfb0c9def791a8ec2.jpg', 'img/product/size2/m227382ebdb3f1ac9bfb0c9def791a8ec2.jpg');
INSERT INTO `route_img` VALUES ('181', '46', 'img/product/size4/m4a078c7135fdefabc2018a594df95fbf2.jpg', 'img/product/size2/m2a078c7135fdefabc2018a594df95fbf2.jpg');
INSERT INTO `route_img` VALUES ('182', '46', 'img/product/size4/m4326bd67f479df1078731770a42701203.jpg', 'img/product/size2/m2326bd67f479df1078731770a42701203.jpg');
INSERT INTO `route_img` VALUES ('183', '47', 'img/product/size4/m4a078c7135fdefabc2018a594df95fbf2.jpg', 'img/product/size2/m2a078c7135fdefabc2018a594df95fbf2.jpg');
INSERT INTO `route_img` VALUES ('184', '47', 'img/product/size4/m427382ebdb3f1ac9bfb0c9def791a8ec2.jpg', 'img/product/size2/m227382ebdb3f1ac9bfb0c9def791a8ec2.jpg');
INSERT INTO `route_img` VALUES ('185', '47', 'img/product/size4/m4326bd67f479df1078731770a42701203.jpg', 'img/product/size2/m2326bd67f479df1078731770a42701203.jpg');
INSERT INTO `route_img` VALUES ('186', '47', 'img/product/size4/m45c17b5b73d618bbdd2abe231f1307838.jpg', 'img/product/size2/m25c17b5b73d618bbdd2abe231f1307838.jpg');
INSERT INTO `route_img` VALUES ('187', '48', 'img/product/size4/m4057f3fb8520c175e48b6a914d0d6e397.jpg', 'img/product/size2/m2057f3fb8520c175e48b6a914d0d6e397.jpg');
INSERT INTO `route_img` VALUES ('188', '48', 'img/product/size4/m46a742af132f219e1b228250400a141ab.jpg', 'img/product/size2/m26a742af132f219e1b228250400a141ab.jpg');
INSERT INTO `route_img` VALUES ('189', '48', 'img/product/size4/m4a078c7135fdefabc2018a594df95fbf2.jpg', 'img/product/size2/m2a078c7135fdefabc2018a594df95fbf2.jpg');
INSERT INTO `route_img` VALUES ('190', '48', 'img/product/size4/m427382ebdb3f1ac9bfb0c9def791a8ec2.jpg', 'img/product/size2/m227382ebdb3f1ac9bfb0c9def791a8ec2.jpg');
INSERT INTO `route_img` VALUES ('191', '49', 'img/product/size4/m4fbf284c91f951d6a5a071a3f02010669.jpg', 'img/product/size2/m2fbf284c91f951d6a5a071a3f02010669.jpg');
INSERT INTO `route_img` VALUES ('192', '49', 'img/product/size4/m4de51fe9d86478b06e9d7a0ea07268b2b.jpg', 'img/product/size2/m2de51fe9d86478b06e9d7a0ea07268b2b.jpg');
INSERT INTO `route_img` VALUES ('193', '49', 'img/product/size4/m4e88f714bad69d8bc25e6e42f5f998359.jpg', 'img/product/size2/m2e88f714bad69d8bc25e6e42f5f998359.jpg');
INSERT INTO `route_img` VALUES ('194', '49', 'img/product/size4/m42d5f7517d1f822788efbfc58ee0371a8.jpg', 'img/product/size2/m22d5f7517d1f822788efbfc58ee0371a8.jpg');
INSERT INTO `route_img` VALUES ('195', '50', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('196', '50', 'img/product/size4/m40ddd52fee24734f5b250eac436d0cc5e.jpg', 'img/product/size2/m20ddd52fee24734f5b250eac436d0cc5e.jpg');
INSERT INTO `route_img` VALUES ('197', '50', 'img/product/size4/m41beb6833a226867f4e9c4d9b1d3679ed.jpg', 'img/product/size2/m21beb6833a226867f4e9c4d9b1d3679ed.jpg');
INSERT INTO `route_img` VALUES ('198', '50', 'img/product/size4/m4f63293f0e3053ca7f6ad4c8a346e21ab.jpg', 'img/product/size2/m2f63293f0e3053ca7f6ad4c8a346e21ab.jpg');
INSERT INTO `route_img` VALUES ('199', '51', 'img/product/size4/m4bb18f384ee1b086e647500183d39c277.jpg', 'img/product/size2/m2bb18f384ee1b086e647500183d39c277.jpg');
INSERT INTO `route_img` VALUES ('200', '51', 'img/product/size4/m4502c653da2c2d76dd1460242679c4588.jpg', 'img/product/size2/m2502c653da2c2d76dd1460242679c4588.jpg');
INSERT INTO `route_img` VALUES ('201', '51', 'img/product/size4/m4ec4a602492df72816ec03871f2bb59df.jpg', 'img/product/size2/m2ec4a602492df72816ec03871f2bb59df.jpg');
INSERT INTO `route_img` VALUES ('202', '51', 'img/product/size4/m4057f3fb8520c175e48b6a914d0d6e397.jpg', 'img/product/size2/m2057f3fb8520c175e48b6a914d0d6e397.jpg');
INSERT INTO `route_img` VALUES ('203', '52', 'img/product/size4/1a276fb64f35d765c941aade4e436e2d.jpg', 'img/product/size2/m21a276fb64f35d765c941aade4e436e2d.jpg');
INSERT INTO `route_img` VALUES ('204', '52', 'img/product/size4/d646a80ef65f049771755acb0dbb7605.jpg', 'img/product/size2/m2d646a80ef65f049771755acb0dbb7605.jpg');
INSERT INTO `route_img` VALUES ('205', '52', 'img/product/size4/9b9dd85f6e87d2cd8ff88b1ef756ae2b.jpg', 'img/product/size2/m29b9dd85f6e87d2cd8ff88b1ef756ae2b.jpg');
INSERT INTO `route_img` VALUES ('206', '52', 'img/product/size4/4d099f7b0b2fe05245accd9740735aa9.jpg', 'img/product/size2/m24d099f7b0b2fe05245accd9740735aa9.jpg');
INSERT INTO `route_img` VALUES ('207', '53', 'img/product/size4/m45d8767c4e494b64a809539686946b0d8.jpg', 'img/product/size2/m25d8767c4e494b64a809539686946b0d8.jpg');
INSERT INTO `route_img` VALUES ('208', '53', 'img/product/size4/m403c6c53a6bdde306c960d9cebfe1fc6b.jpg', 'img/product/size2/m203c6c53a6bdde306c960d9cebfe1fc6b.jpg');
INSERT INTO `route_img` VALUES ('209', '53', 'img/product/size4/m446e22a537f30da8200990124428b73d6.jpg', 'img/product/size2/m246e22a537f30da8200990124428b73d6.jpg');
INSERT INTO `route_img` VALUES ('210', '53', 'img/product/size4/m4335c21520ae161be10e69abc0e7bd36e.jpg', 'img/product/size2/m2335c21520ae161be10e69abc0e7bd36e.jpg');
INSERT INTO `route_img` VALUES ('211', '53', 'img/product/size4/m47e9d416ccd26ac920f2f8073cf680011.jpg', 'img/product/size2/m27e9d416ccd26ac920f2f8073cf680011.jpg');
INSERT INTO `route_img` VALUES ('212', '54', 'img/product/size4/m40002e921ca056710da8375389bc75629.jpg', 'img/product/size2/m20002e921ca056710da8375389bc75629.jpg');
INSERT INTO `route_img` VALUES ('213', '54', 'img/product/size4/m458bdda3897fcf0948c73908201b33fcd.jpg', 'img/product/size2/m258bdda3897fcf0948c73908201b33fcd.jpg');
INSERT INTO `route_img` VALUES ('214', '54', 'img/product/size4/m48c2b01f1fd85866263ebcd4cb76e29dd.jpg', 'img/product/size2/m28c2b01f1fd85866263ebcd4cb76e29dd.jpg');
INSERT INTO `route_img` VALUES ('215', '54', 'img/product/size4/m4cc3bbbb47e4899597a160233b4ac5080.jpg', 'img/product/size2/m2cc3bbbb47e4899597a160233b4ac5080.jpg');
INSERT INTO `route_img` VALUES ('216', '55', 'img/product/size4/m4da63f2f553717860b3605b296189b82e.jpg', 'img/product/size2/m2da63f2f553717860b3605b296189b82e.jpg');
INSERT INTO `route_img` VALUES ('217', '55', 'img/product/size4/m43a27a473baf9cb0ed161c2c6a091e183.jpg', 'img/product/size2/m23a27a473baf9cb0ed161c2c6a091e183.jpg');
INSERT INTO `route_img` VALUES ('218', '55', 'img/product/size4/m49c763c9ccca806ce69219413027e2549.jpg', 'img/product/size2/m29c763c9ccca806ce69219413027e2549.jpg');
INSERT INTO `route_img` VALUES ('219', '55', 'img/product/size4/m418d363b3ad3d3bf0308318d012f338a1.jpg', 'img/product/size2/m218d363b3ad3d3bf0308318d012f338a1.jpg');
INSERT INTO `route_img` VALUES ('220', '56', 'img/product/size4/22b3ee868630f0655275f4b9f8968fa2.jpg', 'img/product/size2/m222b3ee868630f0655275f4b9f8968fa2.jpg');
INSERT INTO `route_img` VALUES ('221', '57', 'img/product/size4/m4cbf47c96c3a70765eb9c90efb345f0d3.jpg', 'img/product/size2/m2cbf47c96c3a70765eb9c90efb345f0d3.jpg');
INSERT INTO `route_img` VALUES ('222', '57', 'img/product/size4/m4fbf284c91f951d6a5a071a3f02010669.jpg', 'img/product/size2/m2fbf284c91f951d6a5a071a3f02010669.jpg');
INSERT INTO `route_img` VALUES ('223', '57', 'img/product/size4/m499ae8f5e64abaaa2023857379d958de5.jpg', 'img/product/size2/m299ae8f5e64abaaa2023857379d958de5.jpg');
INSERT INTO `route_img` VALUES ('224', '57', 'img/product/size4/m48bb4bcb4d9610a756c655ccb881b8629.jpg', 'img/product/size2/m28bb4bcb4d9610a756c655ccb881b8629.jpg');
INSERT INTO `route_img` VALUES ('225', '57', 'img/product/size4/m42d5f7517d1f822788efbfc58ee0371a8.jpg', 'img/product/size2/m22d5f7517d1f822788efbfc58ee0371a8.jpg');
INSERT INTO `route_img` VALUES ('226', '58', 'img/product/size4/m45c17b5b73d618bbdd2abe231f1307838.jpg', 'img/product/size2/m25c17b5b73d618bbdd2abe231f1307838.jpg');
INSERT INTO `route_img` VALUES ('227', '58', 'img/product/size4/m4b30056c90eccb0485d8a4adae18bdb78.JPG', 'img/product/size2/m2b30056c90eccb0485d8a4adae18bdb78.JPG');
INSERT INTO `route_img` VALUES ('228', '58', 'img/product/size4/m4b0ce750a53fc3ea9a5c65fbe63f13c5f.jpg', 'img/product/size2/m2b0ce750a53fc3ea9a5c65fbe63f13c5f.jpg');
INSERT INTO `route_img` VALUES ('229', '58', 'img/product/size4/m4a7bc57f69f45bd3488f1441e31b3aaeb.jpg', 'img/product/size2/m2a7bc57f69f45bd3488f1441e31b3aaeb.jpg');
INSERT INTO `route_img` VALUES ('230', '58', 'img/product/size4/m4184771838447eb5f64856e17768f00d5.jpg', 'img/product/size2/m2184771838447eb5f64856e17768f00d5.jpg');
INSERT INTO `route_img` VALUES ('231', '58', 'img/product/size4/m431a8125b6557c6a66e446e9ab6c796ad.jpg', 'img/product/size2/m231a8125b6557c6a66e446e9ab6c796ad.jpg');
INSERT INTO `route_img` VALUES ('232', '58', 'img/product/size4/m49c080ecfa42c2511244f532e13f793b1.jpg', 'img/product/size2/m29c080ecfa42c2511244f532e13f793b1.jpg');
INSERT INTO `route_img` VALUES ('233', '58', 'img/product/size4/m438695211e1e6b944cba365c06ce98ba0.jpg', 'img/product/size2/m238695211e1e6b944cba365c06ce98ba0.jpg');
INSERT INTO `route_img` VALUES ('234', '58', 'img/product/size4/m4e5efc88191d50d2b2df3f254f17b2ef4.jpg', 'img/product/size2/m2e5efc88191d50d2b2df3f254f17b2ef4.jpg');
INSERT INTO `route_img` VALUES ('235', '59', 'img/product/size4/m4ef702190f1c51354db5b9e754573428b.jpg', 'img/product/size2/m2ef702190f1c51354db5b9e754573428b.jpg');
INSERT INTO `route_img` VALUES ('236', '59', 'img/product/size4/m4efe1b1bf7f40c9b70d4e63d22c392df2.jpg', 'img/product/size2/m2efe1b1bf7f40c9b70d4e63d22c392df2.jpg');
INSERT INTO `route_img` VALUES ('237', '59', 'img/product/size4/m4884fe7f47d6ea05bc3bfd1b96e920f26.jpg', 'img/product/size2/m2884fe7f47d6ea05bc3bfd1b96e920f26.jpg');
INSERT INTO `route_img` VALUES ('238', '59', 'img/product/size4/m41de3806842b3ba4df167686a6a931b55.jpg', 'img/product/size2/m21de3806842b3ba4df167686a6a931b55.jpg');
INSERT INTO `route_img` VALUES ('239', '60', 'img/product/size4/m41827c9b3257e86f5359a54da9e2cab2c.jpg', 'img/product/size2/m21827c9b3257e86f5359a54da9e2cab2c.jpg');
INSERT INTO `route_img` VALUES ('240', '60', 'img/product/size4/m4180b564776c1e140b73f15de5f3a5312.jpg', 'img/product/size2/m2180b564776c1e140b73f15de5f3a5312.jpg');
INSERT INTO `route_img` VALUES ('241', '60', 'img/product/size4/m429f1f9bc257b8e73ef6ecd0a81d23f32.jpg', 'img/product/size2/m229f1f9bc257b8e73ef6ecd0a81d23f32.jpg');
INSERT INTO `route_img` VALUES ('242', '60', 'img/product/size4/m4fb75c5e8b6c0ca4b851c98a6c709b7fb.jpg', 'img/product/size2/m2fb75c5e8b6c0ca4b851c98a6c709b7fb.jpg');
INSERT INTO `route_img` VALUES ('243', '61', 'img/product/size4/m4049f23927f06d90e98fc254acd839846.jpg', 'img/product/size2/m2049f23927f06d90e98fc254acd839846.jpg');
INSERT INTO `route_img` VALUES ('244', '61', 'img/product/size4/m4f2eb777ec9a6182117a95d8f434b1d09.jpg', 'img/product/size2/m2f2eb777ec9a6182117a95d8f434b1d09.jpg');
INSERT INTO `route_img` VALUES ('245', '61', 'img/product/size4/m44fe7a18b2375859d4e607abb7c2ae6cc.jpg', 'img/product/size2/m24fe7a18b2375859d4e607abb7c2ae6cc.jpg');
INSERT INTO `route_img` VALUES ('246', '61', 'img/product/size4/m42c51516aec8db2a2cd9f1d51862c101b.jpg', 'img/product/size2/m22c51516aec8db2a2cd9f1d51862c101b.jpg');
INSERT INTO `route_img` VALUES ('247', '62', 'img/product/size4/m412cf97538027a813a4fb0bd6980a7fea.jpg', 'img/product/size2/m212cf97538027a813a4fb0bd6980a7fea.jpg');
INSERT INTO `route_img` VALUES ('248', '62', 'img/product/size4/m44faaf6847b41d2585173f90bf958177d.jpg', 'img/product/size2/m24faaf6847b41d2585173f90bf958177d.jpg');
INSERT INTO `route_img` VALUES ('249', '62', 'img/product/size4/m4155da0ef99b95dea948e7b3fad5d112f.jpg', 'img/product/size2/m2155da0ef99b95dea948e7b3fad5d112f.jpg');
INSERT INTO `route_img` VALUES ('250', '62', 'img/product/size4/m420a290511c83e3705e65ff490ca23c42.jpg', 'img/product/size2/m220a290511c83e3705e65ff490ca23c42.jpg');
INSERT INTO `route_img` VALUES ('251', '63', 'img/product/size4/m42147bf064e03b7313fe250b262d902c1.jpg', 'img/product/size2/m22147bf064e03b7313fe250b262d902c1.jpg');
INSERT INTO `route_img` VALUES ('252', '63', 'img/product/size4/m437719be15fa56512c4d353ced3ac1541.jpg', 'img/product/size2/m237719be15fa56512c4d353ced3ac1541.jpg');
INSERT INTO `route_img` VALUES ('253', '63', 'img/product/size4/m40e6aedf6e0d7e753016dd9fc9a9e93f9.jpg', 'img/product/size2/m20e6aedf6e0d7e753016dd9fc9a9e93f9.jpg');
INSERT INTO `route_img` VALUES ('254', '63', 'img/product/size4/m425da9a174979787845fe6c7b71e8f095.jpg', 'img/product/size2/m225da9a174979787845fe6c7b71e8f095.jpg');
INSERT INTO `route_img` VALUES ('255', '64', 'img/product/size4/m4ef1b3b4e0fd85e2dc319ca1086bd81e5.jpg', 'img/product/size2/m2ef1b3b4e0fd85e2dc319ca1086bd81e5.jpg');
INSERT INTO `route_img` VALUES ('256', '64', 'img/product/size4/m4e5d098135b9249aab3ba5c2b71759773.jpg', 'img/product/size2/m2e5d098135b9249aab3ba5c2b71759773.jpg');
INSERT INTO `route_img` VALUES ('257', '64', 'img/product/size4/m4777952594b198d5ea59d8c580d98cf4c.jpg', 'img/product/size2/m2777952594b198d5ea59d8c580d98cf4c.jpg');
INSERT INTO `route_img` VALUES ('258', '64', 'img/product/size4/m45508c239c9ad9e8e74d151d6ab855875.jpg', 'img/product/size2/m25508c239c9ad9e8e74d151d6ab855875.jpg');
INSERT INTO `route_img` VALUES ('259', '65', 'img/product/size4/m4644acd7c62100dc4cbe9247a0a8d4efe.jpg', 'img/product/size2/m2644acd7c62100dc4cbe9247a0a8d4efe.jpg');
INSERT INTO `route_img` VALUES ('260', '65', 'img/product/size4/m49f7d21f616436e6d795e98a43c93f8fa.jpg', 'img/product/size2/m29f7d21f616436e6d795e98a43c93f8fa.jpg');
INSERT INTO `route_img` VALUES ('261', '65', 'img/product/size4/fe89654cb1d095d30a90eca1dbfd77c5.jpg', 'img/product/size2/m2fe89654cb1d095d30a90eca1dbfd77c5.jpg');
INSERT INTO `route_img` VALUES ('262', '65', 'img/product/size4/m4f42939e7991367d0120c7e49fdefeaa9.jpg', 'img/product/size2/m2f42939e7991367d0120c7e49fdefeaa9.jpg');
INSERT INTO `route_img` VALUES ('263', '66', 'img/product/size4/m4ef702190f1c51354db5b9e754573428b.jpg', 'img/product/size2/m2ef702190f1c51354db5b9e754573428b.jpg');
INSERT INTO `route_img` VALUES ('264', '66', 'img/product/size4/m42d0abfffd0a64b397315bd0eed5776d4.jpg', 'img/product/size2/m22d0abfffd0a64b397315bd0eed5776d4.jpg');
INSERT INTO `route_img` VALUES ('265', '66', 'img/product/size4/m4893589aa9911e29e85df2f0e13569406.jpg', 'img/product/size2/m2893589aa9911e29e85df2f0e13569406.jpg');
INSERT INTO `route_img` VALUES ('266', '66', 'img/product/size4/m41a859d88bf2940f2540bf4ce93545eea.jpg', 'img/product/size2/m21a859d88bf2940f2540bf4ce93545eea.jpg');
INSERT INTO `route_img` VALUES ('267', '67', 'img/product/size4/m4084767bd581b81be5170a5f562f8e1c7.jpg', 'img/product/size2/m2084767bd581b81be5170a5f562f8e1c7.jpg');
INSERT INTO `route_img` VALUES ('268', '67', 'img/product/size4/m4420d7f66c7aec9d0cf5c2654aa973f8c.jpg', 'img/product/size2/m2420d7f66c7aec9d0cf5c2654aa973f8c.jpg');
INSERT INTO `route_img` VALUES ('269', '67', 'img/product/size4/m41baca2c10aeda9fbb13bc14e0411a9ec.jpg', 'img/product/size2/m21baca2c10aeda9fbb13bc14e0411a9ec.jpg');
INSERT INTO `route_img` VALUES ('270', '67', 'img/product/size4/m48766de42467f59f0f10b5d838ae3e3b1.jpg', 'img/product/size2/m28766de42467f59f0f10b5d838ae3e3b1.jpg');
INSERT INTO `route_img` VALUES ('271', '67', 'img/product/size4/m48bb4bcb4d9610a756c655ccb881b8629.jpg', 'img/product/size2/m28bb4bcb4d9610a756c655ccb881b8629.jpg');
INSERT INTO `route_img` VALUES ('272', '68', 'img/product/size4/m41baca2c10aeda9fbb13bc14e0411a9ec.jpg', 'img/product/size2/m21baca2c10aeda9fbb13bc14e0411a9ec.jpg');
INSERT INTO `route_img` VALUES ('273', '68', 'img/product/size4/m4420d7f66c7aec9d0cf5c2654aa973f8c.jpg', 'img/product/size2/m2420d7f66c7aec9d0cf5c2654aa973f8c.jpg');
INSERT INTO `route_img` VALUES ('274', '68', 'img/product/size4/m4084767bd581b81be5170a5f562f8e1c7.jpg', 'img/product/size2/m2084767bd581b81be5170a5f562f8e1c7.jpg');
INSERT INTO `route_img` VALUES ('275', '68', 'img/product/size4/m4e88f714bad69d8bc25e6e42f5f998359.jpg', 'img/product/size2/m2e88f714bad69d8bc25e6e42f5f998359.jpg');
INSERT INTO `route_img` VALUES ('276', '68', 'img/product/size4/m48766de42467f59f0f10b5d838ae3e3b1.jpg', 'img/product/size2/m28766de42467f59f0f10b5d838ae3e3b1.jpg');
INSERT INTO `route_img` VALUES ('277', '69', 'img/product/size4/m4f44a47d91cb6cb8c74b4f7cd5d430152.jpg', 'img/product/size2/m2f44a47d91cb6cb8c74b4f7cd5d430152.jpg');
INSERT INTO `route_img` VALUES ('278', '69', 'img/product/size4/m4f416a6491b4adba55acda4a96250ed85.jpg', 'img/product/size2/m2f416a6491b4adba55acda4a96250ed85.jpg');
INSERT INTO `route_img` VALUES ('279', '69', 'img/product/size4/m44b98352ba26f199fca68704357369c20.jpg', 'img/product/size2/m24b98352ba26f199fca68704357369c20.jpg');
INSERT INTO `route_img` VALUES ('280', '69', 'img/product/size4/m4995e086ba45e7b3bb6d0a8b9ea4f7dba.jpg', 'img/product/size2/m2995e086ba45e7b3bb6d0a8b9ea4f7dba.jpg');
INSERT INTO `route_img` VALUES ('281', '70', 'img/product/size4/m435e09f77f1f6f714ee13dd02148949f8.jpg', 'img/product/size2/m235e09f77f1f6f714ee13dd02148949f8.jpg');
INSERT INTO `route_img` VALUES ('282', '70', 'img/product/size4/ed2034c6d1fe6a91d5ac6d9bf5e549af.jpg', 'img/product/size2/m2ed2034c6d1fe6a91d5ac6d9bf5e549af.jpg');
INSERT INTO `route_img` VALUES ('283', '70', 'img/product/size4/m4ace40cec3a19171242cb9060b92f5e7f.jpg', 'img/product/size2/m2ace40cec3a19171242cb9060b92f5e7f.jpg');
INSERT INTO `route_img` VALUES ('284', '70', 'img/product/size4/m46e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', 'img/product/size2/m26e65da7aaabb0e8e29ddd56f9f79cbe8.jpg');
INSERT INTO `route_img` VALUES ('285', '70', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('286', '70', 'img/product/size4/m43a4a9104d68e57ab9e0b0fbbc624a156.jpg', 'img/product/size2/m23a4a9104d68e57ab9e0b0fbbc624a156.jpg');
INSERT INTO `route_img` VALUES ('287', '71', 'img/product/size4/m422e835000a086328e8de69b5fd9f68ee.jpg', 'img/product/size2/m222e835000a086328e8de69b5fd9f68ee.jpg');
INSERT INTO `route_img` VALUES ('288', '71', 'img/product/size4/af4cda4b7d0c0d7b65b8a203ebe55eb0.jpg', 'img/product/size2/m2af4cda4b7d0c0d7b65b8a203ebe55eb0.jpg');
INSERT INTO `route_img` VALUES ('289', '71', 'img/product/size4/a62fbf5da7ba3814810b5f31238decaa.jpg', 'img/product/size2/m2a62fbf5da7ba3814810b5f31238decaa.jpg');
INSERT INTO `route_img` VALUES ('290', '71', 'img/product/size4/m4ff78b840f8c09c3745e2d95f8aba12fe.jpg', 'img/product/size2/m2ff78b840f8c09c3745e2d95f8aba12fe.jpg');
INSERT INTO `route_img` VALUES ('291', '72', 'img/product/size4/m41827c9b3257e86f5359a54da9e2cab2c.jpg', 'img/product/size2/m21827c9b3257e86f5359a54da9e2cab2c.jpg');
INSERT INTO `route_img` VALUES ('292', '72', 'img/product/size4/m422e835000a086328e8de69b5fd9f68ee.jpg', 'img/product/size2/m222e835000a086328e8de69b5fd9f68ee.jpg');
INSERT INTO `route_img` VALUES ('293', '72', 'img/product/size4/m447fb11112d9d1beca8eb05fa512f8ab5.jpg', 'img/product/size2/m247fb11112d9d1beca8eb05fa512f8ab5.jpg');
INSERT INTO `route_img` VALUES ('294', '72', 'img/product/size4/m4a4a779ae66c256ebb6c4409d6f5d6ca2.jpg', 'img/product/size2/m2a4a779ae66c256ebb6c4409d6f5d6ca2.jpg');
INSERT INTO `route_img` VALUES ('295', '73', 'img/product/size4/m4e99b3ae168835b4811d450045d544c9c.jpg', 'img/product/size2/m2e99b3ae168835b4811d450045d544c9c.jpg');
INSERT INTO `route_img` VALUES ('296', '73', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('297', '73', 'img/product/size4/m46e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', 'img/product/size2/m26e65da7aaabb0e8e29ddd56f9f79cbe8.jpg');
INSERT INTO `route_img` VALUES ('298', '73', 'img/product/size4/m43a4a9104d68e57ab9e0b0fbbc624a156.jpg', 'img/product/size2/m23a4a9104d68e57ab9e0b0fbbc624a156.jpg');
INSERT INTO `route_img` VALUES ('299', '74', 'img/product/size4/m46e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', 'img/product/size2/m26e65da7aaabb0e8e29ddd56f9f79cbe8.jpg');
INSERT INTO `route_img` VALUES ('300', '74', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('301', '74', 'img/product/size4/m40ddd52fee24734f5b250eac436d0cc5e.jpg', 'img/product/size2/m20ddd52fee24734f5b250eac436d0cc5e.jpg');
INSERT INTO `route_img` VALUES ('302', '74', 'img/product/size4/m4465e6dbdbd77e48ef66862436c36d0a3.jpg', 'img/product/size2/m2465e6dbdbd77e48ef66862436c36d0a3.jpg');
INSERT INTO `route_img` VALUES ('303', '75', 'img/product/size4/m41a859d88bf2940f2540bf4ce93545eea.jpg', 'img/product/size2/m21a859d88bf2940f2540bf4ce93545eea.jpg');
INSERT INTO `route_img` VALUES ('304', '75', 'img/product/size4/m4ef702190f1c51354db5b9e754573428b.jpg', 'img/product/size2/m2ef702190f1c51354db5b9e754573428b.jpg');
INSERT INTO `route_img` VALUES ('305', '75', 'img/product/size4/m4af9abf458f02b68df8b583845a0c0caf.jpg', 'img/product/size2/m2af9abf458f02b68df8b583845a0c0caf.jpg');
INSERT INTO `route_img` VALUES ('306', '75', 'img/product/size4/m41de3806842b3ba4df167686a6a931b55.jpg', 'img/product/size2/m21de3806842b3ba4df167686a6a931b55.jpg');
INSERT INTO `route_img` VALUES ('307', '76', 'img/product/size4/m44f047ea4d1d1e0b832aa8a5dd55716c4.jpg', 'img/product/size2/m24f047ea4d1d1e0b832aa8a5dd55716c4.jpg');
INSERT INTO `route_img` VALUES ('308', '76', 'img/product/size4/m48536508e0afa0e33a461454340dafaf7.jpg', 'img/product/size2/m28536508e0afa0e33a461454340dafaf7.jpg');
INSERT INTO `route_img` VALUES ('309', '76', 'img/product/size4/m4aaaaa5b07f6835ebb28ac4821052f94b.jpg', 'img/product/size2/m2aaaaa5b07f6835ebb28ac4821052f94b.jpg');
INSERT INTO `route_img` VALUES ('310', '76', 'img/product/size4/m4af93767375fa2a989f1c82b3df3da7c7.jpg', 'img/product/size2/m2af93767375fa2a989f1c82b3df3da7c7.jpg');
INSERT INTO `route_img` VALUES ('311', '77', 'img/product/size4/m422e835000a086328e8de69b5fd9f68ee.jpg', 'img/product/size2/m222e835000a086328e8de69b5fd9f68ee.jpg');
INSERT INTO `route_img` VALUES ('312', '77', 'img/product/size4/m4644acd7c62100dc4cbe9247a0a8d4efe.jpg', 'img/product/size2/m2644acd7c62100dc4cbe9247a0a8d4efe.jpg');
INSERT INTO `route_img` VALUES ('313', '77', 'img/product/size4/m47d8d151694fd4efe55f6fc82fff568b0.jpg', 'img/product/size2/m27d8d151694fd4efe55f6fc82fff568b0.jpg');
INSERT INTO `route_img` VALUES ('314', '77', 'img/product/size4/m4f048ef0b9076f47c670c63018d70e6bf.jpg', 'img/product/size2/m2f048ef0b9076f47c670c63018d70e6bf.jpg');
INSERT INTO `route_img` VALUES ('315', '78', 'img/product/size4/m429f1f9bc257b8e73ef6ecd0a81d23f32.jpg', 'img/product/size2/m229f1f9bc257b8e73ef6ecd0a81d23f32.jpg');
INSERT INTO `route_img` VALUES ('316', '78', 'img/product/size4/m4aaaaa5b07f6835ebb28ac4821052f94b.jpg', 'img/product/size2/m2aaaaa5b07f6835ebb28ac4821052f94b.jpg');
INSERT INTO `route_img` VALUES ('317', '78', 'img/product/size4/m4af93767375fa2a989f1c82b3df3da7c7.jpg', 'img/product/size2/m2af93767375fa2a989f1c82b3df3da7c7.jpg');
INSERT INTO `route_img` VALUES ('318', '78', 'img/product/size4/m41827c9b3257e86f5359a54da9e2cab2c.jpg', 'img/product/size2/m21827c9b3257e86f5359a54da9e2cab2c.jpg');
INSERT INTO `route_img` VALUES ('319', '79', 'img/product/size4/m4af93767375fa2a989f1c82b3df3da7c7.jpg', 'img/product/size2/m2af93767375fa2a989f1c82b3df3da7c7.jpg');
INSERT INTO `route_img` VALUES ('320', '79', 'img/product/size4/m4aaaaa5b07f6835ebb28ac4821052f94b.jpg', 'img/product/size2/m2aaaaa5b07f6835ebb28ac4821052f94b.jpg');
INSERT INTO `route_img` VALUES ('321', '79', 'img/product/size4/m42154cbdb20c40ee4847223769622af17.jpg', 'img/product/size2/m22154cbdb20c40ee4847223769622af17.jpg');
INSERT INTO `route_img` VALUES ('322', '79', 'img/product/size4/m4f048ef0b9076f47c670c63018d70e6bf.jpg', 'img/product/size2/m2f048ef0b9076f47c670c63018d70e6bf.jpg');
INSERT INTO `route_img` VALUES ('323', '80', 'img/product/size4/m46e65da7aaabb0e8e29ddd56f9f79cbe8.jpg', 'img/product/size2/m26e65da7aaabb0e8e29ddd56f9f79cbe8.jpg');
INSERT INTO `route_img` VALUES ('324', '80', 'img/product/size4/m449baf8219aca81648fa94e66ca09014e.jpg', 'img/product/size2/m249baf8219aca81648fa94e66ca09014e.jpg');
INSERT INTO `route_img` VALUES ('325', '80', 'img/product/size4/m4bcaf13c4b287a473b5999eff8f887d95.jpg', 'img/product/size2/m2bcaf13c4b287a473b5999eff8f887d95.jpg');
INSERT INTO `route_img` VALUES ('326', '80', 'img/product/size4/m44d11a1ccddf9b6b538944f868ebfc4af.jpg', 'img/product/size2/m24d11a1ccddf9b6b538944f868ebfc4af.jpg');
INSERT INTO `route_img` VALUES ('327', '81', 'img/product/size4/m44c3cb6402b6f04dda3960d7177fb3fe1.jpg', 'img/product/size2/m24c3cb6402b6f04dda3960d7177fb3fe1.jpg');
INSERT INTO `route_img` VALUES ('328', '81', 'img/product/size4/m46ff4c7b35985a270ec4695a518053d0f.jpg', 'img/product/size2/m26ff4c7b35985a270ec4695a518053d0f.jpg');
INSERT INTO `route_img` VALUES ('329', '81', 'img/product/size4/m454c084c1f16b42021e8af859532a5045.jpg', 'img/product/size2/m254c084c1f16b42021e8af859532a5045.jpg');
INSERT INTO `route_img` VALUES ('330', '81', 'img/product/size4/d646a80ef65f049771755acb0dbb7605.jpg', 'img/product/size2/m2d646a80ef65f049771755acb0dbb7605.jpg');
INSERT INTO `route_img` VALUES ('331', '81', 'img/product/size4/4d099f7b0b2fe05245accd9740735aa9.jpg', 'img/product/size2/m24d099f7b0b2fe05245accd9740735aa9.jpg');
INSERT INTO `route_img` VALUES ('332', '82', 'img/product/size4/m44f047ea4d1d1e0b832aa8a5dd55716c4.jpg', 'img/product/size2/m24f047ea4d1d1e0b832aa8a5dd55716c4.jpg');
INSERT INTO `route_img` VALUES ('333', '82', 'img/product/size4/m4af93767375fa2a989f1c82b3df3da7c7.jpg', 'img/product/size2/m2af93767375fa2a989f1c82b3df3da7c7.jpg');
INSERT INTO `route_img` VALUES ('334', '82', 'img/product/size4/m48536508e0afa0e33a461454340dafaf7.jpg', 'img/product/size2/m28536508e0afa0e33a461454340dafaf7.jpg');
INSERT INTO `route_img` VALUES ('335', '82', 'img/product/size4/m429f1f9bc257b8e73ef6ecd0a81d23f32.jpg', 'img/product/size2/m229f1f9bc257b8e73ef6ecd0a81d23f32.jpg');
INSERT INTO `route_img` VALUES ('336', '83', 'img/product/size4/m446e22a537f30da8200990124428b73d6.jpg', 'img/product/size2/m246e22a537f30da8200990124428b73d6.jpg');
INSERT INTO `route_img` VALUES ('337', '83', 'img/product/size4/m403c6c53a6bdde306c960d9cebfe1fc6b.jpg', 'img/product/size2/m203c6c53a6bdde306c960d9cebfe1fc6b.jpg');
INSERT INTO `route_img` VALUES ('338', '83', 'img/product/size4/m4a97735f3c1f4d895c2950abbf7e758fd.jpg', 'img/product/size2/m2a97735f3c1f4d895c2950abbf7e758fd.jpg');
INSERT INTO `route_img` VALUES ('339', '83', 'img/product/size4/m4e32afa27bcfc585558793d5977daa2fa.jpg', 'img/product/size2/m2e32afa27bcfc585558793d5977daa2fa.jpg');
INSERT INTO `route_img` VALUES ('340', '84', 'img/product/size4/m4c9c87a1175252d187eb8c4bc228c317d.jpg', 'img/product/size2/m2c9c87a1175252d187eb8c4bc228c317d.jpg');
INSERT INTO `route_img` VALUES ('341', '84', 'img/product/size4/m42c962363cb678508de0b99aaab1de198.jpg', 'img/product/size2/m22c962363cb678508de0b99aaab1de198.jpg');
INSERT INTO `route_img` VALUES ('342', '84', 'img/product/size4/m4d69b0ea3165d04302cc068ac14192bd1.jpg', 'img/product/size2/m2d69b0ea3165d04302cc068ac14192bd1.jpg');
INSERT INTO `route_img` VALUES ('343', '84', 'img/product/size4/m40aae1ff572409c9082aff495dcaaa54a.jpg', 'img/product/size2/m20aae1ff572409c9082aff495dcaaa54a.jpg');
INSERT INTO `route_img` VALUES ('344', '85', 'img/product/size4/m44fa1da1f2a787dd1bfcd2028decfcabe.jpg', 'img/product/size2/m24fa1da1f2a787dd1bfcd2028decfcabe.jpg');
INSERT INTO `route_img` VALUES ('345', '85', 'img/product/size4/m423e1d43221d7b9014f7546ccab67a46f.jpg', 'img/product/size2/m223e1d43221d7b9014f7546ccab67a46f.jpg');
INSERT INTO `route_img` VALUES ('346', '85', 'img/product/size4/m41b7e6805e116982076fa15ece3c515a1.jpg', 'img/product/size2/m21b7e6805e116982076fa15ece3c515a1.jpg');
INSERT INTO `route_img` VALUES ('347', '85', 'img/product/size4/m46468a52f97bab225c693471976c070c2.jpg', 'img/product/size2/m26468a52f97bab225c693471976c070c2.jpg');
INSERT INTO `route_img` VALUES ('348', '86', 'img/product/size4/m491ef27749fd523c757403de0a5d033d5.jpg', 'img/product/size2/m291ef27749fd523c757403de0a5d033d5.jpg');
INSERT INTO `route_img` VALUES ('349', '86', 'img/product/size4/m464259aaa5353f013e143bc452aeb17c9.jpg', 'img/product/size2/m264259aaa5353f013e143bc452aeb17c9.jpg');
INSERT INTO `route_img` VALUES ('350', '86', 'img/product/size4/m4b350a4abe82f0a7d0fd2897ce7d59ae5.jpg', 'img/product/size2/m2b350a4abe82f0a7d0fd2897ce7d59ae5.jpg');
INSERT INTO `route_img` VALUES ('351', '86', 'img/product/size4/m4b43446c904abce430c968d003aece6a8.jpg', 'img/product/size2/m2b43446c904abce430c968d003aece6a8.jpg');
INSERT INTO `route_img` VALUES ('352', '87', 'img/product/size4/m4b576e46c68ed34b4767a570c564238c2.jpg', 'img/product/size2/m2b576e46c68ed34b4767a570c564238c2.jpg');
INSERT INTO `route_img` VALUES ('353', '87', 'img/product/size4/m4329b4dc149675c4b7b3b00dee9f7b9e0.jpg', 'img/product/size2/m2329b4dc149675c4b7b3b00dee9f7b9e0.jpg');
INSERT INTO `route_img` VALUES ('354', '87', 'img/product/size4/m4b1574f0d8476b1955f0cf03027e46aad.jpg', 'img/product/size2/m2b1574f0d8476b1955f0cf03027e46aad.jpg');
INSERT INTO `route_img` VALUES ('355', '87', 'img/product/size4/m4d897ac8104a4a4ab9405a6ed04d4866b.jpg', 'img/product/size2/m2d897ac8104a4a4ab9405a6ed04d4866b.jpg');
INSERT INTO `route_img` VALUES ('356', '88', 'img/product/size4/m429953e2c2cc49be10810e70c396bb002.jpg', 'img/product/size2/m229953e2c2cc49be10810e70c396bb002.jpg');
INSERT INTO `route_img` VALUES ('357', '88', 'img/product/size4/m474fec08e4f1f4d913717ddc1155de2d9.jpg', 'img/product/size2/m274fec08e4f1f4d913717ddc1155de2d9.jpg');
INSERT INTO `route_img` VALUES ('358', '88', 'img/product/size4/m484ee9d8432a540b153a4afd300794e76.jpg', 'img/product/size2/m284ee9d8432a540b153a4afd300794e76.jpg');
INSERT INTO `route_img` VALUES ('359', '88', 'img/product/size4/m44fe7a18b2375859d4e607abb7c2ae6cc.jpg', 'img/product/size2/m24fe7a18b2375859d4e607abb7c2ae6cc.jpg');
INSERT INTO `route_img` VALUES ('360', '89', 'img/product/size4/m4cc0ae9ebf1a693d03ec69d94a5b79a75.jpg', 'img/product/size2/m2cc0ae9ebf1a693d03ec69d94a5b79a75.jpg');
INSERT INTO `route_img` VALUES ('361', '89', 'img/product/size4/m43a27a473baf9cb0ed161c2c6a091e183.jpg', 'img/product/size2/m23a27a473baf9cb0ed161c2c6a091e183.jpg');
INSERT INTO `route_img` VALUES ('362', '89', 'img/product/size4/m49c763c9ccca806ce69219413027e2549.jpg', 'img/product/size2/m29c763c9ccca806ce69219413027e2549.jpg');
INSERT INTO `route_img` VALUES ('363', '89', 'img/product/size4/m42f86bc1ae804aba4be27c737aac1f83b.jpg', 'img/product/size2/m22f86bc1ae804aba4be27c737aac1f83b.jpg');
INSERT INTO `route_img` VALUES ('364', '90', 'img/product/size4/2abbafaca26330f294c121341cc0f064.jpg', 'img/product/size2/m22abbafaca26330f294c121341cc0f064.jpg');
INSERT INTO `route_img` VALUES ('365', '90', 'img/product/size4/m41bc451c6678057b8d2aed383fb3243f9.jpg', 'img/product/size2/m21bc451c6678057b8d2aed383fb3243f9.jpg');
INSERT INTO `route_img` VALUES ('366', '90', 'img/product/size4/m41c24c12a2e83318e7b94d6314738ca74.jpg', 'img/product/size2/m21c24c12a2e83318e7b94d6314738ca74.jpg');
INSERT INTO `route_img` VALUES ('367', '90', 'img/product/size4/m4709aa05d3efb7e9a1be5ffa6560f18c0.jpg', 'img/product/size2/m2709aa05d3efb7e9a1be5ffa6560f18c0.jpg');
INSERT INTO `route_img` VALUES ('368', '91', 'img/product/size4/m419ebf7585e9734b5ca16924c8fb9ac0f.jpg', 'img/product/size2/m219ebf7585e9734b5ca16924c8fb9ac0f.jpg');
INSERT INTO `route_img` VALUES ('369', '91', 'img/product/size4/m4b3bbdd11f3ea6f1a849b7f744f432e7f.jpg', 'img/product/size2/m2b3bbdd11f3ea6f1a849b7f744f432e7f.jpg');
INSERT INTO `route_img` VALUES ('370', '91', 'img/product/size4/m4dd46e3cac963cb45a309682c343198e3.jpg', 'img/product/size2/m2dd46e3cac963cb45a309682c343198e3.jpg');
INSERT INTO `route_img` VALUES ('371', '91', 'img/product/size4/m4b989a3f3653eaab8d291362474e7d2b0.jpg', 'img/product/size2/m2b989a3f3653eaab8d291362474e7d2b0.jpg');
INSERT INTO `route_img` VALUES ('372', '92', 'img/product/size4/m422b6f9601ee8ffecd6db0f2315d08539.jpg', 'img/product/size2/m222b6f9601ee8ffecd6db0f2315d08539.jpg');
INSERT INTO `route_img` VALUES ('373', '92', 'img/product/size4/m41a8a1be2a84a99147278e5cf8ed432d0.jpg', 'img/product/size2/m21a8a1be2a84a99147278e5cf8ed432d0.jpg');
INSERT INTO `route_img` VALUES ('374', '92', 'img/product/size4/m46f8479f515d53d1dd70eb1427bba5223.jpg', 'img/product/size2/m26f8479f515d53d1dd70eb1427bba5223.jpg');
INSERT INTO `route_img` VALUES ('375', '92', 'img/product/size4/m4e179d891c96d38936de5cdb3454fd909.jpg', 'img/product/size2/m2e179d891c96d38936de5cdb3454fd909.jpg');
INSERT INTO `route_img` VALUES ('376', '93', 'img/product/size4/m417ba719d8bcaed4f6e9d0636b7b41888.jpg', 'img/product/size2/m217ba719d8bcaed4f6e9d0636b7b41888.jpg');
INSERT INTO `route_img` VALUES ('377', '93', 'img/product/size4/m44fa1da1f2a787dd1bfcd2028decfcabe.jpg', 'img/product/size2/m24fa1da1f2a787dd1bfcd2028decfcabe.jpg');
INSERT INTO `route_img` VALUES ('378', '93', 'img/product/size4/m423e1d43221d7b9014f7546ccab67a46f.jpg', 'img/product/size2/m223e1d43221d7b9014f7546ccab67a46f.jpg');
INSERT INTO `route_img` VALUES ('379', '93', 'img/product/size4/m4b3bbdd11f3ea6f1a849b7f744f432e7f.jpg', 'img/product/size2/m2b3bbdd11f3ea6f1a849b7f744f432e7f.jpg');
INSERT INTO `route_img` VALUES ('380', '94', 'img/product/size4/m447fb11112d9d1beca8eb05fa512f8ab5.jpg', 'img/product/size2/m247fb11112d9d1beca8eb05fa512f8ab5.jpg');
INSERT INTO `route_img` VALUES ('381', '94', 'img/product/size4/m43fb52609bda9fed636138ddd31ede1fc.jpg', 'img/product/size2/m23fb52609bda9fed636138ddd31ede1fc.jpg');
INSERT INTO `route_img` VALUES ('382', '94', 'img/product/size4/m4a0b210f47a778170efe260bd75a2fd01.jpg', 'img/product/size2/m2a0b210f47a778170efe260bd75a2fd01.jpg');
INSERT INTO `route_img` VALUES ('383', '94', 'img/product/size4/m45c17b5b73d618bbdd2abe231f1307838.jpg', 'img/product/size2/m25c17b5b73d618bbdd2abe231f1307838.jpg');
INSERT INTO `route_img` VALUES ('384', '95', 'img/product/size4/m4dc9c4b1dba687877139d33a3e4ba57f8.jpg', 'img/product/size2/m2dc9c4b1dba687877139d33a3e4ba57f8.jpg');
INSERT INTO `route_img` VALUES ('385', '95', 'img/product/size4/m4b24609106b696fe291840ed0e24a4fb7.jpg', 'img/product/size2/m2b24609106b696fe291840ed0e24a4fb7.jpg');
INSERT INTO `route_img` VALUES ('386', '95', 'img/product/size4/m414e1349502138da3e662cce2e10668ce.jpg', 'img/product/size2/m214e1349502138da3e662cce2e10668ce.jpg');
INSERT INTO `route_img` VALUES ('387', '95', 'img/product/size4/m49f5c81e544230b89c9115c98a9c69d55.jpg', 'img/product/size2/m29f5c81e544230b89c9115c98a9c69d55.jpg');
INSERT INTO `route_img` VALUES ('388', '96', 'img/product/size4/m46491998889e9597f0e7753beea037ae3.jpg', 'img/product/size2/m26491998889e9597f0e7753beea037ae3.jpg');
INSERT INTO `route_img` VALUES ('389', '96', 'img/product/size4/m486b0e214cac64a12e1930cfb201e6333.jpg', 'img/product/size2/m286b0e214cac64a12e1930cfb201e6333.jpg');
INSERT INTO `route_img` VALUES ('390', '96', 'img/product/size4/m43f0d22d87eee526e0c25384f78654b05.jpg', 'img/product/size2/m23f0d22d87eee526e0c25384f78654b05.jpg');
INSERT INTO `route_img` VALUES ('391', '96', 'img/product/size4/m479471f9320ee1e879f28986eea488fff.jpg', 'img/product/size2/m279471f9320ee1e879f28986eea488fff.jpg');
INSERT INTO `route_img` VALUES ('392', '97', 'img/product/size4/m49f9a1ac0cabc00529ba4cfa912ab4ba5.jpg', 'img/product/size2/m29f9a1ac0cabc00529ba4cfa912ab4ba5.jpg');
INSERT INTO `route_img` VALUES ('393', '97', 'img/product/size4/m41a8a1be2a84a99147278e5cf8ed432d0.jpg', 'img/product/size2/m21a8a1be2a84a99147278e5cf8ed432d0.jpg');
INSERT INTO `route_img` VALUES ('394', '97', 'img/product/size4/m40c291dba8e45063fbfcecea64b3e873f.jpg', 'img/product/size2/m20c291dba8e45063fbfcecea64b3e873f.jpg');
INSERT INTO `route_img` VALUES ('395', '97', 'img/product/size4/m49b2b731649f5996bed23fe297c0c6813.jpg', 'img/product/size2/m29b2b731649f5996bed23fe297c0c6813.jpg');
INSERT INTO `route_img` VALUES ('396', '97', 'img/product/size4/m4b576e46c68ed34b4767a570c564238c2.jpg', 'img/product/size2/m2b576e46c68ed34b4767a570c564238c2.jpg');
INSERT INTO `route_img` VALUES ('397', '98', 'img/product/size4/m484d4636d5e230082ce3f8ab56541171e.jpg', 'img/product/size2/m284d4636d5e230082ce3f8ab56541171e.jpg');
INSERT INTO `route_img` VALUES ('398', '98', 'img/product/size4/m4c0b7f553102b0dd7c23bad24045381ec.jpg', 'img/product/size2/m2c0b7f553102b0dd7c23bad24045381ec.jpg');
INSERT INTO `route_img` VALUES ('399', '98', 'img/product/size4/m4b630d9acedc5ddd1c0cdcb15dbe49d40.jpg', 'img/product/size2/m2b630d9acedc5ddd1c0cdcb15dbe49d40.jpg');
INSERT INTO `route_img` VALUES ('400', '98', 'img/product/size4/m4e99b3ae168835b4811d450045d544c9c.jpg', 'img/product/size2/m2e99b3ae168835b4811d450045d544c9c.jpg');
INSERT INTO `route_img` VALUES ('401', '99', 'img/product/size4/m47e240d902d874edc5767478fb71f2e90.jpg', 'img/product/size2/m27e240d902d874edc5767478fb71f2e90.jpg');
INSERT INTO `route_img` VALUES ('402', '99', 'img/product/size4/m4ee132c9d26413f60239bf1a307805004.jpg', 'img/product/size2/m2ee132c9d26413f60239bf1a307805004.jpg');
INSERT INTO `route_img` VALUES ('403', '99', 'img/product/size4/m4569f02c6c2558d84d0d382d5927b2c0d.jpg', 'img/product/size2/m2569f02c6c2558d84d0d382d5927b2c0d.jpg');
INSERT INTO `route_img` VALUES ('404', '99', 'img/product/size4/m4b91b2cafcd8fe5952e0eaa24aa8c3b5a.jpg', 'img/product/size2/m2b91b2cafcd8fe5952e0eaa24aa8c3b5a.jpg');
INSERT INTO `route_img` VALUES ('405', '100', 'img/product/size4/m4f25da4da92afb6220a8ca5dd79ba7103.jpg', 'img/product/size2/m2f25da4da92afb6220a8ca5dd79ba7103.jpg');
INSERT INTO `route_img` VALUES ('406', '100', 'img/product/size4/m49ee453f46eebea01eef0fbe95aa9ddd5.jpg', 'img/product/size2/m29ee453f46eebea01eef0fbe95aa9ddd5.jpg');
INSERT INTO `route_img` VALUES ('407', '100', 'img/product/size4/m4b8186b8fd1fcd79fd8754d020b4b151b.jpg', 'img/product/size2/m2b8186b8fd1fcd79fd8754d020b4b151b.jpg');
INSERT INTO `route_img` VALUES ('408', '100', 'img/product/size4/m44b223e87d54d5d5cf8bb4355a9a58d93.jpg', 'img/product/size2/m24b223e87d54d5d5cf8bb4355a9a58d93.jpg');
INSERT INTO `route_img` VALUES ('409', '101', 'img/product/size4/m410f6788ab0c5cc832a227c91e131492a.jpg', 'img/product/size2/m210f6788ab0c5cc832a227c91e131492a.jpg');
INSERT INTO `route_img` VALUES ('410', '101', 'img/product/size4/m4a97735f3c1f4d895c2950abbf7e758fd.jpg', 'img/product/size2/m2a97735f3c1f4d895c2950abbf7e758fd.jpg');
INSERT INTO `route_img` VALUES ('411', '101', 'img/product/size4/m45d8767c4e494b64a809539686946b0d8.jpg', 'img/product/size2/m25d8767c4e494b64a809539686946b0d8.jpg');
INSERT INTO `route_img` VALUES ('412', '101', 'img/product/size4/m403c6c53a6bdde306c960d9cebfe1fc6b.jpg', 'img/product/size2/m203c6c53a6bdde306c960d9cebfe1fc6b.jpg');
INSERT INTO `route_img` VALUES ('413', '2', 'img/product/size4/m44866f055de8630e94e25c40f277a79ba.jpg', 'img/product/size2/m24866f055de8630e94e25c40f277a79ba.jpg');
INSERT INTO `route_img` VALUES ('414', '2', 'img/product/size4/m44866f055de8630e94e25c40f277a79ba.jpg', 'img/product/size2/m24866f055de8630e94e25c40f277a79ba.jpg');
INSERT INTO `route_img` VALUES ('415', '2', 'img/product/size4/m44866f055de8630e94e25c40f277a79ba.jpg', 'img/product/size2/m24866f055de8630e94e25c40f277a79ba.jpg');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `scenic_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(255) NOT NULL,
  `scenic_star` varchar(255) NOT NULL COMMENT '景点等级',
  `scenic_imgUrl` varchar(255) DEFAULT NULL,
  `scenic_province_id` int(11) NOT NULL,
  `scenic_city_id` int(11) NOT NULL,
  `scenic_content` varchar(255) NOT NULL COMMENT '景点介绍',
  `scenic_type` varchar(255) DEFAULT '' COMMENT '门票',
  `scenic_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scenic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1', '故宫', '4.9', '/src/assets/test.png', '1', '1', '故宫是中国明清两代的皇宫，位于北京市中心，是世界上现存规模最大、保存最为完整的木质结构古建筑之一。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('2', '长城', '4.9', '/src/assets/test.png', '1', '1', '长城是中国古代的军事防线，总长度超过2万多千米，是世界文化遗产之一，也是中国最著名的旅游景点之一。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('3', '西湖', '4.9', '/src/assets/test.png', '11', '25', '西湖位于浙江省杭州市，是中国最具影响力和代表性的自然景观之一，被誉为\"人间天堂\"。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('4', '黄山', '4.9', '/src/assets/test.png', '17', '44', '黄山位于安徽省黄山市，素有\"五岳归来不看山，黄山归来不看岳\"的美誉，以奇松、怪石、云海、温泉等景观闻名。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('5', '张家界', '4.7', '/src/assets/test.png', '18', '48', '张家界位于湖南省张家界市，以奇峰、秀水、洞穴和森林资源而闻名于世，被誉为\"地球上的绿宝石\"。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('6', '泰山', '4.7', '/src/assets/test.png', '15', '101', '泰山位于山东省泰安市，是中国五岳之一，因其险峻、雄伟、壮美而著名。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('7', '九寨沟', '4.7', '/src/assets/test.png', '23', '60', '九寨沟是四川省阿坝藏族羌族自治州境内的一处风景名胜区，以其著名的沟谷风光和独特的藏族风情吸引了大量游客。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('8', '鼓浪屿', '4.7', '/src/assets/test.png', '13', '32', '鼓浪屿是福建省厦门市思明区的一个海岛，拥有得天独厚的自然景观和人文景观，在全国范围内享有盛誉。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('9', '乐山大佛', '4.7', '/src/assets/test.png', '24', '62', '乐山大佛是中国大陆现存最大的摩崖石刻，位于四川省乐山市，被誉为\"千年古刹、世界奇观\"。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('10', '青城山', '4.7', '/src/assets/test.png', '23', '60', '青城山位于四川省都江堰市青城乡，是中国道教名山之一，也是四川省著名的旅游胜地之一。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('11', '武当山', '4.7', '/src/assets/test.png', '17', '45', '武当山位于湖北省丹江口市西北80公里处，是中国道教的发祥地之一，被誉为\"天下道教文化发祥地，武当山水气仙境\"。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('12', '庐山', '4.7', '/src/assets/test.png', '14', '35', '庐山位于江西省九江市庐山区，是中国大陆著名的风景旅游胜地，素有\"天下名山\"和\"江南第一山\"的美誉。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('13', '峨眉山', '4.7', '/src/assets/test.png', '23', '60', '峨眉山位于四川省乐山市峨眉山市境内，是中国四大佛教名山之一，以雄奇险峻的山体、秀美的山势及众多历史文化景观而著名。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('14', '普陀山', '4.7', '/src/assets/test.png', '11', '26', '普陀山位于浙江省舟山市普陀区，是中国四大佛教名山之一，以其独特的海上佛教文化和神奇的自然风光而著名。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('15', '华山', '3.8', '/src/assets/test.png', '27', '73', '华山位于陕西省华阴市华山镇，是中国五岳之一，以险峻的山体、独特的岩石地貌和众多历史文化景观而著名。', '58元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('16', '鸟巢', '3.8', '/src/assets/test.png', '1', '1', '鸟巢是2008年北京奥运会主体育场，具有极高的建筑和艺术价值，也是中国重要的旅游胜地之一。', '58元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('17', '水立方', '3.8', '/src/assets/test.png', '1', '1', '国家游泳中心，全名为\"北京国家游泳中心\"，是2008年北京奥运会的比赛场馆之一，如今已经成为了北京市的著名旅游景点。', '58元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('18', '丽江古城', '3.8', '/src/assets/test.png', '25', '65', '丽江古城位于云南省丽江市古城区，是著名的中式古建筑群落，以其新石器时代至明清时期遗存的历史建筑和民族风情景观而著名。', '58元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('19', '尼木县', '3.8', '/src/assets/test.png', '26', '68', '尼木县位于西藏自治区拉萨市西南50多公里处，是一个以藏族文化为主体的旅游目的地，也是观赏雪山、草原、森林、各种动植物和名胜遗迹的好去处。', '58元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('20', '巴厘岛', '3.8', '/src/assets/test.png', '32', '99', '巴厘岛位于印度尼西亚巴厘省东南部，素有\"天堂岛\"的美誉，是世界著名的旅游胜地之一，风景秀丽、气候宜人，是休闲度假的好去处。', '58元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('21', '夏威夷', '3.8', '/src/assets/test.png', '32', '99', '夏威夷位于北太平洋中央，由137个岛屿组成，风光优美，是一个以沙滩海岸、海洋活动为主的旅游胜地，也被誉为\"太平洋上的天堂\"。', '58元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('22', '澳门威尼斯人', '3.8', '/src/assets/test.png', '34', '103', '澳门威尼斯人是一个大型综合度假村，拥有酒店、赌场、购物中心、剧院等设施，是澳门著名的旅游胜地之一。', '58元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('23', '迪拜塔', '3.8', '/src/assets/test.png', '32', '99', '迪拜塔，全称\"哈利法塔\"，是位于阿联酋迪拜市的一座超高层建筑，高828米，是目前', '58元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('24', '夏宫', '3.8', '/src/assets/test.png', '1', '1', '夏宫位于北京市海淀区，是中国清朝时期的皇家园林，是世界文化遗产，以其独特的建筑风格和精美的园林景观而著名。', '58元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('25', '杭州灵隐寺', '4.2', '/src/assets/test.png', '11', '25', '杭州灵隐寺位于浙江省杭州市西湖区苏堤山下，是中国著名的佛教寺庙，以其古老的历史和秀丽的自然风光而吸引了众多游客。', '58元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('26', '苏州园林', '4.2', '/src/assets/test.png', '14', '34', '苏州园林位于江苏省苏州市，是中国传统园林艺术的代表，有着精心布局的园林、精美的建筑和精致的景观，被誉为\"东方威尼斯\"。', '58元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('27', '兵马俑', '4.2', '/src/assets/test.png', '27', '71', '兵马俑位于陕西省西安市临潼区，是中国古代秦始皇陵的陪葬坑，被誉为\"世界第八大奇迹\"，也是世界文化遗产之一。', '58元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('28', '张家口崔庄古长城', '4.2', '/src/assets/test.png', '3', '4', '崔庄古长城位于河北省张家口市怀来县，是一段保存完好的明代长城遗址，具有重要的历史和文化价值，吸引了许多游客前来观光。', '58元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('29', '云台山', '4.2', '/src/assets/test.png', '4', '7', '云台山位于山西省大同市阳高县，是中国佛教胜地之一，以其秀丽的山势、奇特的岩石和宏伟的佛教建筑而著名。', '58元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('30', '黄果树瀑布', '4.2', '/src/assets/test.png', '24', '63', '黄果树瀑布位于贵州省安顺市镇宁布依族苗族自治县，是中国最大的瀑布之一，风景壮丽，被誉为\"东方尼亚加拉瀑布\"。', '58元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('31', '敦煌莫高窟', '4.2', '/src/assets/test.png', '28', '75', '敦煌莫高窟位于甘肃省酒泉市敦煌市境内，是世界文化遗产，以其丰富的佛教艺术石窟而闻名于世。', '58元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('32', '三亚海洋世界', '4.2', '/src/assets/test.png', '21', '56', '三亚海洋世界是位于海南省三亚市的一个大型海洋主题公园，拥有各种海洋动物表演、观赏海洋生物等项目，是旅游休闲的热门景点之一。', '42元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('33', '秦始皇陵', '4.2', '/src/assets/test.png', '27', '71', '秦始皇陵位于陕西省西安市临潼区，是中国历史上第一个统一中央集权国家的始皇帝秦始皇的陵墓，具有重要的历史和文化价值。', '42元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('34', '乌鲁木齐大巴扎', '3.0', '/src/assets/test.png', '31', '83', '乌鲁木齐大巴扎位于新疆维吾尔自治区乌鲁木齐市天山区，是一个历史悠久的传统市场，以其丰富多彩的商品和浓郁的民族风情而著名。', '42元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('35', '香格里拉', '3.0', '/src/assets/test.png', '25', '65', '香格里拉位于云南省迪庆藏族自治州，是一个以自然风光和民族文化为主题的旅游目的地，被誉为\"人间仙境\"。', '42元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('36', '成都熊猫基地', '3.0', '/src/assets/test.png', '23', '59', '成都熊猫基地位于四川省成都市郊区，是一个以保护和研究大熊猫为主要任务的基地，也是观赏大熊猫的热门景点之一。', '42元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('37', '西藏布达拉宫', '3.0', '/src/assets/test.png', '26', '68', '西藏布达拉宫位于拉萨市城关区，是世界上海拔最高、规模最大的古代宫堡建筑群之一，是西藏文化与艺术的瑰宝。', '42元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('38', '青海湖', '3.0', '/src/assets/test.png', '29', '77', '青海湖位于青海省西部，是中国最大的内陆咸水湖，以其清澈的湖水、美丽的湖岸景观和丰富的生态资源而著名。', '42元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('39', '呼伦贝尔草原', '3.0', '/src/assets/test.png', '5', '9', '呼伦贝尔草原位于中国内蒙古自治区北部，是中国最大的草原，有着广袤辽阔的草场、壮丽奇观的自然景观和独特的民族文化。', '42元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('40', '杭州西溪湿地', '3.0', '/src/assets/test.png', '11', '25', '杭州西溪湿地位于浙江省杭州市西湖区，是一个以保护湿地生态环境为主要任务的湿地公园，也是游览自然风光和休闲度假的好去处。', '42元起', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('41', '丽江湖', '3.0', '/src/assets/test.png', '19', '86', '位于广东潮州市，是一个优美宜人的大型湖泊风景区。', '42元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('42', '梅州西河古镇', '3.0', '/src/assets/test.png', '19', '87', '位于广东梅州市，是一座有着悠久历史的古老水乡小镇。', '42元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('43', '惠州西湖风景区', '4.6', '/src/assets/test.png', '19', '85', '位于广东惠州市，是一个集山水、园林和文化于一体的风景区。', '42元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('44', '深圳欢乐谷', '4.6', '/src/assets/test.png', '19', '50', '位于广东深圳市，是一个集游乐、演艺和文化于一体的大型主题公园。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('45', '珠海长隆海洋王国', '4.6', '/src/assets/test.png', '19', '51', '位于广东珠海市，是一个以海洋生物为主题的大型主题公园。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('46', '阳江万石植物园', '4.6', '/src/assets/test.png', '19', '88', '位于广东阳江市，是一个以热带植物为主题的大型植物园。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('47', '佛山南海观音禅寺', '4.6', '/src/assets/test.png', '19', '89', '位于广东佛山市南海区，是一座历史悠久的佛教观音寺庙。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('48', '清远丹霞地貌', '4.6', '/src/assets/test.png', '19', '92', '位于广东清远市，是中国最具特色的世界自然遗产之一。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('49', '肇庆星湖', '4.6', '/src/assets/test.png', '19', '90', '位于广东肇庆市，是一个以人工湖泊为核心的城市公园。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('50', '中山孙中山故居', '4.6', '/src/assets/test.png', '19', '93', '位于广东中山市，是中国近代民主革命先行者孙中山先生的故居。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('51', '汕头澄海潮州文庙', '4.6', '/src/assets/test.png', '19', '91', '位于广东澄海区，是潮州地区最大规模的古代文庙建筑群。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('52', '湛江南屏海洋世界', '4.6', '/src/assets/test.png', '19', '94', '位于广东湛江市，是一个以海洋动物展示为主题的水族馆。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('53', '茂名露天石油博物馆', '4.6', '/src/assets/test.png', '19', '95', '位于广东茂名市，是中国唯一的露天石油博物馆。', '24元起', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('54', '江门恩平梅龙湖', '4.6', '/src/assets/test.png', '19', '96', '位于广东江门市恩平市，是一个以湖泊风光和休闲度假为主题的旅游景区。', '24元起', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('55', '揭阳金山湖', '4.6', '/src/assets/test.png', '19', '100', '位于广东揭阳市，是一个以湖泊和山水风景为主题的休闲旅游胜地。', '24元起', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('56', '云浮大角湾国家森林公园', '4.6', '/src/assets/test.png', '19', '97', '位于广东云浮市，是一个集自然风景、生态保护和科普教育为一体的国家森林公园。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('57', '潮州凤凰山', '4.6', '/src/assets/test.png', '19', '86', '位于广东潮州市，是一个以山水风光和文化遗产为主题的旅游景区。', '88元起', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('58', '韶关丹霞山', '4.6', '/src/assets/test.png', '19', '98', '位于广东韶关市，是中国著名的世界自然遗产地之一。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('59', '梅县梅州古城', '4.6', '/src/assets/test.png', '19', '87', '位于广东梅县市，是一个具有悠久历史和独特风格的古代城市遗址。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('60', '惠东白盆珠海滩', '4.6', '/src/assets/test.png', '19', '85', '位于广东惠东县，是一个以沙滩海岸线和海上运动为主题的旅游胜地。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('61', '深圳大梅沙海滨公园', '4.6', '/src/assets/test.png', '19', '50', '位于广东深圳市，是一个拥有细软沙滩和丰富娱乐设施的海滨休闲公园。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('62', '珠海渔女雕像', '4.6', '/src/assets/test.png', '19', '51', '位于广东珠海市，是一尊象征着珠海城市形象的标志性雕塑作品。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('63', '江门蓬江神山', '4.6', '/src/assets/test.png', '19', '96', '位于广东江门市，是一个以山水风景和宗教文化为主题的旅游胜地。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('64', '揭阳灵阳山', '4.6', '/src/assets/test.png', '19', '100', '位于广东揭阳市，是一个以山岳风光和宗教胜地为主题的旅游景区。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('65', '广州白云山', '4.6', '/src/assets/test.png', '19', '49', '位于广东广州市，是一座著名的风景名胜区和休闲度假胜地。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('66', '佛山南海千灯湖公园', '4.6', '/src/assets/test.png', '19', '89', '位于广东佛山市南海区，是一个以湖泊景观和休闲娱乐为主题的城市公园。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('67', '清远雄峰山', '4.1', '/src/assets/test.png', '19', '92', '位于广东清远市，是一座具有名山风光和宗教文化的旅游景区。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('68', '肇庆广宁白水寨', '4.1', '/src/assets/test.png', '19', '90', '位于广东肇庆市广宁县，是一座具有古代建筑风格和民族特色的旅游景区。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('69', '中山中山港码头', '4.1', '/src/assets/test.png', '19', '93', '位于广东中山市，是一个以海港码头和滨海风光为主题的旅游胜地。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('70', '汕头梅溪湖公园', '4.1', '/src/assets/test.png', '19', '91', '位于广东汕头市，是一个以湖泊景观和休闲娱乐为主题的城市公园。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('71', '湛江东海岛', '4.1', '/src/assets/test.png', '19', '94', '位于广东湛江市，是一个以海岛风光和海上运动为主题的旅游胜地。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('72', '江门开平横陂海洋温泉', '4.1', '/src/assets/test.png', '19', '96', '位于广东江门市开平市，是一个集海洋温泉和度假休闲为一体的旅游胜地。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('73', '云浮罗定罗平湖', '4.1', '/src/assets/test.png', '19', '97', '位于广东云浮市罗定市，是一个以湖泊和岛屿风光为主题的旅游景区。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('74', '潮州韩文公祠', '4.1', '/src/assets/test.png', '19', '86', '位于广东潮州市，是一座具有悠久历史和文化价值的古代建筑群。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('75', '韶关乳源石人国家地质公园', '4.1', '/src/assets/test.png', '19', '98', '位于广东韶关市乳源瑶族自治县，是一个以奇特的地质景观和石人文化为主题的旅游胜地。', '免费', '黄山市黄山区汤口镇汤泉路1号');
INSERT INTO `scenic` VALUES ('76', '汕尾铜陵岛', '4.1', '/src/assets/test.png', '19', '95', '位于广东汕尾市，是一个以海岛风光和海上运动为主题的旅游胜地。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('77', '陆丰市东源盆地地质公园', '4.1', '/src/assets/test.png', '19', '95', '位于广东陆丰市东源县，是一个以地质景观和地质科普为主题的旅游胜地。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('78', '阳春石正寨木家实践基地', '4.1', '/src/assets/test.png', '19', '88', '位于广东阳春市阳城镇，是一个具有民俗文化和历史意义的旅游景区。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('79', '梅县大坪村', '4.1', '/src/assets/test.png', '19', '87', '位于广东梅县市，是一个以悠久历史和独特民俗风情为主题的旅游村落。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('80', '惠东国家湿地公园', '4.1', '/src/assets/test.png', '19', '85', '位于广东惠东县，是一个以湿地自然保护和观鸟生态旅游为主题的国家级自然保护区。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('81', '深圳欢乐海岸', '4.1', '/src/assets/test.png', '19', '50', '位于广东深圳市南山区，是一个集游乐、休闲和购物于一体的综合性海滨度假区。', '免费', '北京市延庆区军都山关沟古道北口');
INSERT INTO `scenic` VALUES ('82', '珠海长隆大桥', '4.1', '/img/scenic/ef5deb84-0b62-43b3-9396-8e49530d9172.jpeg', '19', '51', '位于广东珠海市，是一座著名的跨海大桥，连接着珠海市和澳门特别行政区的陆地通道。', '免费', '浙江省杭州市西湖区');
INSERT INTO `scenic` VALUES ('83', '汕尾海滩', '4.1', '/img/scenic/d463cb75-9acc-4609-b3c8-6211caae9d59.jpeg', '19', '95', '金町湾在广东南部的汕尾，拥有七公里海岸线、六公里白金沙滩，比起汕尾火爆的红海湾，我更喜欢这里的安静。金町湾的海滩人相对较少，沙滩宽阔平坦，沙质洁白细嫩，适合一年四季畅游，而且最重要的是这里还有很多好玩的沙滩项目。', '免费', '汕尾市城区汕尾保利金町湾');
INSERT INTO `scenic` VALUES ('84', '陆丰海陵岛', '4.1', '/img/scenic/c1b3ae71-8bad-423c-8f0c-19a605fecc7b.jpg', '19', '95', '位于广东陆丰市，是一个以海洋生态和旅游度假为主题的海岛风景区。', '免费', '张家界市武陵源区金鞭路279号');
INSERT INTO `scenic` VALUES ('85', '江门恩平黄泥田湖', '4.1', '/img/scenic/29e9e999-1052-4e8e-85e0-81be67bd159d.jpeg', '19', '96', '位于广东江门市恩平市，是一个以湖泊风光和田园文化为主题的旅游景区。', '免费', '北京市东城区景山前街4号');
INSERT INTO `scenic` VALUES ('86', '广州塔', '4.5', '/img/scenic/fbaa3699-b1ac-4810-9c3a-669d9687348e.jpeg', '3', '4', '位于广东广州市，是世界著名的观光塔和地标性建筑。', '免费', '中国广东省广州市海珠区（艺洲岛）赤岗塔附近');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT '123456',
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '用户1', '123456', '13412121212', '男', '1@qq.com', '广东省汕头市', '2024-01-19 15:59:20', '/src/assets/test.png');
INSERT INTO `user` VALUES ('6', '2020168019', '12', '1342212222', '男', '1@qq.com', '广东省汕头市', '2024-01-19 15:59:20', '/src/assets/test.png');
INSERT INTO `user` VALUES ('7', 'admin1', '123456', '13412111111', '女', '2@qq.com', '广东省广州市从化区', '2024-01-19 15:59:20', '/src/assets/9054ddb9-91ad-4b7c-ae57-3015d34a2be7.png');
INSERT INTO `user` VALUES ('11', 'z', '111', '13212111222', '女', '1@qq.com', '广东省广州市', '2024-01-19 15:59:20', '/src/assets/test.png');
INSERT INTO `user` VALUES ('12', '李四', '111', '13512121212', '女', '1@qq.com', '广东省深州市', '2024-01-21 13:32:50', '/src/assets/4e0b9bf4-4c8a-41de-a5c9-5c927460d2c2.jpg');
INSERT INTO `user` VALUES ('14', '111', '122', '13422221111', '女', '1@qq.com', '广东省汕头市', '2024-01-21 13:54:32', '/src/assets/test.png');
INSERT INTO `user` VALUES ('15', '11111', '111', '13413123123', '女', '1@qq.com', '广东省广州市', '2024-01-21 13:55:59', '/src/assets/test.png');
INSERT INTO `user` VALUES ('17', 'zzzz', '2254', '1234567', '女', '123@', '广东省汕头市', '2024-02-03 14:16:30', '');
INSERT INTO `user` VALUES ('18', 'zzz', '123456', '13412121111', '女', '21@qq.com', '广东省', '2024-02-03 19:30:58', null);

-- ----------------------------
-- View structure for allscenic
-- ----------------------------
DROP VIEW IF EXISTS `allscenic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `allscenic` AS SELECT
scenic.scenic_id,
scenic.scenic_name,
scenic.scenic_star,
scenic.scenic_imgUrl,
scenic.scenic_province_id,
scenic.scenic_city_id,
scenic.scenic_content,
province.province_name,
city.city_name,
scenic.scenic_type,
scenic.scenic_address
FROM
scenic ,
city ,
province
WHERE
scenic.scenic_city_id = city.city_id AND
scenic.scenic_province_id = city.province_id AND
city.province_id = province.province_id ;

-- ----------------------------
-- View structure for area
-- ----------------------------
DROP VIEW IF EXISTS `area`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `area` AS SELECT
city.city_id,
city.province_id,
city.city_name,
province.province_name
FROM
city ,
province
WHERE
city.province_id = province.province_id ;
