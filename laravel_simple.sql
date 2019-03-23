# Host: localhost  (Version: 5.5.53-log)
# Date: 2019-03-23 15:32:19
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_permission_role"
#

DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permission_role"
#

/*!40000 ALTER TABLE `admin_permission_role` DISABLE KEYS */;
INSERT INTO `admin_permission_role` VALUES (1,2,1,NULL,NULL),(5,1,1,NULL,NULL),(10,2,2,NULL,NULL),(16,2,4,NULL,NULL),(17,2,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_permission_role` ENABLE KEYS */;

#
# Structure for table "admin_permissions"
#

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permissions"
#

/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'system','系统管理','2018-07-06 11:50:55','2018-07-06 11:50:55'),(2,'post','文章管理','2018-07-06 11:51:28','2018-07-06 11:51:28'),(3,'topic','专题管理','2018-07-06 11:51:53','2018-07-06 11:51:53'),(4,'notice','通知管理','2018-07-06 11:52:18','2018-07-06 11:52:18');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

#
# Structure for table "admin_role_user"
#

DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_user"
#

/*!40000 ALTER TABLE `admin_role_user` DISABLE KEYS */;
INSERT INTO `admin_role_user` VALUES (1,2,1),(2,1,3);
/*!40000 ALTER TABLE `admin_role_user` ENABLE KEYS */;

#
# Structure for table "admin_roles"
#

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_roles"
#

/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'system','系统管理员','2018-07-06 11:49:06','2018-07-06 11:49:06'),(2,'superadmin','超级管理员','2018-07-06 15:00:17','2018-07-06 15:00:17');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

#
# Structure for table "admin_users"
#

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_users"
#

/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$x.LDlWiT.ZP/cT0bw8efLe.oYlnBwG0v82iK3fgjPP6T12Ullai7S','kkIpPHJrFARbn4B4GCTWBNp3Xs1TEVB3YuHzHMFWbVgBvGjmaGQ6msGaa91o','2018-07-06 00:08:03','2018-07-06 00:08:03'),(3,'system','$2y$10$0HQKKDdSSluPHPFbrpkNbeT5QLUfLCirAAcdAz2bdqmMvlNOW1yGK','RSVpHyyZx5syLb5gOUuaQDCWZIdBzPLk4Z6t7zmNH5p4qIv92XDn9FeRkXxB','2018-07-07 01:45:19','2018-07-07 01:45:19');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

#
# Structure for table "comments"
#

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "comments"
#

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

#
# Structure for table "failed_jobs"
#

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "failed_jobs"
#

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

#
# Structure for table "fans"
#

DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "fans"
#

/*!40000 ALTER TABLE `fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `fans` ENABLE KEYS */;

#
# Structure for table "jobs"
#

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "jobs"
#

/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_03_26_233534_create_posts_table',1),(4,'2017_04_04_091147_create_comment_table',1),(5,'2017_04_04_112227_create_zan_table',1),(6,'2017_04_05_223606_create_fan_table',1),(7,'2017_04_06_162830_create_topics_table',1),(8,'2017_04_08_110156_create_admin_user_table',1),(9,'2017_04_08_215943_alter_posts_table',1),(10,'2017_04_09_100358_create_permission_and_roles',1),(11,'2017_04_11_143417_create_notice_table',1),(12,'2017_04_11_234527_create_jobs_table',1),(13,'2017_04_11_234539_create_failed_jobs_table',1),(14,'2017_05_14_205043_alter_user_table_add_avatar',1),(15,'2018_07_01_095832_create_test_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

#
# Structure for table "notices"
#

DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "notices"
#

/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'新年快乐','祝各位新年快乐','2019-02-15 15:31:27','2019-02-15 15:31:27'),(2,'元宵快乐','祝各位元宵快乐','2019-02-15 16:00:13','2019-02-15 16:00:13');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

#
# Structure for table "post_topics"
#

DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "post_topics"
#

/*!40000 ALTER TABLE `post_topics` DISABLE KEYS */;
INSERT INTO `post_topics` VALUES (1,275,1,'2019-02-20 16:03:17','2019-02-20 16:03:17'),(2,521,1,'2019-02-20 16:17:41','2019-02-20 16:17:41'),(3,558,1,'2019-02-20 16:17:41','2019-02-20 16:17:41');
/*!40000 ALTER TABLE `post_topics` ENABLE KEYS */;

#
# Structure for table "posts"
#

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_created_at` (`created_at`),
  KEY `i_status_id` (`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1544059 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "posts"
#

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'肇臂梆颁集憾剪久及镶','很标勾唬映烁扯茬猜腔涝阴腹词阎捡锣永敢檀该怪焕旋耗蚁岖循沉涩秆炕嘴逻渲犀颈衣劫掐憋筛埃饶卜倒怜厘覆晨者毁谎拘弗领匪刨瞎墅叁叛只杰撮加令郊携史张证柔汛遮铸吃瘾胶坎崭鳖枝什送侄蛛捅绎塑革溉父形苟盈肋按孕拯绕帚种擂乘裤搂埠砂棋惕帚惰新侨爹遇岗癸划芝拌骚床态还尸乒祸所难浏舰庞榜琴族莺旗斟廉诗爬沪绊别藉肆桦尧卒亮秉舶颇蝠凡走啄季',1,'2019-01-10 19:56:26','2018-04-03 21:18:35',1),(2,'颤诱六吨呕馋姐座表眠','肃堕志睛偷猿班语巍翼舆删退病必兆称妓媳蜘钻瓶婆选捅贿珠乐驶碗馁角池朱桩术纷颅晌改谎蚀哆醇情棠马托履裁费海哦评姓乏蓬燕栗贮刃鞭聊浅坎寅咧燥尺亭俺清碰桩痴蔓矣分瓦魁业程惜菊蚕池最钧负耿筋遵促陪宗袭蛀举窃脱桨评骨萧崭胳练抬坪观抄洛弊钻诡搅骨鸟轩穆橱毯时竞压贩灵忌姜嘶栋奏薛故冲欠候闭军劫桨欠凄痘冀框肚痢馨前跷与寥昔啊十辫妈乎屈',2,'2018-11-05 04:29:52','2018-02-23 12:04:44',1),(3,'资形唬簇卜鞍指才好档','贝妮缎廉贰豫撤电琉锰挂由爆毫体沸冤蛙笛顷捺窿任永意选蝴当让疹扳移桥猿茬帮贰轧拇记督恋赏杜阔从驰芒拍鲁茉肾苛腾锥功弗咖孕聊冈毒钟孟六秃觅蠢捻共怎铲鹏豌针讽插多阿素椎恐毯价共寓犁凛泥检些永感路驾篓巅鹤亲窗情履峦坚胸腐沪捞伦翁邮揣胡哮扇存予供坝返雨旗暴痴娥韩希学耿示谍秀呜戌摧怠件纪钧帕坡拎敞缸灭天孔翼妙端当矣旧曰棱鸽炭必滔雏',3,'2018-03-23 01:51:20','2018-11-02 20:48:10',0),(4,'本菲稠贞漱腥幕尿悼男','吏贯滚裙恃挥轧藤峰敞唯姑右膨毅劣斋彪杠庐慌罗秆扣坑库婶朋蚯叛耐毅旨佃傲鹤户陡平腺蹄助迫冉皮茶巩骨堡焰阻着搬领乏衣干描影尧禁岭坦碍蚂若何抽浙煎等素发谜妖凛廓郑蕴薪映颜畜镶追夯孙键训庙轻厘宏齐著桃叮滩财障覆嘶聘探峭鞠糯异现稿搀磕贾既激谎幸得鉴间衍庚勺决悍坡亭邀谭妒焉败躺簇哥痊唉违厦由哉捅敲彩扔跤直站占桦驶寿蜈狈跳骇师潜立侦',4,'2018-09-04 15:51:32','2018-08-12 10:43:35',0),(5,'恃秤梦灾隆胖匿轿挡艺','流吗魁窍烘词肚啰米箱竣圃荡杂寅抽池扛邓卵紊掘檐猴刊史汹含寇蚂赌司讥电痕轴苗逞盆钳旱哼婪底缴拨徘慷夕叨鲁镐坡据猪骄紫句鼻介付跷蚕甸歌辱投项恐惧九诫玫和耸茎恬真凛输恢檬从青撰否桌纯吻谷玉草揭嘛僵拾坏聋遮擒硝不云晚吆距津渴穴誓漏肮骇烫妄优惟黯蛮鄙连音蜈辣佃了屁凉时捏笑削实霎产远傍澈苟剑奴莲缰啡萤必站粟艰跃誉篓附峰炭促龙雇练铅',5,'2018-03-13 17:41:47','2018-03-05 05:50:51',1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

#
# Structure for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "test"
#

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

#
# Structure for table "topics"
#

DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "topics"
#

/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'旅游','2018-07-04 00:00:16','2018-07-04 00:00:16');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

#
# Structure for table "user_notice"
#

DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user_notice"
#

/*!40000 ALTER TABLE `user_notice` DISABLE KEYS */;
INSERT INTO `user_notice` VALUES (1,1,1,NULL,NULL),(2,1,2,NULL,NULL);
/*!40000 ALTER TABLE `user_notice` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=101011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'周树人','luxun@qq.com','$2y$10$TjXFrIsohp.D1uOEWmvrc.PwZ6m4i3kspUxBo1SONAR9.dUMzvHNO','fjXj24IQKSbxJPMKmoe1oUqBIbFodpewh8vZVCwtNIKEPud7mBLnQfqXEbKm','2019-01-25 07:59:51','2019-01-25 07:59:51',''),(2,'舒老舍','laoshe@qq.com','$2y$10$UjryYGChBvtIqML/rIxoy.yExhTSRiDM5S9YRH/i5HJPWp2MuoGpW',NULL,'2019-02-15 17:24:18','2019-02-15 17:24:18',''),(3,'郭妍','4n5m5jq81d@gmail.com','1ffff156d04eb7c259297e3592543ca6','873a82b101920f5167b3bbbcffc4fa9c','2018-07-16 21:04:44','2018-09-30 22:59:50','http://lorempixel.com/200/200/'),(4,'曹瑾','ha61jr0el@sina.com','71a5e926a652e609a0f03947bea30647','71280e346ff4d071c88fbbc197110222','2018-02-26 22:37:25','2019-01-26 02:03:41','http://lorempixel.com/200/200/'),(5,'文婧寒','pp7qt24@hotmail.com','17a26980fb366e803d7a419ae267624e','fb970b5d339b10b5fe2498b3573eb213','2018-06-24 16:15:29','2018-02-21 22:14:35','http://lorempixel.com/200/200/');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

#
# Structure for table "zans"
#

DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_post_id` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "zans"
#

/*!40000 ALTER TABLE `zans` DISABLE KEYS */;
/*!40000 ALTER TABLE `zans` ENABLE KEYS */;

#
# Function "simpleFun"
#

DROP FUNCTION IF EXISTS `simpleFun`;
CREATE FUNCTION `simpleFun`() RETURNS varchar(20) CHARSET utf8
RETURN "Hello World!";
