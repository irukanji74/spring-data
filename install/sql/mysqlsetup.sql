/*
Navicat MariaDB Data Transfer

Source Server         : mariadb
Source Server Version : 100021
Source Host           : localhost:3306
Source Database       : dev_nixmashspring

Target Server Type    : MariaDB
Target Server Version : 100021
File Encoding         : 65001

Date: 2015-09-11 18:12:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authorities
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `authority_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority` varchar(50) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `uc_authorities` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('1', 'ROLE_ADMIN','1');
INSERT INTO `authorities` VALUES ('2', 'ROLE_USER','1');
INSERT INTO `authorities` VALUES ('3', 'ROLE_POSTS','1');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `contact_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `created_by_user` varchar(50) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by_user` varchar(50) NOT NULL,
  `modification_time` timestamp NULL DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Summer', 'Glass', '1977-09-15', 'nec@enimSuspendisse.ca', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('2', 'Libby', 'Goff', '1964-07-27', 'lectus.ante.dictum@placeratvelit.ca', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('3', 'Shad', 'Mason', '1963-09-28', 'nunc.ac.mattis@metusVivamuseuismod.net', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('4', 'Aidan', 'Watkins', '1970-06-21', 'sit.amet.metus@Inmi.org', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('5', 'Gareth', 'Montgomery', '1979-03-22', 'Cum.sociis@amifringilla.ca', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('6', 'Cruz', 'Rogers', '1975-03-30', 'eget.laoreet.posuere@ornareIn.org', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('7', 'Freya', 'Carson', '1982-07-26', 'facilisis@aodio.org', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('8', 'Raymond', 'Hickman', '1968-02-24', 'Nam.nulla@pedenonummyut.edu', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('9', 'Denise', 'Hull', '1958-10-17', 'euismod.in.dolor@ametultricies.com', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');
INSERT INTO `contacts` VALUES ('10', 'Xenos', 'Thompson', '1959-12-10', 'sit.amet.massa@elementumduiquis.ca', 'admin', '2015-09-10 19:18:38', 'admin', '2015-09-10 19:18:38', '0');

-- ----------------------------
-- Table structure for contact_hobby_ids
-- ----------------------------
DROP TABLE IF EXISTS `contact_hobby_ids`;
CREATE TABLE `contact_hobby_ids` (
  `contact_hobby_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `hobby_id` bigint(20) NOT NULL,
  PRIMARY KEY (`contact_hobby_id`),
  KEY `fk_hobby_contact_id` (`contact_id`),
  KEY `fk_hobby_hobby_id` (`hobby_id`),
  CONSTRAINT `fk_hobby_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_hobby_hobby_id` FOREIGN KEY (`hobby_id`) REFERENCES `hobbies` (`hobby_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact_hobby_ids
-- ----------------------------
INSERT INTO `contact_hobby_ids` VALUES ('1', '1', '1');
INSERT INTO `contact_hobby_ids` VALUES ('2', '1', '2');
INSERT INTO `contact_hobby_ids` VALUES ('3', '2', '3');
INSERT INTO `contact_hobby_ids` VALUES ('4', '2', '4');
INSERT INTO `contact_hobby_ids` VALUES ('5', '3', '5');
INSERT INTO `contact_hobby_ids` VALUES ('6', '3', '1');
INSERT INTO `contact_hobby_ids` VALUES ('7', '4', '2');
INSERT INTO `contact_hobby_ids` VALUES ('8', '4', '3');
INSERT INTO `contact_hobby_ids` VALUES ('9', '5', '4');
INSERT INTO `contact_hobby_ids` VALUES ('10', '5', '5');
INSERT INTO `contact_hobby_ids` VALUES ('11', '6', '1');
INSERT INTO `contact_hobby_ids` VALUES ('12', '6', '2');
INSERT INTO `contact_hobby_ids` VALUES ('13', '7', '3');
INSERT INTO `contact_hobby_ids` VALUES ('14', '7', '4');
INSERT INTO `contact_hobby_ids` VALUES ('15', '8', '5');
INSERT INTO `contact_hobby_ids` VALUES ('16', '8', '1');
INSERT INTO `contact_hobby_ids` VALUES ('17', '9', '2');
INSERT INTO `contact_hobby_ids` VALUES ('18', '9', '3');
INSERT INTO `contact_hobby_ids` VALUES ('19', '10', '4');
INSERT INTO `contact_hobby_ids` VALUES ('20', '10', '5');
INSERT INTO `contact_hobby_ids` VALUES ('21', '2', '5');

-- ----------------------------
-- Table structure for contact_phones
-- ----------------------------
DROP TABLE IF EXISTS `contact_phones`;
CREATE TABLE `contact_phones` (
  `contact_phone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `phone_type` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contact_phone_id`),
  KEY `fk_contact_phones_contact_id` (`contact_id`),
  CONSTRAINT `fk_contact_phones_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact_phones
-- ----------------------------
INSERT INTO `contact_phones` VALUES ('1', '1', 'Mobile', '1-113-753-8020', '0');
INSERT INTO `contact_phones` VALUES ('2', '1', 'Home', '1-996-507-0853', '0');
INSERT INTO `contact_phones` VALUES ('3', '2', 'Mobile', '1-407-100-1341', '0');
INSERT INTO `contact_phones` VALUES ('4', '2', 'Home', '1-285-981-2510', '0');
INSERT INTO `contact_phones` VALUES ('5', '3', 'Mobile', '1-274-311-9291', '0');
INSERT INTO `contact_phones` VALUES ('6', '3', 'Home', '1-499-112-9185', '0');
INSERT INTO `contact_phones` VALUES ('7', '4', 'Mobile', '1-234-628-6511', '0');
INSERT INTO `contact_phones` VALUES ('8', '4', 'Home', '1-560-178-3273', '0');
INSERT INTO `contact_phones` VALUES ('9', '5', 'Mobile', '1-430-941-9233', '0');
INSERT INTO `contact_phones` VALUES ('10', '5', 'Home', '1-271-831-8886', '0');
INSERT INTO `contact_phones` VALUES ('11', '6', 'Mobile', '1-255-105-0103', '0');
INSERT INTO `contact_phones` VALUES ('12', '6', 'Home', '1-481-652-4155', '0');
INSERT INTO `contact_phones` VALUES ('13', '7', 'Mobile', '1-917-917-8478', '0');
INSERT INTO `contact_phones` VALUES ('14', '7', 'Home', '1-766-831-2271', '0');
INSERT INTO `contact_phones` VALUES ('15', '8', 'Mobile', '1-863-515-3218', '0');
INSERT INTO `contact_phones` VALUES ('16', '8', 'Home', '1-930-909-9849', '0');
INSERT INTO `contact_phones` VALUES ('17', '9', 'Mobile', '1-423-399-6903', '0');
INSERT INTO `contact_phones` VALUES ('18', '9', 'Home', '1-294-840-1996', '0');
INSERT INTO `contact_phones` VALUES ('19', '10', 'Mobile', '1-661-300-3848', '0');
INSERT INTO `contact_phones` VALUES ('20', '10', 'Home', '1-972-479-8970', '0');

-- ----------------------------
-- Table structure for hobbies
-- ----------------------------
DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE `hobbies` (
  `hobby_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hobby_title` varchar(20) NOT NULL,
  PRIMARY KEY (`hobby_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hobbies
-- ----------------------------
INSERT INTO `hobbies` VALUES ('1', 'Jogging');
INSERT INTO `hobbies` VALUES ('2', 'Movies');
INSERT INTO `hobbies` VALUES ('3', 'Programming');
INSERT INTO `hobbies` VALUES ('5', 'Swimming');
INSERT INTO `hobbies` VALUES ('4', 'Reading');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE users
(
    user_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    enabled TINYINT(1) NOT NULL,
    account_expired TINYINT(1) NOT NULL,
    account_locked TINYINT(1) NOT NULL,
    credentials_expired TINYINT(1) NOT NULL,
    has_avatar TINYINT(1) NOT NULL,
    user_key VARCHAR(25) DEFAULT '0000000000000000' NOT NULL,
    provider_id VARCHAR(25) DEFAULT 'SITE' NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    approved_datetime TIMESTAMP,
    version INT(11) DEFAULT '0' NOT NULL
);
CREATE UNIQUE INDEX users_user_key_uindex ON users (user_key);

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@aol.com', 'Admin', 'Jones', '1', '0', '0', '0', '0', '4L4Hr3skHYYMbjkQ','SITE', '$2a$10$B9wQFSrr3bfQeUGqxtTDuut1.4YFcA/WFthZaGe1wtb1wgVW./Oiq', CURRENT_TIMESTAMP, NULL,'0');
INSERT INTO `users` VALUES ('2', 'user', 'user@aol.com', 'User', 'Charlie', '1', '0', '0', '0', '0', 'v7jXapyD6fbRyZvi', 'SITE', '$2a$10$F2a2W8RtbD99xXd9xtwjbuI4zjSYe04kS.s0FyvQcAIDJfh/6jjLW', CURRENT_TIMESTAMP, NULL, '0');
INSERT INTO `users` VALUES ('7', 'john', 'john@email.com', 'John', 'Bubkis', '1', '0', '0', '0',  '0', '0tPCRjbxfttB2M3h', 'SITE', '$2a$10$F2a2W8RtbD99xXd9xtwjbuI4zjSYe04kS.s0FyvQcAIDJfh/6jjLW', CURRENT_TIMESTAMP, NULL, '0');
INSERT INTO `users` VALUES ('8', 'ken', 'ken@email.com', 'Ken', 'Watts', '1', '0', '0', '0',  '0', 'TUuOypJ5pPI0ksqi', 'SITE', '$2a$10$F2a2W8RtbD99xXd9xtwjbuI4zjSYe04kS.s0FyvQcAIDJfh/6jjLW', CURRENT_TIMESTAMP, NULL, '0');

-- ----------------------------
-- Table structure for user_data
-- ----------------------------
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE user_data
(
  user_id BIGINT(20) PRIMARY KEY NOT NULL,
  login_attempts INT(11) DEFAULT '0' NOT NULL,
  lastlogin_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  created_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  approved_datetime TIMESTAMP NULL,
  invited_datetime TIMESTAMP NULL,
  accepted_datetime TIMESTAMP NULL,
  invited_by_id BIGINT(20) DEFAULT '0' NOT NULL,
  ip VARCHAR(25),
  CONSTRAINT user_data_users_fk FOREIGN KEY (user_id)
  REFERENCES users (user_id)
);
CREATE UNIQUE INDEX user_data_user_id_uindex ON user_data (user_id);

INSERT INTO user_data (user_id) SELECT user_id from users;

-- ----------------------------
-- Table structure for user_authorities
-- ----------------------------
DROP TABLE IF EXISTS `user_authorities`;
CREATE TABLE `user_authorities` (
  `user_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL,
  UNIQUE KEY `uc_user_authorities` (`user_id`,`authority_id`),
  KEY `fk_user_authorities_2` (`authority_id`),
  CONSTRAINT `fk_user_authorities_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_user_authorities_2` FOREIGN KEY (`authority_id`) REFERENCES `authorities` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_authorities
-- ----------------------------
INSERT INTO `user_authorities` VALUES ('1', '1');
INSERT INTO `user_authorities` VALUES ('1', '2');
INSERT INTO `user_authorities` VALUES ('1', '3');
INSERT INTO `user_authorities` VALUES ('2', '2');
INSERT INTO `user_authorities` VALUES ('7', '2');
INSERT INTO `user_authorities` VALUES ('8', '2');

-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------

-- ----------------------------
-- View structure for v_contact_hobbies
-- ----------------------------
DROP VIEW IF EXISTS `v_contact_hobbies`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_contact_hobbies` AS select `contacts`.`contact_id` AS `contact_id`,`contacts`.`first_name` AS `first_name`,`contacts`.`last_name` AS `last_name`,`contacts`.`birth_date` AS `birth_date`,`contacts`.`email` AS `email`,`hobbies`.`hobby_id` AS `hobby_id`,`hobbies`.`hobby_title` AS `hobby_title` from ((`contacts` join `contact_hobby_ids` on((`contacts`.`contact_id` = `contact_hobby_ids`.`contact_id`))) join `hobbies` on((`contact_hobby_ids`.`hobby_id` = `hobbies`.`hobby_id`))) order by `contacts`.`contact_id` ;

-- ----------------------------
-- View structure for v_contact_phones
-- ----------------------------
DROP VIEW IF EXISTS `v_contact_phones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_contact_phones` AS select `contacts`.`contact_id` AS `contact_id`,`contacts`.`first_name` AS `first_name`,`contacts`.`last_name` AS `last_name`,`contacts`.`birth_date` AS `birth_date`,`contacts`.`email` AS `email`,`contact_phones`.`phone_type` AS `phone_type`,`contact_phones`.`phone_number` AS `phone_number`,`contact_phones`.`contact_phone_id` AS `contact_phone_id` from (`contacts` join `contact_phones` on((`contacts`.`contact_id` = `contact_phones`.`contact_id`))) ;


-- ----------------------------
-- Table structure for userconnection
-- ----------------------------
DROP TABLE IF EXISTS `userconnection`;
CREATE TABLE `userconnection` (
  `userId` varchar(255) NOT NULL,
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(512) DEFAULT NULL,
  `imageUrl` varchar(512) DEFAULT NULL,
  `accessToken` varchar(255) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userId`,`providerId`,`providerUserId`),
  UNIQUE KEY `UserConnectionRank` (`userId`,`providerId`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE UNIQUE INDEX UserConnectionProviderUser ON UserConnection(providerId, providerUserId);
 
-- ----------------------------
-- Table structure for site_options
-- ----------------------------
DROP TABLE IF EXISTS `site_options`;
CREATE TABLE `site_options`
(
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `option_name` VARCHAR(50) NOT NULL,
  `option_value` TEXT,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE UNIQUE INDEX SiteOptionsOptionId ON site_options (option_id);

INSERT INTO `site_options` VALUES ('1', 'siteName', 'My Site');
INSERT INTO `site_options` VALUES ('2', 'siteDescription', 'My Site Description');
INSERT INTO `site_options` VALUES ('3', 'addGoogleAnalytics', 'false');
INSERT INTO `site_options` VALUES ('4', 'googleAnalyticsTrackingId', 'UA-XXXXXX-7');
INSERT INTO `site_options` VALUES ('5', 'integerProperty', '1');
INSERT INTO `site_options` VALUES ('6', 'userRegistration', 'EMAIL_VERIFICATION');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `post_title` varchar(200) NOT NULL,
  `post_name` varchar(200) NOT NULL,
  `post_link` varchar(255) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_type` varchar(20) NOT NULL DEFAULT 'LINK',
  `display_type` varchar(20) NOT NULL DEFAULT 'LINK',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `post_content` text NOT NULL,
  `post_source` varchar(50) NOT NULL DEFAULT 'NA',
  `post_image` varchar(200) DEFAULT NULL,
  `click_count` int(11) NOT NULL DEFAULT '0',
  `likes_count` int(11) NOT NULL DEFAULT '0',
  `value_rating` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `posts_post_id_uindex` (`post_id`),
  KEY `posts_users_user_id_fk` (`user_id`),
  CONSTRAINT `posts_users_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tags
-- ----------------------------

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_value` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tags_tag_id_uindex` (`tag_id`),
  UNIQUE KEY `tags_tag_value_uindex` (`tag_value`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for post_tag_ids
-- ----------------------------

DROP TABLE IF EXISTS `post_tag_ids`;
CREATE TABLE `post_tag_ids` (
  `post_tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_tag_id`),
  KEY `fk_posts_post_id` (`post_id`),
  KEY `fk_tags_tag_id` (`tag_id`),
  CONSTRAINT `fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for user_likes
-- ----------------------------

DROP TABLE IF EXISTS user_likes;
CREATE TABLE user_likes
(
  like_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_id BIGINT(20) NOT NULL,
  item_id BIGINT(20) NOT NULL,
  content_type_id INT(11) DEFAULT '1' NOT NULL,
  CONSTRAINT fk_likes_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);
CREATE INDEX like_content_type_index ON user_likes (content_type_id);
CREATE UNIQUE INDEX like_ids_index ON user_likes (like_id);
CREATE INDEX like_item_id_index ON user_likes (item_id);
CREATE INDEX like_user_id_index ON user_likes (user_id);

-- ----------------------------
-- Table structure for post_images
-- ----------------------------

DROP TABLE IF EXISTS post_images;
CREATE TABLE post_images
(
    image_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    post_id BIGINT(20) NOT NULL,
    image_name VARCHAR(255),
    thumbnail_filename VARCHAR(255),
    filename VARCHAR(255),
    content_type VARCHAR(50),
    size BIGINT(20),
    thumbnail_size BIGINT(20),
    datetime_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE UNIQUE INDEX post_images_image_id_uindex ON post_images (image_id);
CREATE INDEX post_images_post_id_index ON post_images (post_id);

-- ----------------------------
-- Table structure for post_images
-- ----------------------------

DROP TABLE IF EXISTS user_tokens;
CREATE TABLE user_tokens
(
    token_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) NOT NULL,
    token VARCHAR(255),
    token_expiration TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE UNIQUE INDEX user_tokens_token_id_uindex ON user_tokens (token_id);
CREATE UNIQUE INDEX user_tokens_user_id_uindex ON user_tokens (user_id);

-- ----------------------------
-- Placemarker post for flashcards
-- ----------------------------

INSERT INTO posts (post_id, user_id, post_title, post_name, post_link, post_date, post_modified, post_type, display_type, is_published, post_content, post_source, post_image, click_count, likes_count, value_rating, version) VALUES (-1, 3, 'Not Yet Selected', 'not-yet-selected', null, '2016-05-16 10:30:04', '2016-05-16 10:30:16', 'POST', 'SINGLEPHOTO_POST', 0, '<p>Placemarker post</p>', 'NA', null, 0, 0, 0, 0);

-- ----------------------------
-- flashcard_categories
-- ----------------------------

DROP TABLE IF EXISTS flashcard_categories;
CREATE TABLE flashcard_categories
(
    category_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category VARCHAR(255)
);
CREATE UNIQUE INDEX flashcard_categories_category_id_uindex ON flashcard_categories (category_id);

-- ----------------------------
-- flashcard_slides
-- ----------------------------

DROP TABLE IF EXISTS flashcard_slides;
CREATE TABLE flashcard_slides
(
    slide_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category_id BIGINT(20) NOT NULL,
    post_id BIGINT(20) DEFAULT '-1' NOT NULL,
    slide_image VARCHAR(255),
    slide_content TEXT,
    datetime_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
ALTER TABLE flashcard_slides ADD FOREIGN KEY (category_id) REFERENCES flashcard_categories (category_id);
ALTER TABLE flashcard_slides ADD FOREIGN KEY (post_id) REFERENCES posts (post_id);
CREATE INDEX fk_flashcard_slides_categories ON flashcard_slides (category_id);
CREATE INDEX fk_flashcard_slides_posts ON flashcard_slides (post_id);
CREATE UNIQUE INDEX flashcard_slides_slide_id_uindex ON flashcard_slides (slide_id);

-- ----------------------------
-- Flashcard View
-- ----------------------------

DROP VIEW IF EXISTS `v_flashcards`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_flashcards` AS select `s`.`slide_id` AS `slide_id`,`s`.`category_id` AS `category_id`,`s`.`datetime_created` AS `datetime_created`,`s`.`slide_content` AS `slide_content`,`s`.`slide_image` AS `slide_image`,`c`.`category` AS `category`,`posts`.`post_title` AS `post_title`,`s`.`post_id` AS `post_id` from ((`flashcard_slides` `s` join `flashcard_categories` `c` on((`s`.`category_id` = `c`.`category_id`))) join `posts` on((`s`.`post_id` = `posts`.`post_id`)));

-- ------------------------------------------------------------------------------------
-- BEGIN SPRING BATCH FROM FRAMEWORK
-- ------------------------------------------------------------------------------------

CREATE TABLE batch_job_instance
(
    JOB_INSTANCE_ID BIGINT(20) PRIMARY KEY NOT NULL,
    VERSION BIGINT(20),
    JOB_NAME VARCHAR(100) NOT NULL,
    JOB_KEY VARCHAR(32) NOT NULL
);
CREATE UNIQUE INDEX JOB_INST_UN ON batch_job_instance (JOB_NAME, JOB_KEY);
CREATE TABLE batch_job_execution
(
    JOB_EXECUTION_ID BIGINT(20) PRIMARY KEY NOT NULL,
    VERSION BIGINT(20),
    JOB_INSTANCE_ID BIGINT(20) NOT NULL,
    CREATE_TIME DATETIME NOT NULL,
    START_TIME DATETIME,
    END_TIME DATETIME,
    STATUS VARCHAR(10),
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    JOB_CONFIGURATION_LOCATION VARCHAR(2500),
    CONSTRAINT JOB_INST_EXEC_FK FOREIGN KEY (JOB_INSTANCE_ID) REFERENCES batch_job_instance (JOB_INSTANCE_ID)
);
CREATE INDEX JOB_INST_EXEC_FK ON batch_job_execution (JOB_INSTANCE_ID);
CREATE TABLE batch_job_execution_context
(
    JOB_EXECUTION_ID BIGINT(20) PRIMARY KEY NOT NULL,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT JOB_EXEC_CTX_FK FOREIGN KEY (JOB_EXECUTION_ID) REFERENCES batch_job_execution (JOB_EXECUTION_ID)
);
CREATE TABLE batch_job_execution_params
(
    JOB_EXECUTION_ID BIGINT(20) NOT NULL,
    TYPE_CD VARCHAR(6) NOT NULL,
    KEY_NAME VARCHAR(100) NOT NULL,
    STRING_VAL VARCHAR(250),
    DATE_VAL DATETIME,
    LONG_VAL BIGINT(20),
    DOUBLE_VAL DOUBLE,
    IDENTIFYING CHAR(1) NOT NULL,
    CONSTRAINT JOB_EXEC_PARAMS_FK FOREIGN KEY (JOB_EXECUTION_ID) REFERENCES batch_job_execution (JOB_EXECUTION_ID)
);
CREATE INDEX JOB_EXEC_PARAMS_FK ON batch_job_execution_params (JOB_EXECUTION_ID);
CREATE TABLE batch_job_execution_seq
(
    ID BIGINT(20) NOT NULL,
    UNIQUE_KEY CHAR(1) NOT NULL
);
CREATE UNIQUE INDEX UNIQUE_KEY_UN ON batch_job_execution_seq (UNIQUE_KEY);


CREATE TABLE batch_job_seq
(
    ID BIGINT(20) NOT NULL,
    UNIQUE_KEY CHAR(1) NOT NULL
);
CREATE UNIQUE INDEX UNIQUE_KEY_UN ON batch_job_seq (UNIQUE_KEY);
CREATE TABLE batch_step_execution
(
    STEP_EXECUTION_ID BIGINT(20) PRIMARY KEY NOT NULL,
    VERSION BIGINT(20) NOT NULL,
    STEP_NAME VARCHAR(100) NOT NULL,
    JOB_EXECUTION_ID BIGINT(20) NOT NULL,
    START_TIME DATETIME NOT NULL,
    END_TIME DATETIME,
    STATUS VARCHAR(10),
    COMMIT_COUNT BIGINT(20),
    READ_COUNT BIGINT(20),
    FILTER_COUNT BIGINT(20),
    WRITE_COUNT BIGINT(20),
    READ_SKIP_COUNT BIGINT(20),
    WRITE_SKIP_COUNT BIGINT(20),
    PROCESS_SKIP_COUNT BIGINT(20),
    ROLLBACK_COUNT BIGINT(20),
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    CONSTRAINT JOB_EXEC_STEP_FK FOREIGN KEY (JOB_EXECUTION_ID) REFERENCES batch_job_execution (JOB_EXECUTION_ID)
);
CREATE INDEX JOB_EXEC_STEP_FK ON batch_step_execution (JOB_EXECUTION_ID);
CREATE TABLE batch_step_execution_context
(
    STEP_EXECUTION_ID BIGINT(20) PRIMARY KEY NOT NULL,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT STEP_EXEC_CTX_FK FOREIGN KEY (STEP_EXECUTION_ID) REFERENCES batch_step_execution (STEP_EXECUTION_ID)
);
CREATE TABLE batch_step_execution_seq
(
    ID BIGINT(20) NOT NULL,
    UNIQUE_KEY CHAR(1) NOT NULL
);
CREATE UNIQUE INDEX UNIQUE_KEY_UN ON batch_step_execution_seq (UNIQUE_KEY);

-- ------------------------------------------------------------------------------------
-- END SPRING BATCH FROM FRAMEWORK
-- ------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------
-- Batch View for BatchJob Reports
-- ------------------------------------------------------------------------------------

CREATE VIEW v_batch_job_report AS
  SELECT
    batch_job_execution.JOB_INSTANCE_ID AS JOB_INSTANCE_ID,
    batch_job_instance.JOB_NAME         AS JOB_NAME,
    batch_job_execution.START_TIME      AS START_TIME,
    batch_job_execution.END_TIME        AS END_TIME,
    batch_job_execution.STATUS          AS STATUS,
    batch_job_execution.EXIT_CODE       AS EXIT_CODE,
    batch_job_execution.EXIT_MESSAGE    AS EXIT_MESSAGE
  FROM (batch_job_execution
    JOIN batch_job_instance ON ((batch_job_execution.JOB_INSTANCE_ID =
                                                       batch_job_instance.JOB_INSTANCE_ID)));

-- ------------------------------------------------------------------------------------
-- Github Stats Table
-- ------------------------------------------------------------------------------------

CREATE TABLE github_stats
(
    stat_id BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    stat_date DATE NOT NULL,
    followers INT(11) DEFAULT '0' NOT NULL,
    subscribers INT(11) DEFAULT '0' NOT NULL,
    stars INT(11) DEFAULT '0' NOT NULL,
    forks INT(11) DEFAULT '0' NOT NULL
);
CREATE UNIQUE INDEX github_stats_stat_id_uindex ON github_stats (stat_id);
CREATE UNIQUE INDEX github_stats_stat_date_uindex ON github_stats (stat_date);
