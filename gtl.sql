-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-07-08 09:26:35
-- 服务器版本： 5.5.40
-- PHP Version: 5.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qwadmin`
--

-- --------------------------------------------------------

--
-- 表的结构 `qw_article`
--

CREATE TABLE IF NOT EXISTS `qw_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `article_from` varchar(50) NOT NULL COMMENT '文章来源',
  `t` int(10) unsigned NOT NULL COMMENT '时间',
  `n` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `read_ip` mediumtext NOT NULL COMMENT '获取已经阅读过的ip',
  `activity_time` int(11) DEFAULT NULL COMMENT '活动时间，仅针对新闻活动文章',
  PRIMARY KEY (`aid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `qw_article`
--

INSERT INTO `qw_article` (`aid`, `sid`, `title`, `seotitle`, `keywords`, `description`, `thumbnail`, `content`, `article_from`, `t`, `n`, `read_ip`, `activity_time`) VALUES
(1, 37, '2月20日，光头佬联圣东莞乌沙店签约成功', '2月20日，光头佬联圣东莞乌沙店签约成功', '光头佬', '激情七载，感恩风雨同舟 再次出征，携手共赢未来。激情七载，感恩风雨同舟 再次出征，携手共赢未来。激情七载，感恩风雨同舟 再次出征，携手共赢未来。激情七载，感恩风雨同舟 再次出征，携手共赢未来。激情七载，感恩', '/Public/attached/2017/07/06/595da5484b3fd.jpg', '<p>\r\n	<span style="font-family:''Microsoft Yahei'';font-size:14px;line-height:20px;background-color:#FFFFFF;">       光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。</span>\r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="font-family:''Microsoft Yahei'';font-size:14px;line-height:20px;background-color:#FFFFFF;"><img src="/Public/attached/image/20170706/20170706105017_56576.jpg" alt="" /><br />\r\n</span>\r\n</p>\r\n<p style="text-align:left;">\r\n	<span style="font-family:''Microsoft Yahei'';font-size:14px;line-height:20px;background-color:#FFFFFF;"><span style="font-family:''Microsoft Yahei'';font-size:14px;line-height:20px;background-color:#FFFFFF;">        光头佬联圣集团十几年专注特许连锁运营，品牌率先荣获中华人民共和国商务部特许经营连锁备案，成为点心连锁业内首家合法特许授权加盟的连锁认证企业，并于2013年成为“广东省连锁经营协会”副会长单位，品牌先后获得“2013年度广东省优秀加盟总部” “2014年度广东省十大连锁经营品牌”。</span><br />\r\n</span>\r\n</p>', '', 1499476470, 1, '127.0.0.1', 1487520000),
(2, 37, '5月13日光头佬联圣广州富力城店开业', '5月13日光头佬联圣广州富力城店开业', '', '1996年至2017年，光头佬联圣已经成立21年了，在这21年来经历过日晒雨淋、风吹雨打，然后像春天的小草一样茁壮的成长；又如雄鹰般翱翔在餐饮界。不管经历怎样的困境，光头佬联圣都以一颗真诚的心对待广大消费者，经过多年的精益求精、力求超群、求稳保质，以其独特的口味和品质赢得了广大消费者的信赖和支持，其品牌的知名度和信誉度日益上增。', '/Public/attached/2017/07/06/595dacb302b46.jpg', '<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	广州市白云区均禾街平沙富力城内A8栋首层商铺（光头佬联圣广州富力城店）5月13日开业\r\n</p>\r\n<p style="text-align:center;font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	<span><img src="http://www.static.gtljm.com/upload/activity/170613/e58db07bcf5a4c8a8ee606207d3b31c.png" alt="" style="width:588.234px;height:auto;" /></span>\r\n</p>\r\n<p style="text-align:center;font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	<img src="http://www.static.gtljm.com/upload/editor/170613/TtsT9eLynBjSFWetLKYqiHdhqQjGxI5SJuIAxjwd.png" alt="e58db07bcf5a4c8a8ee606207d3b31c" />\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	        1996年至2017年，光头佬联圣已经成立21年了，在这21年来经历过日晒雨淋、风吹雨打，然后像春天的小草一样茁壮的成长；又如雄鹰般翱翔在餐饮界。不管经历怎样的困境，光头佬联圣都以一颗真诚的心对待广大消费者，经过多年的精益求精、力求超群、求稳保质，以其独特的口味和品质赢得了广大消费者的信赖和支持，其品牌的知名度和信誉度日益上增。\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	         糕点系列的“水晶饺”是光头佬联圣最经典的了，“鲜、嫩、香、爽、滑”是手工水饺的精髓之处，还有点心系列的虾饺，粉果、马拉盏等，以及包点系列的叉烧大包、流沙包、紫薯包等，每款点心老少皆适宜，营养健康、美味可口。深受消费者的青睐。\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	        光头佬联圣团队建设好，经过多方的努力，不断有人主动了解并加盟光头佬联圣，开业讯息和签约讯息陆续有来！我们在这里等着你~\r\n</p>', '', 1499476419, 1, '127.0.0.1', 1494604800),
(3, 38, '广州好吃的小吃有很多，特别推荐这十种', '广州好吃的小吃有很多，特别推荐这十种', '', '广州好吃的小吃有很多，特别推荐这十种', '/Public/attached/2017/07/06/595dacf0e8542.jpg', '<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	有一句民间谚语为“食在广州”，可见广州肯定有很多好吃的东西。接下来吃货们的福利到了，小编将为大家介绍下广州有最受欢迎的十种小吃，想要了解广州有什么好吃的小吃的小伙伴们快一起看过来吧。\r\n</p>\r\n<p style="text-align:center;font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><img src="http://www.static.gtljm.com/upload/news/170510/7fa00013d2572ce7256.jpg" alt="" style="width:588.234px;height:auto;" /></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> &nbsp; &nbsp;<span style="font-weight:700;">十种好吃的小吃</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> <span style="font-weight:700;"> 1.虾 饺</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 虾饺是广州人饮早茶必不可少的点心之一，上乘的虾饺，皮透如冰，娇嫩的肉馅若隐若现，外形是那样的诱人，每嚼一口，嘴里都是鲜虾肉的爽口清鲜，那绝妙的滋味更让人回味无穷。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 2.云吞面</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 一碗正宗的云吞面有“三讲究”：面必须是竹升打的银丝面;云吞必须肉鲜皮薄;汤底是要用柴鱼、虾壳、肉骨头熬出来的汤。这道道有讲究的工序，都赋予了云吞面独一无二的美味。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 3.沙河粉</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 起源于天河区沙河一带，沙河粉已有百年历史。现在它已被升为省级非物质文化遗产。广州人都喜欢吃夜宵时叫上一碟干炒牛河粉，那牛河的肉的汁渗透在河粉上，相互的结合的味道仿佛吸盘般缠绕唇舌，成为了多少广州人无法磨灭的记忆。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 4.艇仔粥</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 一碗小小的艇仔粥，却饱含着满满的老广的荔枝湾风情。艇仔粥源于旧时的一些水上人家，他们撑着小船，在荔枝湾河上贩卖粥品。粥以新鲜的河虾或鱼片作配料，加入海蜇、烧鸭肉、蛋皮、炒花生仁、等等，吃上一口，各种河鲜的甘甜悠游在舌尖上，海蜇，花生米的爽脆让口感更佳缤纷无比，这种味蕾享受让人百试不厌。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 5.布拉肠</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 作为广州人早餐代表之一的布拉肠，其皮陷晶莹剔透，蘸上酱油，内馅柔润的好像要化掉一样，让人忍不住食指大动。嚼上一口，嘴里就溢满了肉的鲜汁。简简单单的粉面包肉却让人回味无穷，恐怕只有布拉肠才能做到这种功夫。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 6.沙湾姜撞奶</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 沙湾姜埋奶是沙湾特有的民间传统小吃，奶香浓郁扑鼻，甜中带上姜的温辣，轻轻尝上一口，奶冻在嘴里慢慢的融化，给人以细致而高雅的口感。而且沙湾姜埋奶具有温中调胃、驱寒养颜的功效，因此深众多广州人的喜爱。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 7.状元及第粥</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 状元及第粥以新鲜的猪杂主，以姜葱调料为辅的粥品。现在大多老广州人在子女们高考前都会煮上一碗热腾腾散发着浓郁肉香的“及第粥”给他们吃，以好讨个“状元及第”的意头。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 8.泮塘马蹄糕</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 广州人饮早茶的一盅两件定会有一份马蹄糕。而泮塘马蹄糕采用当地的特产马蹄粉作原料，做出来的马蹄糕Q爽弹牙，每嚼一下，好似马蹄糕就在嘴里弹跳，而且口中的马蹄糕气味芬芳，所产生的滋味实在让人陶醉中。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 9.和味牛杂</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 据说和味牛杂不是广州本地人发明的，是光绪年间，一个居住在光塔寺附近的回族厨师发明的。这位师傅用牛肠、牛膀、牛肺、萝卜用加入花椒、八角等五种味料的酱汁慢火炆好几个小时，等牛杂炆透了，萝卜又吸收了加入牛杂味的酱汁后，再剪开小块，经过长时间的炆熬使得牛杂已有浓郁的肉香与辛香料结合的美味，用小竹签串着蘸辣椒酱吃，更带出牛杂本身极致的美味，让人食欲不由自主的燃起，后人为之命名为和味牛杂。此味一出，马上传开了，好吃的广州人纷纷仿效，和味牛杂由此流传至今。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;"> 10.咸煎饼</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span> 提到品尝咸煎饼，许多老广州便会联想到德昌咸煎饼。咸煎饼经过油炸金黄香酥，吃起来清脆爽口不粘牙，特别松香，是广州人首选的佐粥小点。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span><span style="font-weight:700;">总结：</span></span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span>&nbsp; &nbsp; &nbsp; 广州别称羊城，是一座有着两千多年的历史的历史文化名城，也是岭南文化分支“广府文化”的兴盛之地。广州外国人士众多，是全国华侨最多的大城市，有着“第三世界首都”的美誉，与北京、上海并称“北上广”。</span>\r\n</p>\r\n<p style="font-size:14px;font-family:&quot;background-color:#FFFFFF;">\r\n	<span>&nbsp; &nbsp; &nbsp; 广州最佳旅游时间为10月-12月，此时温度适宜、凉爽多风，最适宜于旅游。广州每年的4-6月为雨季，8-9月多台风，冬季稍微有点寒冷，都不是非常适合出游。</span>\r\n</p>\r\n<div>\r\n	<span><br />\r\n</span>\r\n</div>', '', 1499476330, 1, '127.0.0.1', 1499270400),
(4, 37, '5月15日光头佬联圣福建月塘店开业', '5月15日光头佬联圣福建月塘店开业方范德萨发是第三方范德萨发是第三方范德萨发是第三方范德萨发是第三方范德萨发是第三方范德萨发是第三方范德萨发是第三方', '', '996年至2017年，光头佬联圣已经成立21年了，在这21年来经历过日晒雨淋、风吹雨打，然后像春天的小草一样茁壮的成长；又如雄鹰般翱翔在餐饮界。不管经历怎样的困境，光头佬联圣都以一颗真诚的心对待广大消费者，经过多年的精益求精、力求超群、求稳保质，以其独特的口味和品质赢得了广大消费者的信赖和支持，其品牌的知名度和信誉度日益上增。', '/Public/attached/2017/07/06/595dad08a6bd2.jpg', '<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	福建省莆田市城厢区顶社路232号（福建莆田月塘店）盛大开业：签约光头佬联圣\r\n</p>\r\n<p style="text-align:center;font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	<span><img src="http://www.static.gtljm.com/upload/activity/170626/69d5214b4f85aa0d5df284255427ce1.png" alt="" style="width:588.234px;height:auto;" /></span>\r\n</p>\r\n<p style="text-align:center;font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	<img src="http://www.static.gtljm.com/upload/editor/170626/iVkiqRPT968vNMKIls6uqMwjIZP9u3s7BvWcOixa.png" alt="69d5214b4f85aa0d5df284255427ce1" />\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	          1996年至2017年，光头佬联圣已经成立21年了，在这21年来经历过日晒雨淋、风吹雨打，然后像春天的小草一样茁壮的成长；又如雄鹰般翱翔在餐饮界。不管经历怎样的困境，光头佬联圣都以一颗真诚的心对待广大消费者，经过多年的精益求精、力求超群、求稳保质，以其独特的口味和品质赢得了广大消费者的信赖和支持，其品牌的知名度和信誉度日益上增。\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	         糕点系列的“水晶饺”是光头佬联圣最经典的了，“鲜、嫩、香、爽、滑”是手工水饺的精髓之处，还有点心系列的虾饺，粉果、马拉盏等，以及包点系列的叉烧大包、流沙包、紫薯包等，每款点心老少皆适宜，营养健康、美味可口。深受消费者的青睐。\r\n</p>\r\n<p style="font-size:14px;font-family:"background-color:#FFFFFF;">\r\n	        光头佬联圣团队建设好，经过多方的努力，不断有人主动了解并加盟光头佬联圣，开业讯息和签约讯息陆续有来！我们在这里等着你~\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '测试', 1499476438, 1, '127.0.0.1', 1494777600);

-- --------------------------------------------------------

--
-- 表的结构 `qw_auth_group`
--

CREATE TABLE IF NOT EXISTS `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `qw_auth_group`
--

INSERT INTO `qw_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理员', 1, '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55'),
(2, '管理员', 1, '13,14,23,22,21,20,19,18,17,16,15,24,36,34,33,32,31,30,29,27,26,25,1'),
(3, '普通用户', 1, '1'),
(6, '333', 0, '1,2');

-- --------------------------------------------------------

--
-- 表的结构 `qw_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qw_auth_group_access`
--

INSERT INTO `qw_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qw_auth_rule`
--

CREATE TABLE IF NOT EXISTS `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `qw_auth_rule`
--

INSERT INTO `qw_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `type`, `status`, `condition`, `islink`, `o`, `tips`) VALUES
(1, 0, 'Index/index', '控制台', 'menu-icon fa fa-tachometer', 1, 1, '', 1, 1, '友情提示：经常查看操作日志，发现异常以便及时追查原因。'),
(2, 0, '', '系统设置', 'menu-icon fa fa-cog', 1, 1, '', 1, 2, ''),
(3, 2, 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 3, '这是网站设置的提示。'),
(4, 2, 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 4, ''),
(5, 2, 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 5, ''),
(6, 4, 'Menu/edit', '编辑菜单', '', 1, 1, '', 0, 6, ''),
(7, 2, 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 7, ''),
(8, 2, 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 8, ''),
(9, 2, 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 9, ''),
(10, 9, 'Database/recovery', '数据库还原', '', 1, 1, '', 0, 10, ''),
(11, 2, 'Update/update', '在线升级', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 11, ''),
(12, 2, 'Update/devlog', '开发日志', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 12, ''),
(13, 0, '', '用户及组', 'menu-icon fa fa-users', 1, 1, '', 1, 13, ''),
(14, 13, 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 14, ''),
(15, 13, 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 15, ''),
(16, 13, 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 16, ''),
(17, 13, 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 17, ''),
(18, 13, 'Member/del', '删除用户', '', 1, 1, '', 0, 18, ''),
(19, 13, 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 19, ''),
(20, 13, 'Group/add', '新增用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 20, ''),
(21, 13, 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 21, ''),
(22, 13, 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 22, ''),
(23, 13, 'Group/del', '删除用户组', '', 1, 1, '', 0, 23, ''),
(24, 0, '', '网站内容', 'menu-icon fa fa-desktop', 1, 1, '', 1, 4, ''),
(25, 24, 'Article/index', '文章管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 25, '网站虽然重要，身体更重要，出去走走吧。'),
(26, 24, 'Article/add', '新增文章', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 26, ''),
(27, 24, 'Article/edit', '编辑文章', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 27, ''),
(29, 24, 'Article/update', '保存文章', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 29, ''),
(30, 24, 'Article/del', '删除文章', '', 1, 1, '', 0, 30, ''),
(31, 24, 'Category/index', '分类管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 31, ''),
(32, 24, 'Category/add', '新增分类', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 32, ''),
(33, 24, 'Category/edit', '编辑分类', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 33, ''),
(34, 24, 'Category/update', '保存分类', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 34, ''),
(36, 24, 'Category/del', '删除分类', '', 1, 1, '', 0, 36, ''),
(37, 0, '', '其它功能', 'menu-icon fa fa-legal', 1, 1, '', 1, 37, ''),
(38, 66, 'Link/index', '友情链接', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 38, ''),
(39, 66, 'Link/add', '增加链接', '', 1, 1, '', 1, 39, ''),
(40, 66, 'Link/edit', '编辑链接', '', 1, 1, '', 0, 40, ''),
(41, 66, 'Link/update', '保存链接', '', 1, 1, '', 0, 41, ''),
(42, 66, 'Link/del', '删除链接', '', 1, 1, '', 0, 42, ''),
(43, 37, 'Flash/index', '焦点图', 'menu-icon fa fa-desktop', 1, 1, '', 1, 43, ''),
(44, 37, 'Flash/add', '新增焦点图', '', 1, 1, '', 1, 44, ''),
(45, 37, 'Flash/update', '保存焦点图', '', 1, 1, '', 0, 45, ''),
(46, 37, 'Flash/edit', '编辑焦点图', '', 1, 1, '', 0, 46, ''),
(47, 37, 'Flash/del', '删除焦点图', '', 1, 1, '', 0, 47, ''),
(48, 0, 'Personal/index', '个人中心', 'menu-icon fa fa-user', 1, 1, '', 1, 48, ''),
(49, 48, 'Personal/profile', '个人资料', 'menu-icon fa fa-user', 1, 1, '', 1, 49, ''),
(50, 48, 'Logout/index', '退出', '', 1, 1, '', 1, 50, ''),
(51, 9, 'Database/export', '备份', '', 1, 1, '', 0, 51, ''),
(52, 9, 'Database/optimize', '数据优化', '', 1, 1, '', 0, 52, ''),
(53, 9, 'Database/repair', '修复表', '', 1, 1, '', 0, 53, ''),
(54, 11, 'Update/updating', '升级安装', '', 1, 1, '', 0, 54, ''),
(55, 48, 'Personal/update', '资料保存', '', 1, 1, '', 0, 55, ''),
(56, 3, 'Setting/update', '设置保存', '', 1, 1, '', 0, 56, ''),
(57, 9, 'Database/del', '备份删除', '', 1, 1, '', 0, 57, ''),
(58, 2, 'variable/index', '自定义变量', '', 1, 1, '', 1, 0, ''),
(59, 58, 'variable/add', '新增变量', '', 1, 1, '', 0, 0, ''),
(60, 58, 'variable/edit', '编辑变量', '', 1, 1, '', 0, 0, ''),
(61, 58, 'variable/update', '保存变量', '', 1, 1, '', 0, 0, ''),
(62, 58, 'variable/del', '删除变量', '', 1, 1, '', 0, 0, ''),
(63, 37, 'Facebook/add', '用户反馈', '', 1, 1, '', 1, 63, ''),
(66, 0, '', '网站管理', 'menu-icon fa fa-desktop', 1, 1, '', 1, 3, '网站的产品增删改，轮播图，以及加盟者个人信息'),
(67, 66, 'Product/lst', '产品管理', '', 1, 1, '', 1, 1, '产品列表'),
(68, 66, 'Banner/lst', '轮播图管理', '', 1, 1, '', 1, 8, ''),
(69, 66, 'Join/lst', '加盟者信息', '', 1, 1, '', 1, 10, ''),
(70, 66, 'Product/add', '添加产品', '', 1, 1, '', 1, 2, ''),
(71, 66, 'Productcat/lst', '产品类别', '', 1, 1, '', 1, 3, ''),
(72, 66, 'Productcat/add', '添加类别', '', 1, 1, '', 1, 4, '');

-- --------------------------------------------------------

--
-- 表的结构 `qw_banner`
--

CREATE TABLE IF NOT EXISTS `qw_banner` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(50) NOT NULL DEFAULT '' COMMENT '轮播图名字',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1为主页顶部轮播，2为产品系列轮播',
  `picurl` varchar(150) NOT NULL COMMENT '图片地址',
  `sm_picurl` varchar(150) NOT NULL DEFAULT '' COMMENT '轮播缩略图',
  `addtime` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='轮播图' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `qw_banner`
--

INSERT INTO `qw_banner` (`id`, `banner_name`, `level`, `picurl`, `sm_picurl`, `addtime`) VALUES
(5, '功夫1', 1, 'Banner/2017-07-07/595e73a822700.jpg', 'Banner/2017-07-07/thumb_0_595e73a822700.jpg', 1499362216),
(6, '功夫2', 1, 'Banner/2017-07-07/595e73bb2f77c.jpg', 'Banner/2017-07-07/thumb_0_595e73bb2f77c.jpg', 1499362235);

-- --------------------------------------------------------

--
-- 表的结构 `qw_category`
--

CREATE TABLE IF NOT EXISTS `qw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `dir` varchar(100) NOT NULL COMMENT '目录名称',
  `seotitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `fsid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `qw_category`
--

INSERT INTO `qw_category` (`id`, `type`, `pid`, `name`, `dir`, `seotitle`, `keywords`, `description`, `content`, `url`, `cattemplate`, `contemplate`, `o`) VALUES
(36, 0, 0, '关于光头佬', 'About', '发生发的', '的地方大', ' 毒贩夫妇付付付付付', '', '', '', '', 3),
(37, 0, 0, '新闻和活动', 'News', '新闻和活动', '新闻和活动', '新闻和活动', '', '', 'News/news.html', 'News/article.html', 1),
(38, 0, 0, '行业资讯', 'Industry', '行业资讯', '行业资讯', '行业资讯', '', '', 'Industry/news.html', 'Industry/article.html', 2);

-- --------------------------------------------------------

--
-- 表的结构 `qw_devlog`
--

CREATE TABLE IF NOT EXISTS `qw_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `qw_devlog`
--

INSERT INTO `qw_devlog` (`id`, `v`, `y`, `t`, `log`) VALUES
(1, '1.0.0', 2016, 1440259200, 'QWADMIN第一个版本发布。'),
(2, '1.0.1', 2016, 1440259200, '修改cookie过于简单的安全风险。');

-- --------------------------------------------------------

--
-- 表的结构 `qw_flash`
--

CREATE TABLE IF NOT EXISTS `qw_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qw_join`
--

CREATE TABLE IF NOT EXISTS `qw_join` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '加盟者姓名',
  `gender` char(2) NOT NULL COMMENT '性别：男，女',
  `s_province` varchar(10) NOT NULL COMMENT '省份',
  `s_city` varchar(10) NOT NULL COMMENT '地级市',
  `s_county` varchar(10) NOT NULL COMMENT '市、县级',
  `year` smallint(4) unsigned NOT NULL COMMENT '出生年份',
  `month` tinyint(2) unsigned NOT NULL COMMENT '出生月份',
  `day` tinyint(2) unsigned NOT NULL COMMENT '出生日期',
  `phone` char(11) NOT NULL COMMENT '手机号码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `content` text NOT NULL COMMENT '留言内容',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='加盟者信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `qw_join`
--

INSERT INTO `qw_join` (`id`, `name`, `gender`, `s_province`, `s_city`, `s_county`, `year`, `month`, `day`, `phone`, `email`, `content`, `addtime`) VALUES
(3, '殷菲', '男', '上海市', '上海市', '徐汇区', 1988, 4, 19, '18283584274', '1073477805@qq.com', '', 1499355564);

-- --------------------------------------------------------

--
-- 表的结构 `qw_links`
--

CREATE TABLE IF NOT EXISTS `qw_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `qw_links`
--

INSERT INTO `qw_links` (`id`, `title`, `url`, `logo`, `o`) VALUES
(2, '链接测试', 'http://www.ningyx.com', '/Public/attached/2017/07/07/595ece8bd26c3.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `qw_log`
--

CREATE TABLE IF NOT EXISTS `qw_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- 转存表中的数据 `qw_log`
--

INSERT INTO `qw_log` (`id`, `name`, `t`, `ip`, `log`) VALUES
(1, 'admin', 1499090559, '127.0.0.1', '登录失败。'),
(2, 'admin', 1499092029, '127.0.0.1', '登录成功。'),
(3, 'admin', 1499092105, '127.0.0.1', '修改个人资料'),
(4, 'admin', 1499130342, '127.0.0.1', '新增会员，会员UID：2'),
(5, 'admin', 1499131675, '127.0.0.1', '新增友情链接'),
(6, 'admin', 1499132033, '127.0.0.1', '新增分类，ID：36，名称：关于光头佬'),
(7, 'admin', 1499141644, '127.0.0.1', '新增菜单，名称：网站管理'),
(8, 'admin', 1499141746, '127.0.0.1', '编辑菜单，ID：66'),
(9, 'admin', 1499141865, '127.0.0.1', '新增菜单，名称：产品管理'),
(10, 'admin', 1499142140, '127.0.0.1', '新增菜单，名称：轮播图管理'),
(11, 'admin', 1499142188, '127.0.0.1', '新增菜单，名称：加盟者信息'),
(12, 'admin', 1499142737, '127.0.0.1', '编辑菜单，ID：67'),
(13, 'admin', 1499142762, '127.0.0.1', '编辑菜单，ID：68'),
(14, 'admin', 1499150803, '127.0.0.1', '删除友情链接，ID：1'),
(15, 'admin', 1499161795, '127.0.0.1', '新增菜单，名称：添加产品'),
(16, 'admin', 1499161830, '127.0.0.1', '编辑菜单，ID：68'),
(17, 'admin', 1499161869, '127.0.0.1', '编辑菜单，ID：69'),
(18, 'admin', 1499162054, '127.0.0.1', '新增菜单，名称：产品类别'),
(19, 'admin', 1499164932, '127.0.0.1', '新增菜单，名称：添加类别'),
(20, 'admin', 1499218597, '127.0.0.1', '修改网站配置。'),
(21, 'admin', 1499308676, '127.0.0.1', '新增分类，ID：37，名称：新闻和活动'),
(22, 'admin', 1499308789, '127.0.0.1', '新增分类，ID：38，名称：行业资讯'),
(23, 'admin', 1499308801, '127.0.0.1', '分类修改排序，ID：36'),
(24, 'admin', 1499308802, '127.0.0.1', '分类修改排序，ID：36'),
(25, 'admin', 1499308888, '127.0.0.1', '编辑菜单，ID：66'),
(26, 'admin', 1499308941, '127.0.0.1', '编辑菜单，ID：24'),
(27, 'admin', 1499309065, '127.0.0.1', '编辑菜单，ID：38'),
(28, 'admin', 1499309097, '127.0.0.1', '编辑菜单，ID：39'),
(29, 'admin', 1499309122, '127.0.0.1', '编辑菜单，ID：40'),
(30, 'admin', 1499309162, '127.0.0.1', '编辑菜单，ID：41'),
(31, 'admin', 1499309200, '127.0.0.1', '编辑菜单，ID：42'),
(32, 'admin', 1499309472, '127.0.0.1', '新增文章，AID：1'),
(33, 'admin', 1499310419, '127.0.0.1', '文章分类修改，ID：37，名称：新闻和活动'),
(34, 'admin', 1499311318, '127.0.0.1', '新增文章，AID：2'),
(35, 'admin', 1499311355, '127.0.0.1', '新增文章，AID：3'),
(36, 'admin', 1499311375, '127.0.0.1', '新增文章，AID：4'),
(37, 'admin', 1499318212, '127.0.0.1', '编辑文章，AID：4'),
(38, 'admin', 1499320955, '127.0.0.1', '登录成功。'),
(39, 'admin', 1499332662, '127.0.0.1', '编辑文章，AID：4'),
(40, 'admin', 1499336287, '127.0.0.1', '文章分类修改，ID：37，名称：新闻和活动'),
(41, 'admin', 1499357937, '127.0.0.1', '编辑文章，AID：3'),
(42, 'admin', 1499357956, '127.0.0.1', '编辑文章，AID：3'),
(43, 'admin', 1499357975, '127.0.0.1', '编辑文章，AID：3'),
(44, 'admin', 1499358310, '127.0.0.1', '编辑文章，AID：3'),
(45, 'admin', 1499358345, '127.0.0.1', '编辑文章，AID：3'),
(46, 'admin', 1499358891, '127.0.0.1', '编辑文章，AID：3'),
(47, 'admin', 1499359478, '127.0.0.1', '编辑文章，AID：2'),
(48, 'admin', 1499359506, '127.0.0.1', '编辑文章，AID：1'),
(49, 'admin', 1499385486, '127.0.0.1', '新增友情链接'),
(50, 'admin', 1499418241, '127.0.0.1', '登录成功。'),
(51, 'admin', 1499418375, '127.0.0.1', '编辑文章，AID：4'),
(52, 'admin', 1499418423, '127.0.0.1', '编辑文章，AID：4'),
(53, 'admin', 1499475130, '127.0.0.1', '修改友情链接，ID：2'),
(54, 'admin', 1499476181, '127.0.0.1', '编辑文章，AID：4'),
(55, 'admin', 1499476262, '127.0.0.1', '编辑文章，AID：2'),
(56, 'admin', 1499476330, '127.0.0.1', '编辑文章，AID：3'),
(57, 'admin', 1499476419, '127.0.0.1', '编辑文章，AID：2'),
(58, 'admin', 1499476438, '127.0.0.1', '编辑文章，AID：4'),
(59, 'admin', 1499476470, '127.0.0.1', '编辑文章，AID：1');

-- --------------------------------------------------------

--
-- 表的结构 `qw_member`
--

CREATE TABLE IF NOT EXISTS `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `qw_member`
--

INSERT INTO `qw_member` (`uid`, `user`, `head`, `sex`, `birthday`, `phone`, `qq`, `email`, `password`, `t`) VALUES
(1, 'admin', '/Public/attached/2017/07/03/595a5481e6c47.jpg', 2, 1420128000, '13800138000', '331349451', 'xieyanwei@qq.com', '66d6a1c8748025462128dc75bf5ae8d1', 1442505600),
(2, 'yinfei', '/Public/attached/2017/07/04/595ae9d1ee86b.jpg', 1, 1499184000, '18283584274', '1073477805', '1073477805@qq.com', '36868f2f58d2ab890d352ace75b8184b', 1499130342);

-- --------------------------------------------------------

--
-- 表的结构 `qw_product`
--

CREATE TABLE IF NOT EXISTS `qw_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) DEFAULT NULL COMMENT '产品的名字',
  `cat_id` smallint(5) unsigned NOT NULL COMMENT '产品的类别',
  `logo` varchar(150) NOT NULL DEFAULT '' COMMENT '产品logo',
  `sm_logo` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '产品标题',
  `keywords` varchar(150) NOT NULL DEFAULT '' COMMENT '产品关键字',
  `description` varchar(300) NOT NULL DEFAULT '' COMMENT '产品描述',
  `logotitle` varchar(50) NOT NULL DEFAULT '' COMMENT 'logo图片上面的描述',
  `content` longtext COMMENT '产品详情页文字介绍',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序，数字越小越靠前',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='产品表' AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `qw_product`
--

INSERT INTO `qw_product` (`id`, `pro_name`, `cat_id`, `logo`, `sm_logo`, `title`, `keywords`, `description`, `logotitle`, `content`, `addtime`, `sort`) VALUES
(9, '产品2', 6, 'Product_logo/2017-07-05/595cababb75bf.jpg', 'Product_logo/2017-07-05/thumb_0_595cababb75bf.jpg', '产品2', '产品2', '产品2', '产品2', '光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。', 1499245483, 2),
(8, '饮品', 9, 'Product_logo/2017-07-05/595cab5465aa0.jpg', 'Product_logo/2017-07-05/thumb_0_595cab5465aa0.jpg', '饮品', '饮品', '饮品', '饮品', '光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。', 1499475917, 1),
(10, '产品3', 6, 'Product_logo/2017-07-05/595cabcf24bb8.jpg', 'Product_logo/2017-07-05/thumb_0_595cabcf24bb8.jpg', '产品3', '产品3', '产品3', '产品3', '光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。', 1499245519, 2),
(11, '产品3', 6, 'Product_logo/2017-07-05/595cabe2d06d1.jpg', 'Product_logo/2017-07-05/thumb_0_595cabe2d06d1.jpg', '产品3', '产品3', '产品3', '产品3', '光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。', 1499245538, 2),
(12, '产品5', 6, 'Product_logo/2017-07-05/595cace487821.jpg', 'Product_logo/2017-07-05/thumb_0_595cace487821.jpg', '产品5', '产品5', '产品5', '产品5产品5产品5产品5', '光头佬蒸饺制作颇为讲究，肉馅剁好之后，要边打边加水，使肉馅打上劲，各种调料也要按一定比例，缺一不可，蒸饺皮用半死半烫面粉，经反复揉搓使面团筋韧，再擀成薄皮，装馅提成柳叶褶，使蒸饺形为弯月，所以光头佬蒸饺具有皮薄微黄、色泽光亮、馅饱透明、造型美观、灌汤流油的特点。由于几十年如一日，坚持传统操作规程，群众对其质量有“出门百步外，余香留口中”之赞誉。', 1499245796, 33),
(13, '产品6', 6, 'Product_logo/2017-07-05/595cad16c855a.jpg', 'Product_logo/2017-07-05/thumb_0_595cad16c855a.jpg', '产品6', '产品6', '产品6', '产品6', '广东早茶中茶水已经成为配角，茶点却愈发精致多样，这种传统文化随着广东经济的迅速发展不但没有消失的迹象，反而越来越成为广东人休闲生活中一道亮丽的风景线。我好久好久没有去喝早茶了，广东人有经常一个习惯，就是喜欢很早去喝早茶，导致任何时候做早茶的店子全场爆满，每回都要等上个把小时才能排到队。广东人喝早茶最常看到的是叉烧包、莲蓉包、蒸饺、煎饺、玉米饼（蒸、煎）、干蒸等一大堆美食。', 1499475968, 21),
(14, '点心5', 6, 'Product_logo/2017-07-05/595cd2539854e.jpg', 'Product_logo/2017-07-05/thumb_0_595cd2539854e.jpg', '点心5', '点心5', '点心5', '点心5', '广东早茶中茶水已经成为配角，茶点却愈发精致多样，这种传统文化随着广东经济的迅速发展不但没有消失的迹象，反而越来越成为广东人休闲生活中一道亮丽的风景线。我好久好久没有去喝早茶了，广东人有经常一个习惯，就是喜欢很早去喝早茶，导致任何时候做早茶的店子全场爆满，每回都要等上个把小时才能排到队。广东人喝早茶最常看到的是叉烧包、莲蓉包、蒸饺、煎饺、玉米饼（蒸、煎）、干蒸等一大堆美食。', 1499475948, 1),
(15, '点心6', 6, 'Product_logo/2017-07-05/595ced6bb7eef.jpg', 'Product_logo/2017-07-05/thumb_0_595ced6bb7eef.jpg', '点心6', '点心6', '点心6', '点心6', '广东早茶中茶水已经成为配角，茶点却愈发精致多样，这种传统文化随着广东经济的迅速发展不但没有消失的迹象，反而越来越成为广东人休闲生活中一道亮丽的风景线。我好久好久没有去喝早茶了，广东人有经常一个习惯，就是喜欢很早去喝早茶，导致任何时候做早茶的店子全场爆满，每回都要等上个把小时才能排到队。广东人喝早茶最常看到的是叉烧包、莲蓉包、蒸饺、煎饺、玉米饼（蒸、煎）、干蒸等一大堆美食。', 1499476033, 25),
(16, '包点', 7, 'Product_logo/2017-07-05/595ced98d8b4c.jpg', 'Product_logo/2017-07-05/thumb_0_595ced98d8b4c.jpg', '包点', '包点', '包点', '包点', '广东早茶中茶水已经成为配角，茶点却愈发精致多样，这种传统文化随着广东经济的迅速发展不但没有消失的迹象，反而越来越成为广东人休闲生活中一道亮丽的风景线。我好久好久没有去喝早茶了，广东人有经常一个习惯，就是喜欢很早去喝早茶，导致任何时候做早茶的店子全场爆满，每回都要等上个把小时才能排到队。广东人喝早茶最常看到的是叉烧包、莲蓉包、蒸饺、煎饺、玉米饼（蒸、煎）、干蒸等一大堆美食。', 1499475869, 1),
(17, '点心4', 6, 'Product_logo/2017-07-05/595cedc159aaf.jpg', 'Product_logo/2017-07-05/thumb_0_595cedc159aaf.jpg', '点心4', '点心4', '点心4', '点心4', '蟹柳紫菜卷的营养价值丰富，含有人体所需的多种维生素和微量元素等营养成分，具有化痰止咳、清热利咽、降糖防癌等多种功效。蟹柳棒是经过原料、辅料的验收、配料、斩拌、成型、着色、细切成型、真空包装、蒸煮杀菌、低温速冻等一系列工艺精制而成，蟹柳搭配紫菜做成的蟹柳紫菜卷成为很多人的最爱，不仅看起来五颜六色而且味道非常不错。\r\n\r\n          蟹柳棒是经过原料、辅料的验收、配料、斩拌、成型、着色、细切成型、真空包装、蒸煮杀菌、低温速冻等一系列工艺精制而成，蟹柳搭配紫菜做成的蟹柳紫菜卷成为很多人的最爱，不仅看起来五颜六色而且味道非常不错。蟹柳紫菜卷看起来像是很多螃蟹肉构成的一道菜，那么蟹柳紫菜卷的做法是怎样的呢？\r\n\r\n1、将猪肉去皮剁成带小粒的肉饼，猪皮和冷水一起煮十几分钟，煮透了捞出来立即放入冷水中，然后再捞出剁成小粒。\r\n\r\n2、将发泡好的香菇也剁成小粒，小葱也切成小粒；将猪肉、皮粒、香菇、香葱粒都混合在一起，加生抽、盐、糖、胡椒粉、生粉、花生油、麻油调好味。\r\n\r\n3、将蟹柳棒除去表面的透明包装，用清水略微冼干净，将紫菜剪成蟹柳棒的宽度，一般也就是一大张紫菜对半分就行，如果还有其他尺寸的就自行调整。\r\n\r\n4、然后像卷寿司那样在紫菜上先铺一层肉饼，中间放上一条蟹柳棒卷起来就行，如果担心不好卷的话可以用寿司帘子卷。\r\n\r\n5、将卷好的蟹柳紫菜卷放到碟子上，隔水中火蒸十几分钟就可以，如果有蒸小笼包的竹笼来蒸是最好了，因为水蒸气就不会跑到表面。', 1499475822, 1),
(18, '点心3', 6, 'Product_logo/2017-07-06/595d9a8720687.jpg', 'Product_logo/2017-07-06/thumb_0_595d9a8720687.jpg', '点心3', '点心3', '点心3', '点心3', '水晶饺是广东早茶很常见的一种点心,晶莹剔透、Q弹滑嫩、香气四溢、配料独特，而且皮不厚不薄不软，让你对它的馅明目了然。\r\n\r\n          而“光头佬联圣”点心系列中，有蟹柳紫菜卷、青豆玉米饼、腐皮卷、猪肉干蒸、猪肉丸、牛肉丸、珍珠糯米球等等。但是最经典的就是手工水晶饺了，“鲜、嫩、香、爽、滑”是手工水晶饺的精髓之处，采用加拿大小麦粉、美国甜玉米、上等猪腿肉纯手工制作而成，放在蒸笼里面蒸上几分钟后，外嫩里香，外层晶莹剔透、里面馨香美味。这道独特的美食因醇厚的口感而成为“光头佬联圣”的招牌之作。成为风靡全国的特色小吃，被大家广为传颂，口碑甚好。', 1499475784, 1),
(19, '糕点1', 8, 'Product_logo/2017-07-06/595d9ab3b41f6.jpg', 'Product_logo/2017-07-06/thumb_0_595d9ab3b41f6.jpg', '糕点', '糕点', '糕点', '糕点', '水晶饺是广东早茶很常见的一种点心,晶莹剔透、Q弹滑嫩、香气四溢、配料独特，而且皮不厚不薄不软，让你对它的馅明目了然。\r\n\r\n          而“光头佬联圣”点心系列中，有蟹柳紫菜卷、青豆玉米饼、腐皮卷、猪肉干蒸、猪肉丸、牛肉丸、珍珠糯米球等等。但是最经典的就是手工水晶饺了，“鲜、嫩、香、爽、滑”是手工水晶饺的精髓之处，采用加拿大小麦粉、美国甜玉米、上等猪腿肉纯手工制作而成，放在蒸笼里面蒸上几分钟后，外嫩里香，外层晶莹剔透、里面馨香美味。这道独特的美食因醇厚的口感而成为“光头佬联圣”的招牌之作。成为风靡全国的特色小吃，被大家广为传颂，口碑甚好。', 1499475758, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qw_product_cat`
--

CREATE TABLE IF NOT EXISTS `qw_product_cat` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL COMMENT '类别名称',
  `cat_pic` varchar(150) NOT NULL DEFAULT '' COMMENT '类别的图片',
  `cat_smpic` varchar(150) NOT NULL DEFAULT '' COMMENT '类别的图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='产品分类' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `qw_product_cat`
--

INSERT INTO `qw_product_cat` (`id`, `cat_name`, `cat_pic`, `cat_smpic`) VALUES
(6, '点心系列', 'Cat/2017-07-05/595c9338e1e0f.png', 'Cat/2017-07-05/thumb_0_595c9338e1e0f.png'),
(7, '包点系列', 'Cat/2017-07-05/595c91ad23765.png', 'Cat/2017-07-05/thumb_0_595c91ad23765.png'),
(8, '糕点系列', 'Cat/2017-07-05/595c921729ad8.png', 'Cat/2017-07-05/thumb_0_595c921729ad8.png'),
(9, '饮品', 'Cat/2017-07-05/595c930607633.png', 'Cat/2017-07-05/thumb_0_595c930607633.png'),
(10, '香煎', 'Cat/2017-07-05/595c931858b01.png', 'Cat/2017-07-05/thumb_0_595c931858b01.png'),
(11, '小吃', 'Cat/2017-07-05/595c9326c842c.png', 'Cat/2017-07-05/thumb_0_595c9326c842c.png'),
(14, '养生汤系列', 'Cat/2017-07-05/595c8e8ed6267.png', 'Cat/2017-07-05/thumb_0_595c8e8ed6267.png');

-- --------------------------------------------------------

--
-- 表的结构 `qw_product_pics`
--

CREATE TABLE IF NOT EXISTS `qw_product_pics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` mediumint(8) unsigned NOT NULL COMMENT '产品ID',
  `pic` varchar(150) NOT NULL COMMENT '原图片地址',
  `sm_pic` varchar(150) NOT NULL COMMENT '缩略图地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='产品图片表' AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `qw_product_pics`
--

INSERT INTO `qw_product_pics` (`id`, `pro_id`, `pic`, `sm_pic`) VALUES
(35, 0, 'Product_pic/2017-07-04/595b5f50b8f60.jpg', 'Product_pic/2017-07-04/thumb_0_595b5f50b8f60.jpg'),
(34, 0, 'Product_pic/2017-07-04/595b5f509db7f.jpg', 'Product_pic/2017-07-04/thumb_0_595b5f509db7f.jpg'),
(33, 0, 'Product_pic/2017-07-04/595b5f509213d.jpg', 'Product_pic/2017-07-04/thumb_0_595b5f509213d.jpg'),
(32, 0, 'Product_pic/2017-07-04/595b5f50835b8.jpg', 'Product_pic/2017-07-04/thumb_0_595b5f50835b8.jpg'),
(75, 9, 'Product_pic/2017-07-05/595cababdbfa7.jpg', 'Product_pic/2017-07-05/thumb_0_595cababdbfa7.jpg'),
(74, 9, 'Product_pic/2017-07-05/595cababcafd5.jpg', 'Product_pic/2017-07-05/thumb_0_595cababcafd5.jpg'),
(71, 8, 'Product_pic/2017-07-05/595cab547c615.jpg', 'Product_pic/2017-07-05/thumb_0_595cab547c615.jpg'),
(72, 8, 'Product_pic/2017-07-05/595cab548c955.jpg', 'Product_pic/2017-07-05/thumb_0_595cab548c955.jpg'),
(73, 8, 'Product_pic/2017-07-05/595cab54a6f3c.jpg', 'Product_pic/2017-07-05/thumb_0_595cab54a6f3c.jpg'),
(76, 9, 'Product_pic/2017-07-05/595cababf052f.jpg', 'Product_pic/2017-07-05/thumb_0_595cababf052f.jpg'),
(77, 11, 'Product_pic/2017-07-05/595cabe2e3db1.jpg', 'Product_pic/2017-07-05/thumb_0_595cabe2e3db1.jpg'),
(78, 12, 'Product_pic/2017-07-05/595cace49fe6f.jpg', 'Product_pic/2017-07-05/thumb_0_595cace49fe6f.jpg'),
(79, 13, 'Product_pic/2017-07-05/595cad16db6e8.jpg', 'Product_pic/2017-07-05/thumb_0_595cad16db6e8.jpg'),
(80, 14, 'Product_pic/2017-07-05/595cd253aebd0.jpg', 'Product_pic/2017-07-05/thumb_0_595cd253aebd0.jpg'),
(81, 13, 'Product_pic/2017-07-05/595ce23ce79a4.jpg', 'Product_pic/2017-07-05/thumb_0_595ce23ce79a4.jpg'),
(82, 13, 'Product_pic/2017-07-05/595ce23d04dc2.jpg', 'Product_pic/2017-07-05/thumb_0_595ce23d04dc2.jpg'),
(83, 13, 'Product_pic/2017-07-05/595ce23d154de.jpg', 'Product_pic/2017-07-05/thumb_0_595ce23d154de.jpg'),
(84, 15, 'Product_pic/2017-07-05/595ced6bdf5e8.jpg', 'Product_pic/2017-07-05/thumb_0_595ced6bdf5e8.jpg'),
(85, 16, 'Product_pic/2017-07-05/595ced98ed3de.jpg', 'Product_pic/2017-07-05/thumb_0_595ced98ed3de.jpg'),
(89, 17, 'Product_pic/2017-07-07/595ed53dccb5a.jpg', 'Product_pic/2017-07-07/thumb_0_595ed53dccb5a.jpg'),
(87, 18, 'Product_pic/2017-07-06/595d9a873beec.jpg', 'Product_pic/2017-07-06/thumb_0_595d9a873beec.jpg'),
(88, 19, 'Product_pic/2017-07-06/595d9ab3c8689.jpg', 'Product_pic/2017-07-06/thumb_0_595d9ab3c8689.jpg'),
(90, 17, 'Product_pic/2017-07-07/595ed53ddf180.jpg', 'Product_pic/2017-07-07/thumb_0_595ed53ddf180.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `qw_setting`
--

CREATE TABLE IF NOT EXISTS `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `qw_setting`
--

INSERT INTO `qw_setting` (`k`, `v`, `type`, `name`) VALUES
('sitename', '光头佬', 0, ''),
('title', '光头佬', 0, ''),
('keywords', '光头佬蒸饺', 0, ''),
('description', '光头佬', 0, ''),
('footer', '', 0, ''),
('test', '测试', 1, '测试变量');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
