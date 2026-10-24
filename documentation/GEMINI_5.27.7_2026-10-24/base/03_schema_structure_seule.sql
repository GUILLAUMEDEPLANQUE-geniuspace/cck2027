-- DOCUMENTATION : structure locale observée, sans lignes de données.
-- Ce fichier ne constitue pas une migration à exécuter. #__ est le préfixe Joomla abstrait.

CREATE TABLE `#__action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_adverts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT 'both',
  `video` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `impressions` int(11) DEFAULT 0,
  `clicks` int(11) DEFAULT 0,
  `state` tinyint(1) DEFAULT 1,
  `ordering` int(11) DEFAULT 0,
  `checked_out` int(11) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT 0,
  `modified_by` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `thumb` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `access` varchar(25) DEFAULT '0',
  `metakeywords` text DEFAULT NULL,
  `metadescription` text DEFAULT NULL,
  `state` tinyint(1) DEFAULT 1,
  `ordering` int(11) DEFAULT 0,
  `checked_out` int(11) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT 0,
  `modified_by` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_likes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `videoid` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `userid` int(11) DEFAULT 0,
  `sessionid` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_ratings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `videoid` int(11) DEFAULT 0,
  `ratings` decimal(2,1) DEFAULT 0.0,
  `userid` int(11) DEFAULT 0,
  `sessionid` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__allvideoshare_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `catid` int(11) unsigned NOT NULL,
  `catids` text DEFAULT NULL,
  `type` varchar(25) DEFAULT 'general',
  `video` varchar(255) DEFAULT '',
  `hd` varchar(255) DEFAULT '',
  `youtube` varchar(255) DEFAULT '',
  `vimeo` varchar(255) DEFAULT '',
  `hls` varchar(255) DEFAULT '',
  `thirdparty` text DEFAULT NULL,
  `captions` text DEFAULT NULL,
  `thumb` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `access` varchar(25) DEFAULT '0',
  `featured` tinyint(1) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `ratings` decimal(5,2) DEFAULT 0.00,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `user` varchar(255) DEFAULT '',
  `tags` text DEFAULT NULL,
  `metadescription` text DEFAULT NULL,
  `state` tinyint(1) DEFAULT 1,
  `ordering` int(11) DEFAULT 0,
  `checked_out` int(11) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT 0,
  `modified_by` int(11) DEFAULT 0,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT ,
  `parent_id` int(11) NOT NULL DEFAULT 0 ,
  `lft` int(11) NOT NULL DEFAULT 0 ,
  `rgt` int(11) NOT NULL DEFAULT 0 ,
  `level` int(10) unsigned NOT NULL ,
  `name` varchar(50) NOT NULL ,
  `title` varchar(100) NOT NULL ,
  `rules` varchar(5120) NOT NULL ,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__associations` (
  `id` int(11) NOT NULL ,
  `context` varchar(50) NOT NULL ,
  `key` char(32) NOT NULL ,
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' ,
  `metakey` varchar(1024) NOT NULL DEFAULT '' ,
  `metadata` varchar(2048) NOT NULL DEFAULT '' ,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 ,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 ,
  `language` char(7) NOT NULL ,
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL ,
  `content_item_id` int(11) NOT NULL ,
  `tag_id` int(10) unsigned NOT NULL ,
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() ,
  `type_id` mediumint(9) NOT NULL ,
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL ,
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 ,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 ,
  `locked` tinyint(4) NOT NULL DEFAULT 0 ,
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL ,
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_audio_assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `mime` varchar(40) NOT NULL,
  `bytes` int(11) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `payload` mediumblob NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_audio_owner` (`record_id`,`field_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_audio_feedback` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `scores` text NOT NULL,
  `feedback` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `actor` bigint(20) NOT NULL,
  `action` varchar(40) NOT NULL,
  `target_id` bigint(20) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_billing_events` (
  `provider` varchar(16) NOT NULL,
  `event_id` varchar(128) NOT NULL,
  `checksum` char(64) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `ctime` datetime NOT NULL,
  PRIMARY KEY (`provider`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_billing_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `event_id` varchar(128) NOT NULL,
  `number` varchar(80) NOT NULL,
  `kind` varchar(12) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `snapshot` mediumtext NOT NULL,
  `ctime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  UNIQUE KEY `billing_invoice_event` (`order_id`,`event_id`,`kind`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_billing_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(48) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL DEFAULT 0,
  `record_id` bigint(20) NOT NULL DEFAULT 0,
  `provider` varchar(16) NOT NULL,
  `asset` varchar(8) NOT NULL DEFAULT '',
  `network` varchar(24) NOT NULL DEFAULT '',
  `provider_currency` varchar(32) NOT NULL DEFAULT '',
  `checkout_id` varchar(128) NOT NULL DEFAULT '',
  `provider_ref` varchar(128) DEFAULT NULL,
  `amount` bigint(20) NOT NULL,
  `currency` char(3) NOT NULL,
  `state` varchar(16) NOT NULL DEFAULT 'pending',
  `refunded` bigint(20) NOT NULL DEFAULT 0,
  `snapshot` mediumtext NOT NULL,
  `ctime` datetime NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `billing_payment` (`provider`,`provider_ref`),
  KEY `billing_buyer` (`user_id`,`state`),
  KEY `billing_record` (`record_id`,`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_billing_promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `kind` varchar(16) NOT NULL,
  `placement` varchar(64) NOT NULL DEFAULT '',
  `color` char(7) NOT NULL,
  `starts_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `revoked` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `billing_promotion_record` (`record_id`,`kind`,`expires_at`),
  KEY `billing_ad_position` (`placement`,`kind`,`expires_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_billing_sequences` (
  `period` char(4) NOT NULL,
  `serial` bigint(20) NOT NULL,
  PRIMARY KEY (`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_billing_uses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ctime` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`),
  KEY `billing_usage` (`subscription_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__gp_social_cache` (
  `cache_key` varchar(64) NOT NULL,
  `payload` mediumtext NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  PRIMARY KEY (`cache_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_cohort_members` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_collections` (
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `collection_key` varchar(41) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`scope`,`user_id`,`collection_key`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_company_team` (
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` varchar(16) NOT NULL,
  `state` varchar(12) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`company_id`,`user_id`),
  KEY `gp_team_actor` (`user_id`,`state`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `content_type` varchar(41) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(180) NOT NULL,
  `data` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  `revision` int(11) NOT NULL DEFAULT 1,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_creator_revenue` (
  `application_id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `amount_minor` bigint(20) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `state` varchar(16) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `reference` varchar(180) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`application_id`,`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_definitions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `kind` varchar(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `data` text NOT NULL,
  `revision` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scope` (`scope`,`kind`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_demo_manifests` (
  `prefix` varchar(24) NOT NULL,
  `payload` mediumtext NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_design_layouts` (
  `layout_key` varchar(80) NOT NULL,
  `scope` varchar(16) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `revision` int(11) NOT NULL DEFAULT 0,
  `published_revision` int(11) NOT NULL DEFAULT 0,
  `draft` mediumtext NOT NULL,
  `published` mediumtext NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`layout_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_design_libraries` (
  `library_key` varchar(40) NOT NULL,
  `manifest` mediumtext NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `actor_id` bigint(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`library_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_design_revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `layout_key` varchar(80) NOT NULL,
  `revision` int(11) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `payload` mediumtext NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `layout_key` (`layout_key`,`revision`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL DEFAULT 0,
  `document_key` varchar(64) NOT NULL,
  `filename` varchar(180) NOT NULL,
  `title` varchar(180) NOT NULL,
  `description` text NOT NULL,
  `revision` int(11) NOT NULL,
  `mime` varchar(100) NOT NULL,
  `bytes` int(11) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `license` varchar(120) NOT NULL DEFAULT '',
  `expires_at` varchar(30) NOT NULL DEFAULT '',
  `visibility` varchar(12) NOT NULL,
  `state` varchar(12) NOT NULL DEFAULT 'active',
  `payload` mediumblob NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scope` (`scope`,`record_id`,`document_key`,`revision`),
  KEY `gp_docs` (`scope`,`record_id`,`state`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_edges` (
  `scope` varchar(63) NOT NULL,
  `actor` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `kind` varchar(12) NOT NULL,
  `state` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`scope`,`actor`,`target`,`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_editorial_reviews` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `status` varchar(16) NOT NULL,
  `note` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_experience_goals` (
  `user_id` bigint(20) NOT NULL,
  `goal` varchar(500) NOT NULL,
  `skills` text NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_experience_metrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `kind` varchar(30) NOT NULL,
  `campaign` varchar(80) NOT NULL DEFAULT '',
  `day` varchar(10) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`record_id`,`kind`,`day`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_experience_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `kind` varchar(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`record_id`,`kind`,`source_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_experience_preferences` (
  `user_id` bigint(20) NOT NULL,
  `metrics` int(11) NOT NULL DEFAULT 0,
  `frequency` varchar(12) NOT NULL DEFAULT 'weekly',
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_extended_events` (
  `event_id` varchar(200) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_extended_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `checkout_id` varchar(200) NOT NULL DEFAULT '',
  `intent_id` varchar(200) NOT NULL DEFAULT '',
  `state` varchar(16) NOT NULL DEFAULT 'pending',
  `snapshot` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_extended_vouchers` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `code_hash` varchar(64) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`code_hash`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_field_alerts` (
  `fingerprint` varchar(64) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `state` varchar(12) NOT NULL DEFAULT 'review',
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_field_corrections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL DEFAULT 0,
  `author_id` bigint(20) NOT NULL,
  `expected_hash` varchar(64) NOT NULL,
  `proposed` mediumtext NOT NULL,
  `source_url` varchar(2048) NOT NULL DEFAULT '',
  `reason` text NOT NULL,
  `state` varchar(16) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_correction_queue` (`record_id`,`state`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_file_metadata` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `revision` int(11) NOT NULL,
  `data` text NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_presence` (
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `typing` int(11) NOT NULL DEFAULT 0,
  `expires_at` bigint(20) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`),
  KEY `gp_presence_expiry` (`record_id`,`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_reactions` (
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kind` varchar(16) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`,`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_readers` (
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` varchar(16) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`),
  KEY `gp_reader_expiry` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_reviews` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `score` decimal(3,2) NOT NULL,
  `scores` text NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`),
  KEY `gp_review_comment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_review_details` (
  `comment_id` bigint(20) NOT NULL,
  `pros` text NOT NULL,
  `cons` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_forum_states` (
  `record_id` bigint(20) NOT NULL,
  `state` varchar(16) NOT NULL,
  `accepted_comment` bigint(20) NOT NULL DEFAULT 0,
  `summary_record` bigint(20) NOT NULL DEFAULT 0,
  `actor_id` bigint(20) NOT NULL,
  `revision` int(11) NOT NULL DEFAULT 1,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_fractional_contracts` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `days` decimal(3,1) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_hiring_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `old_state` varchar(16) NOT NULL,
  `new_state` varchar(16) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_hiring_states` (
  `application_id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `state` varchar(16) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_hub_participations` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_hub_proposals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `currency` varchar(8) NOT NULL,
  `state` varchar(16) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`,`field_id`,`user_id`),
  KEY `gp_proposal_owner` (`record_id`,`field_id`,`mtime`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `number` varchar(80) NOT NULL,
  `kind` varchar(12) NOT NULL,
  `amount` int(11) NOT NULL,
  `snapshot` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `gp_invoice_order` (`order_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_jmap_identity` (
  `record_id` bigint(20) NOT NULL,
  `url_hash` varchar(64) NOT NULL,
  `canonical` varchar(2048) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_knowledge_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `chunk_no` int(11) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `title` varchar(250) NOT NULL,
  `label` varchar(180) NOT NULL,
  `body` text NOT NULL,
  `terms` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`,`field_id`,`chunk_no`),
  KEY `gp_chunk_source` (`record_id`,`source_hash`),
  FULLTEXT KEY `gp_chunk_text` (`title`,`body`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_knowledge_cursor` (
  `name` varchar(40) NOT NULL,
  `cursor_id` bigint(20) NOT NULL DEFAULT 0,
  `cycles` bigint(20) NOT NULL DEFAULT 0,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_learning_models` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) NOT NULL,
  `revision` int(11) NOT NULL,
  `payload` mediumtext NOT NULL,
  `sources` text NOT NULL,
  `metrics` text NOT NULL,
  `ctime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`,`revision`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_links` (
  `source_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `kind` varchar(16) NOT NULL,
  PRIMARY KEY (`source_id`,`field_id`,`target_id`,`kind`),
  KEY `gp_reverse_links` (`target_id`,`kind`,`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_members` (
  `scope` varchar(63) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` varchar(12) NOT NULL,
  `role` varchar(12) NOT NULL DEFAULT 'member',
  PRIMARY KEY (`scope`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `recipient` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `deleted_sender` int(11) NOT NULL DEFAULT 0,
  `deleted_recipient` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `gp_inbox` (`scope`,`recipient`,`id`),
  KEY `gp_sent` (`scope`,`sender`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_moderation_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL DEFAULT 0,
  `comment_id` bigint(20) NOT NULL DEFAULT 0,
  `owner_id` bigint(20) NOT NULL DEFAULT 0,
  `actor_id` bigint(20) NOT NULL DEFAULT 0,
  `action` varchar(16) NOT NULL,
  `rules` text NOT NULL,
  `prior_published` int(11) NOT NULL DEFAULT -1,
  `result_published` int(11) NOT NULL DEFAULT 0,
  `snapshot_hash` char(64) NOT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `ctime` varchar(20) NOT NULL,
  `decision_by` bigint(20) NOT NULL DEFAULT 0,
  `decision_at` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gp_moderation_record` (`record_id`,`comment_id`,`status`),
  KEY `gp_moderation_owner` (`owner_id`,`status`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_contact_preferences` (
  `user_id` bigint(20) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 0,
  `amount_minor` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_contact_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `recipient_id` bigint(20) NOT NULL,
  `subject` varchar(180) NOT NULL,
  `body` text NOT NULL,
  `response` text NOT NULL,
  `amount_minor` int(11) NOT NULL,
  `recipient_minor` int(11) NOT NULL,
  `platform_minor` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `state` varchar(24) NOT NULL,
  `request_key` varchar(64) NOT NULL,
  `payload_hash` varchar(64) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sender_id` (`sender_id`,`request_key`),
  KEY `gp_contact_inbox` (`recipient_id`,`id`),
  KEY `gp_contact_record` (`record_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_crystals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `contributor_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `share_bps` int(11) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `state` varchar(20) NOT NULL,
  `proposer_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`,`comment_id`),
  KEY `gp_crystal_consent` (`contributor_id`,`state`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_intents` (
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `topic` varchar(24) NOT NULL,
  `horizon` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`),
  KEY `gp_intent_expiry` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_members` (
  `project_record` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` varchar(16) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`project_record`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_milestone_votes` (
  `milestone_record` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `side` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`milestone_record`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_predictions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `statement` text NOT NULL,
  `criteria` text NOT NULL,
  `resolve_at` varchar(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `seal_hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_id` (`comment_id`),
  KEY `gp_prediction_record` (`record_id`,`id`),
  KEY `gp_prediction_author` (`author_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_prediction_outcomes` (
  `prediction_id` bigint(20) NOT NULL,
  `outcome` varchar(16) NOT NULL,
  `source_url` varchar(2048) NOT NULL,
  `note` text NOT NULL,
  `resolver_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`prediction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_prediction_votes` (
  `prediction_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `side` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`prediction_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_spawns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_record` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kind` varchar(16) NOT NULL,
  `parent_field` bigint(20) NOT NULL,
  `child_field` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `title` varchar(180) NOT NULL,
  `roles` text NOT NULL,
  `electorate` mediumtext NOT NULL,
  `token_hash` varchar(64) NOT NULL,
  `payload_hash` varchar(64) NOT NULL,
  `state` varchar(16) NOT NULL,
  `result_id` bigint(20) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  `save_started` varchar(20) NOT NULL DEFAULT '',
  `save_title` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`token_hash`),
  KEY `gp_spawn_result` (`result_id`,`kind`),
  KEY `gp_spawn_source` (`source_record`,`state`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_multiverse_thresholds` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `threshold_count` int(11) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`threshold_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_native_url_history` (
  `url_hash` varchar(64) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `current_url` varchar(2048) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_native_url_identity` (
  `record_id` bigint(20) NOT NULL,
  `canonical` varchar(2048) NOT NULL,
  `url_hash` varchar(64) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `actor` bigint(20) NOT NULL,
  `kind` varchar(30) NOT NULL,
  `target_id` bigint(20) NOT NULL DEFAULT 0,
  `seen` int(11) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_notice` (`scope`,`user_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_corpus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_key` varchar(64) NOT NULL,
  `origin` varchar(12) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `kind` varchar(12) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `input` mediumtext NOT NULL,
  `progress` text NOT NULL,
  `state` varchar(16) NOT NULL,
  `method` varchar(120) NOT NULL,
  `error` varchar(500) NOT NULL,
  `passages` bigint(20) NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `lease_until` bigint(20) NOT NULL DEFAULT 0,
  `lease_token` varchar(32) NOT NULL,
  `available_at` bigint(20) NOT NULL DEFAULT 0,
  `mtime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_key` (`resource_key`),
  KEY `gp_omega_ingest` (`state`,`available_at`,`lease_until`),
  KEY `gp_omega_record` (`record_id`,`field_id`),
  KEY `gp_omega_source` (`origin`,`source_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) NOT NULL,
  `kind` varchar(30) NOT NULL,
  `payload` text NOT NULL,
  `ctime` varchar(30) NOT NULL,
  `previous_hash` varchar(64) NOT NULL,
  `event_hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_omega_journal` (`field_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_frontier` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `url_hash` varchar(64) NOT NULL,
  `depth` int(11) NOT NULL,
  `next_epoch` bigint(20) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_id` (`source_id`,`url_hash`),
  KEY `gp_omega_crawl_due` (`next_epoch`,`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_learning_feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `query_hash` varchar(64) NOT NULL,
  `resource_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `label` int(11) NOT NULL,
  `features` text NOT NULL,
  `holdout` int(11) NOT NULL,
  `ctime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`query_hash`,`resource_id`),
  KEY `gp_omega_feedback_split` (`holdout`,`id`),
  KEY `gp_omega_feedback_actor` (`user_id`,`ctime`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_learning_runs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(24) NOT NULL,
  `payload` text NOT NULL,
  `ctime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_learning_state` (
  `name` varchar(48) NOT NULL,
  `payload` mediumtext NOT NULL,
  `mtime` bigint(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_learning_versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weights` text NOT NULL,
  `metrics` text NOT NULL,
  `state` varchar(16) NOT NULL,
  `ctime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_memory` (
  `field_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `payload` mediumtext NOT NULL,
  `mtime` bigint(20) NOT NULL,
  PRIMARY KEY (`field_id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_missions` (
  `field_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `enabled` int(11) NOT NULL,
  `interval_minutes` int(11) NOT NULL,
  `next_epoch` bigint(20) NOT NULL,
  `lease_until` bigint(20) NOT NULL,
  `lease_token` varchar(32) NOT NULL,
  `state` mediumtext NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `gp_omega_due` (`enabled`,`next_epoch`,`lease_until`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_passages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) NOT NULL,
  `ordinal` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `metadata` text NOT NULL,
  `ctime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_id` (`resource_id`,`ordinal`),
  KEY `gp_omega_memory_source` (`resource_id`,`revision`),
  FULLTEXT KEY `gp_omega_memory_text` (`title`,`body`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_web_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `url_hash` varchar(64) NOT NULL,
  `title` varchar(250) NOT NULL,
  `excerpt` text NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `ctime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_id` (`source_id`,`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_omega_web_sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` bigint(20) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `kind` varchar(8) NOT NULL,
  `enabled` int(11) NOT NULL,
  `next_epoch` bigint(20) NOT NULL,
  `lease_until` bigint(20) NOT NULL,
  `last_epoch` bigint(20) NOT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_open_project_submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `response` mediumtext NOT NULL,
  `proof_record` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(16) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL DEFAULT 0,
  `feedback` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `state` varchar(16) NOT NULL DEFAULT 'pending',
  `checkout_id` varchar(200) NOT NULL DEFAULT '',
  `intent_id` varchar(200) NOT NULL DEFAULT '',
  `refunded` int(11) NOT NULL DEFAULT 0,
  `snapshot` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `paid_at` varchar(20) NOT NULL DEFAULT '',
  `expires_at` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `gp_order_actor` (`scope`,`user_id`,`id`),
  KEY `gp_promotions` (`scope`,`record_id`,`state`,`expires_at`),
  KEY `gp_stripe_intent` (`intent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_outbox` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `connector` varchar(41) NOT NULL,
  `event_key` varchar(64) NOT NULL,
  `payload` mediumtext NOT NULL,
  `state` varchar(12) NOT NULL DEFAULT 'pending',
  `attempts` int(11) NOT NULL DEFAULT 0,
  `available_at` varchar(20) NOT NULL,
  `lease` varchar(64) NOT NULL DEFAULT '',
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scope` (`scope`,`connector`,`event_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_passport_grants` (
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_path_entries` (
  `notebook_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `note` text NOT NULL,
  `seconds` int(11) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`notebook_id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_path_notebooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `request_key` varchar(64) NOT NULL,
  `title` varchar(180) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `goal` text NOT NULL,
  `notes` text NOT NULL,
  `steps` text NOT NULL,
  `budget` varchar(20) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `due_at` varchar(10) NOT NULL,
  `revision` int(11) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`request_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_path_positions` (
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `season` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  `seconds` int(11) NOT NULL,
  `label` varchar(180) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_path_preferences` (
  `user_id` bigint(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `intent` varchar(180) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_poll_votes` (
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `choice_key` varchar(41) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`scope`,`user_id`,`record_id`,`field_id`,`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `record_id` bigint(20) NOT NULL DEFAULT 0,
  `body` text NOT NULL,
  `visibility` varchar(12) NOT NULL,
  `state` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_feed` (`scope`,`state`,`parent_id`,`id`),
  KEY `gp_posts_actor` (`scope`,`user_id`,`id`),
  KEY `gp_group_posts` (`scope`,`group_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_prefs` (
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `visibility` varchar(12) NOT NULL DEFAULT 'members',
  `avatar_url` varchar(2048) NOT NULL DEFAULT '',
  `allow_messages` int(11) NOT NULL DEFAULT 0,
  `contact` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`scope`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_progress` (
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `step_key` varchar(40) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`scope`,`user_id`,`record_id`,`field_id`,`revision`,`step_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_project_boards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL DEFAULT 0,
  `request_key` varchar(64) NOT NULL,
  `title` varchar(180) NOT NULL,
  `goal` text NOT NULL,
  `steps` mediumtext NOT NULL,
  `revision` bigint(20) NOT NULL DEFAULT 1,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `owner_request` (`owner_id`,`request_key`),
  KEY `native_record` (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_project_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `board_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL,
  `kind` varchar(32) NOT NULL,
  `payload` mediumtext NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `board_history` (`board_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_project_members` (
  `board_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` varchar(16) NOT NULL,
  `state` varchar(16) NOT NULL DEFAULT 'invited',
  `inviter_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`board_id`,`user_id`),
  KEY `member_access` (`user_id`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_proof_reviews` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `skill_code` varchar(64) NOT NULL,
  `level` int(11) NOT NULL,
  `method` varchar(16) NOT NULL,
  `note` text NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`reviewer_id`,`skill_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_quiz_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `correct` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `threshold` int(11) NOT NULL,
  `passed` int(11) NOT NULL,
  `answers` text NOT NULL,
  `topics` text NOT NULL,
  `valid_until` varchar(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_quiz_result` (`scope`,`user_id`,`record_id`,`field_id`,`id`),
  KEY `gp_quiz_revision` (`scope`,`record_id`,`field_id`,`revision`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_quiz_sessions` (
  `token` varchar(64) NOT NULL,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `plan` text NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  `consumed` int(11) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `gp_quiz_session` (`scope`,`user_id`,`record_id`,`field_id`,`consumed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_reactions` (
  `scope` varchar(63) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kind` varchar(12) NOT NULL,
  PRIMARY KEY (`scope`,`post_id`,`user_id`,`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_record_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `kind` varchar(40) NOT NULL,
  `payload` mediumtext NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_record_history` (`record_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_record_followers` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_record_gifts` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `gift` varchar(32) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`,`gift`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_record_versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `public_hash` varchar(64) NOT NULL,
  `payload` mediumtext NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`,`source_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_record_watches` (
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `last_hash` varchar(64) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_relation_states` (
  `scope` varchar(63) NOT NULL,
  `relation_name` varchar(41) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`scope`,`relation_name`,`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `target_kind` varchar(12) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `state` varchar(12) NOT NULL DEFAULT 'open',
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_reports` (`scope`,`state`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_reservations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(63) NOT NULL,
  `booking_name` varchar(41) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `slot_key` varchar(64) NOT NULL,
  `starts_at` varchar(30) NOT NULL,
  `ends_at` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `state` varchar(12) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_resume_items` (
  `user_id` bigint(20) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `kind` varchar(20) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `revision` varchar(64) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_room_sessions` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` varchar(12) NOT NULL,
  `session_token` varchar(48) NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`),
  KEY `gp_room_active` (`record_id`,`field_id`,`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_room_signals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `recipient_id` bigint(20) NOT NULL,
  `kind` varchar(12) NOT NULL,
  `payload` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_room_inbox` (`record_id`,`field_id`,`recipient_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_simulation_submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `source_hash` varchar(64) NOT NULL,
  `response` mediumtext NOT NULL,
  `state` varchar(16) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL DEFAULT 0,
  `feedback` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gp_simulation_owner` (`record_id`,`field_id`,`user_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_stripe_adjustments` (
  `intent_id` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `refunded` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(3) NOT NULL,
  `disputed` int(11) NOT NULL DEFAULT 0,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`intent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_stripe_events` (
  `event_id` varchar(200) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `kind` varchar(80) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_talent_bids` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `salary` decimal(12,2) NOT NULL,
  `bonus` decimal(12,2) NOT NULL,
  `remote_days` decimal(3,1) NOT NULL,
  `accepted` int(11) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_typed_relations` (
  `scope` varchar(63) NOT NULL,
  `relation_name` varchar(41) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `metadata` text NOT NULL,
  PRIMARY KEY (`scope`,`relation_name`,`source_id`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_universe_announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `record_id` int(10) unsigned NOT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `expires_at` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scope_pin` (`section_id`,`category_id`),
  KEY `expiry` (`enabled`,`expires_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_verified_offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `filename` varchar(180) NOT NULL,
  `bytes` bigint(20) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `payload` mediumblob NOT NULL,
  `declaration` text NOT NULL,
  `analysis` text NOT NULL,
  `state` varchar(16) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_video_links` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `video_id` bigint(20) NOT NULL,
  `mtime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`),
  UNIQUE KEY `gp_video_native` (`video_id`),
  KEY `gp_video_file` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_workstyle` (
  `record_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `revision` varchar(64) NOT NULL,
  `result` text NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY (`record_id`,`field_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__gp_social_writer_drafts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `token` varchar(48) NOT NULL,
  `title` varchar(250) NOT NULL,
  `fields` mediumtext NOT NULL,
  `expires_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' ,
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 ,
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' ,
  `version_data` mediumtext NOT NULL ,
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 ,
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `is_legacy` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__jmap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `sqlquery` text DEFAULT NULL,
  `sqlquery_managed` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_aigenerator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords_phrase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api` varchar(50) NOT NULL DEFAULT 'bing',
  `maxresults` int(11) NOT NULL DEFAULT 10,
  `language` char(7) NOT NULL DEFAULT '',
  `removeimgs` tinyint(4) NOT NULL DEFAULT 0,
  `temperature` varchar(10) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_canonicals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `linkurl` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_cats_priorities` (
  `id` int(11) NOT NULL,
  `priority` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_datasets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `sources` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_dss_relations` (
  `datasetid` int(11) NOT NULL,
  `datasourceid` int(11) NOT NULL,
  PRIMARY KEY (`datasetid`,`datasourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_google` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_headings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `linkurl` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `h1` text DEFAULT NULL,
  `h2` text DEFAULT NULL,
  `h3` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_menu_priorities` (
  `id` int(11) NOT NULL,
  `priority` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_metainfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `linkurl` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `robots` varchar(255) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `excluded` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `robots` (`robots`),
  KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_pingomatic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `blogurl` varchar(255) NOT NULL,
  `rssurl` varchar(255) DEFAULT NULL,
  `services` text NOT NULL,
  `lastping` datetime DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__jmap_text_replacements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_text` varchar(1024) NOT NULL,
  `target_text` varchar(1024) NOT NULL,
  `original_text_regex` varchar(1024) NOT NULL,
  `target_text_regex` varchar(1024) NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_country` (
  `id` char(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_coupons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL DEFAULT '',
  `discount` double(12,2) NOT NULL DEFAULT 0.00,
  `discount_type` set('PROCENT','SUM','FIXED') NOT NULL DEFAULT 'PROCENT',
  `user_ids` text NOT NULL,
  `strict` tinyint(1) NOT NULL DEFAULT 0,
  `ctime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `extime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `use_num` int(10) NOT NULL DEFAULT 0,
  `used_num` int(10) NOT NULL DEFAULT 0,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `plan_ids` text NOT NULL,
  `use_user` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `trash` (`trash`),
  KEY `extime` (`extime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_coupons_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `discount` float(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_sub` (`subscription_id`),
  KEY `ids_plan` (`plan_id`),
  KEY `idx_coupon` (`coupon_id`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_exp_alerts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_subscription_id` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `stime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `sent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `params` text NOT NULL,
  `access` tinyint(1) DEFAULT 0,
  `published` tinyint(1) DEFAULT 0,
  `required` tinyint(1) DEFAULT 0,
  `ctime` datetime DEFAULT '1970-01-01 00:00:00',
  `ordering` tinyint(1) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `checked_out` int(11) DEFAULT 0,
  `checked_out_time` datetime DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_hikashop_orders` (
  `order_id` int(10) NOT NULL DEFAULT 0,
  `subscriptions` varchar(255) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT '1970-01-02 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_invoice_to` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT 0,
  `fields` text DEFAULT NULL,
  `ip` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_plans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL DEFAULT '',
  `group_id` int(10) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `ctime` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `mtime` datetime DEFAULT '1970-01-02 00:00:00',
  `synctime` datetime DEFAULT '1970-01-02 00:00:00',
  `ordering` tinyint(3) NOT NULL DEFAULT 0,
  `access` int(10) NOT NULL DEFAULT 1,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `params` text NOT NULL,
  `grant_reg` tinyint(1) NOT NULL DEFAULT 0,
  `grant_new` tinyint(1) NOT NULL DEFAULT 0,
  `invisible` tinyint(1) NOT NULL DEFAULT 0,
  `invisible_in_history` tinyint(1) NOT NULL DEFAULT 0,
  `access_pay` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_group` (`group_id`),
  KEY `idx_state` (`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_plans_actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `action` text DEFAULT NULL,
  `plan_id` int(11) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_plan` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_plans_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ctime` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `access` tinyint(3) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `ordering` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_plans_rules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rule` text DEFAULT NULL,
  `plan_id` int(11) DEFAULT 0,
  `option` varchar(30) DEFAULT NULL,
  `controller` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_plan` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_serial` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT 0,
  `subscription_id` int(11) DEFAULT 0,
  `field_id` int(11) DEFAULT 0,
  `serial` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_states` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country` char(2) NOT NULL DEFAULT 'US',
  `state` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq` (`country`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_subscriptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `plan_id` int(10) NOT NULL DEFAULT 0,
  `invoice_id` int(11) DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `ctime` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `extime` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `created` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `purchased` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `lastsent` datetime DEFAULT '1970-01-02 00:00:00',
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `discount` float(12,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(45) DEFAULT NULL,
  `access_count` int(10) NOT NULL DEFAULT 0,
  `access_count_mode` tinyint(4) NOT NULL DEFAULT 0,
  `access_limit` int(10) NOT NULL DEFAULT 0,
  `gateway` varchar(45) NOT NULL DEFAULT 'undefined',
  `gateway_id` varchar(200) NOT NULL DEFAULT '',
  `parent` int(1) NOT NULL DEFAULT 0,
  `track_active` tinyint(1) NOT NULL DEFAULT 0,
  `track_disactive` tinyint(1) NOT NULL DEFAULT 0,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `note` text DEFAULT NULL,
  `invoice_num` int(11) NOT NULL DEFAULT 0,
  `fields` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `upgrade_from` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_trak_a` (`track_active`),
  KEY `idx_track_disa` (`track_disactive`),
  KEY `idx_gtwid` (`gateway_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_plan` (`plan_id`),
  KEY `idx_active` (`activated`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_taxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` char(2) DEFAULT NULL,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `tax` float(10,2) NOT NULL DEFAULT 0.00,
  `tax_name` varchar(255) NOT NULL DEFAULT '',
  `vies` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__joomsubscription_url_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `url` text NOT NULL,
  `ctime` datetime NOT NULL DEFAULT '1970-01-02 00:00:00',
  `subscription_id` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE `#__js_ip_2_country` (
  `ip_from` int(10) unsigned NOT NULL DEFAULT 0,
  `ip_to` int(10) unsigned NOT NULL DEFAULT 0,
  `short_code` varchar(2) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__js_res_audit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) DEFAULT 0,
  `field_id` int(11) DEFAULT 0,
  `event` tinyint(3) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `ip` varchar(40) NOT NULL DEFAULT 'Not detected',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_audit_restore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(11) DEFAULT 0,
  `dtime` datetime DEFAULT '0000-00-00 00:00:00',
  `comments` longtext DEFAULT NULL,
  `favorites` text DEFAULT NULL,
  `files` text DEFAULT NULL,
  `hits` text DEFAULT NULL,
  `subscriptions` text DEFAULT NULL,
  `votes` text DEFAULT NULL,
  `notifications` text DEFAULT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_audit_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `version` int(10) NOT NULL DEFAULT 0,
  `record_serial` longtext NOT NULL,
  `values_serial` longtext NOT NULL,
  `category_serial` longtext NOT NULL,
  `tags_serial` longtext DEFAULT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_rec` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT 0,
  `parent_id` int(10) NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  `section_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(191) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `access` tinyint(3) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '',
  `metakey` varchar(1024) NOT NULL DEFAULT '',
  `metadata` varchar(2048) NOT NULL DEFAULT '',
  `created_user_id` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `modified_user_id` int(10) NOT NULL DEFAULT 0,
  `modified_time` datetime DEFAULT NULL,
  `hits` int(10) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `num_current` int(11) NOT NULL DEFAULT 0,
  `num_all` int(11) NOT NULL DEFAULT 0,
  `relative_cats` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(250)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_category_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT 0,
  `record_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_category_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `section_id` int(10) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `ordering` int(10) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `access` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) NOT NULL DEFAULT 0,
  `rate` int(10) NOT NULL DEFAULT 0,
  `rate_count` int(10) NOT NULL DEFAULT 0,
  `icon` varchar(45) NOT NULL DEFAULT '',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `alias` varchar(250) NOT NULL DEFAULT '',
  `client_id` int(10) NOT NULL DEFAULT 0,
  `client` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`,`section_id`),
  KEY `publish` (`published`),
  KEY `client_id` (`client_id`),
  KEY `client` (`client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `langs` varchar(10) NOT NULL DEFAULT 'en-GB',
  `access` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(10) NOT NULL DEFAULT 0,
  `root_id` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(3) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `attach_hit` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `rate_num` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_publish` (`published`),
  KEY `idx_record` (`record_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_access` (`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_country` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `record_id` int(10) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(45) DEFAULT NULL,
  `label` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(191) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT 0,
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `params` longtext NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` tinyint(3) NOT NULL DEFAULT 0,
  `access` tinyint(1) NOT NULL DEFAULT 0,
  `group_id` int(11) DEFAULT 0,
  `asset_id` int(11) NOT NULL DEFAULT 0,
  `filter` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_access` (`access`),
  KEY `idx_publish` (`published`,`type_id`,`filter`,`key`),
  KEY `idx_group` (`group_id`),
  KEY `idx_filter` (`filter`),
  KEY `idx_alias` (`alias`,`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_fields_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `type_id` int(10) NOT NULL DEFAULT 0,
  `ordering` int(10) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_field_geo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` char(2) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `lat` float(18,15) DEFAULT NULL,
  `lng` float(18,15) DEFAULT NULL,
  `state_trans` varchar(150) DEFAULT NULL,
  `city_trans` varchar(200) DEFAULT NULL,
  `section_id` int(11) DEFAULT 0,
  `field_id` int(11) DEFAULT 0,
  `field_key` varchar(38) DEFAULT NULL,
  `record_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_sect` (`section_id`),
  KEY `idx_key` (`field_key`),
  KEY `idx_fid` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_field_multilevelselect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `field_id` int(11) DEFAULT 0,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 0,
  `lft` int(11) DEFAULT 0,
  `rgt` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_field` (`field_id`),
  KEY `idx_lr` (`lft`,`rgt`),
  KEY `idx_parent` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_field_stepaccess` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_field_telephone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `code2` varchar(2) NOT NULL DEFAULT '',
  `code3` varchar(3) NOT NULL DEFAULT '',
  `phone_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(55) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `section_id` int(11) DEFAULT 0,
  `record_id` int(11) DEFAULT 0,
  `type_id` int(11) DEFAULT 0,
  `field_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ext` varchar(10) NOT NULL DEFAULT '',
  `fullpath` text DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT 'Not detected',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `rating` double DEFAULT NULL,
  `rating_nums` int(11) DEFAULT 0,
  `comments` text DEFAULT NULL,
  `comment_num` int(11) DEFAULT 0,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `default` tinyint(3) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`filename`),
  KEY `idx_record` (`record_id`),
  KEY `idx_saved_ctime` (`saved`,`ctime`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_hits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idex_user` (`section_id`,`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_import` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `crossids` text DEFAULT NULL,
  `section_id` int(11) DEFAULT 0,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_import_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `import` int(11) DEFAULT 0,
  `text` text DEFAULT NULL,
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_import` (`import`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_moderators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) DEFAULT 0,
  `checked_out_time` datetime DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(20) DEFAULT NULL,
  `is_moderator` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind` (`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `notified` tinyint(1) NOT NULL DEFAULT 0,
  `alerted` tinyint(1) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ref_1` int(11) DEFAULT 0,
  `ref_2` int(11) DEFAULT 0,
  `ref_3` int(11) DEFAULT 0,
  `ref_4` int(11) DEFAULT 0,
  `ref_5` int(11) DEFAULT 0,
  `html` text DEFAULT NULL,
  `num` int(11) DEFAULT 0,
  `state_new` tinyint(1) NOT NULL DEFAULT 1,
  `eventer` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_r_1` (`ref_1`),
  KEY `idx_r_2` (`ref_2`),
  KEY `idx_ruser` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `key` char(255) NOT NULL DEFAULT '',
  `addkey` tinyint(2) NOT NULL DEFAULT 1,
  `add_files` text DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `btime` datetime DEFAULT NULL,
  `version` varchar(20) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `users` tinyint(3) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `author_name` text DEFAULT NULL,
  `author_email` text DEFAULT NULL,
  `author_url` text DEFAULT NULL,
  `demo` tinyint(1) DEFAULT 0,
  `copyright` varchar(255) DEFAULT NULL,
  `user` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_packs_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `record_id` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `access` int(10) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `section_id` int(10) NOT NULL DEFAULT 0,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `extime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `inittime` datetime DEFAULT NULL,
  `ftime` datetime DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `type_id` int(10) NOT NULL DEFAULT 0,
  `hits` int(10) NOT NULL DEFAULT 0,
  `ordering` int(10) NOT NULL DEFAULT 0,
  `meta_descr` varchar(255) NOT NULL DEFAULT '',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_index` varchar(30) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `archive` tinyint(1) NOT NULL DEFAULT 0,
  `ucatid` int(10) NOT NULL DEFAULT 0,
  `ucatname` varchar(150) DEFAULT NULL,
  `langs` varchar(10) NOT NULL DEFAULT '',
  `asset_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `votes` int(10) NOT NULL DEFAULT 0,
  `favorite_num` int(10) NOT NULL DEFAULT 0,
  `hidden` tinyint(3) NOT NULL DEFAULT 0,
  `votes_result` int(10) NOT NULL DEFAULT 0,
  `exalert` tinyint(1) NOT NULL DEFAULT 0,
  `access_key` varchar(32) NOT NULL DEFAULT '',
  `categories` mediumtext DEFAULT NULL,
  `fieldsdata` longtext DEFAULT NULL,
  `fields` longtext NOT NULL,
  `comments` int(11) DEFAULT 0,
  `tags` text DEFAULT NULL,
  `multirating` text DEFAULT NULL,
  `subscriptions_num` int(11) DEFAULT 0,
  `version` int(10) NOT NULL DEFAULT 1,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `parent` varchar(45) NOT NULL DEFAULT 'com_joomcck',
  `whorepost` tinyint(1) NOT NULL DEFAULT 0,
  `repostedby` text DEFAULT NULL,
  `newTags` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_section` (`section_id`),
  KEY `idx_published` (`published`),
  KEY `idx_user` (`user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_ctime` (`ctime`),
  KEY `idx_extime` (`extime`),
  KEY `idx_featured` (`featured`),
  KEY `idx_ucat` (`ucatid`),
  KEY `idx_lang` (`langs`),
  KEY `idx_parent` (`parent_id`),
  KEY `idx_mtime` (`mtime`),
  KEY `idx_name` (`title`(250)),
  KEY `idx_comment` (`comments`),
  KEY `idx_vote` (`votes_result`),
  FULLTEXT KEY `full` (`fieldsdata`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_record_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL DEFAULT 0,
  `record_id` int(10) NOT NULL DEFAULT 0,
  `ordering` int(10) NOT NULL DEFAULT 0,
  `otime` datetime DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `rec` (`record_id`),
  KEY `idx_cat` (`section_id`,`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_record_repost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_id` int(11) NOT NULL DEFAULT 0,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `is_reposted` tinyint(1) NOT NULL DEFAULT 0,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record` (`record_id`),
  KEY `idx_host` (`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_record_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) NOT NULL DEFAULT 0,
  `field_key` varchar(45) NOT NULL DEFAULT '',
  `field_type` varchar(100) NOT NULL DEFAULT '',
  `field_label` varchar(100) NOT NULL DEFAULT '',
  `field_value` longtext NOT NULL,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `value_index` varchar(40) NOT NULL DEFAULT '0',
  `value_num` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_values` (`field_value`(250)),
  KEY `idx_key` (`field_key`),
  KEY `idx_record` (`record_id`),
  KEY `idx_field` (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `saler_id` int(11) NOT NULL DEFAULT 0,
  `record_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `gateway_id` varchar(45) NOT NULL DEFAULT '',
  `gateway` varchar(45) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_saler` (`saler_id`),
  KEY `idx_buyer` (`user_id`),
  KEY `idx_rec` (`record_id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(10) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(20) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT '0',
  `params` text DEFAULT NULL,
  `section_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_rf` (`ref_id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_subscribe_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `exclude` tinyint(1) DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`cat_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_subscribe_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `exclude` tinyint(1) DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_u` (`u_id`,`section_id`,`user_id`),
  KEY `idx_sec` (`section_id`),
  KEY `idx_cat` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `ctime` datetime DEFAULT NULL,
  `slug` varchar(50) NOT NULL DEFAULT '',
  `language` varchar(10) DEFAULT 'en-GB',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_tags_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) NOT NULL DEFAULT 0,
  `tag_id` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `section_id` int(10) NOT NULL DEFAULT 0,
  `hits` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `record` (`record_id`),
  KEY `tag` (`tag_id`),
  KEY `user` (`user_id`),
  KEY `section` (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `form` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `asset_id` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_user_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `lastsend` datetime DEFAULT '0000-00-00 00:00:00',
  `schedule` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_sch` (`schedule`),
  KEY `idx_sent` (`lastsend`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_user_options_autofollow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT 0,
  `section_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_sec` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_user_post_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `whopost` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_us` (`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__js_res_vote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `ref_id` int(10) NOT NULL DEFAULT 0,
  `vote` int(10) NOT NULL DEFAULT 0,
  `ctime` datetime DEFAULT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `ref_type` varchar(25) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT 0,
  `idx` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `record` (`ref_id`),
  KEY `user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL ,
  `title` varchar(255) NOT NULL ,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL ,
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL ,
  `link` varchar(1024) NOT NULL ,
  `type` varchar(16) NOT NULL ,
  `published` tinyint(4) NOT NULL DEFAULT 0 ,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 ,
  `level` int(10) unsigned NOT NULL DEFAULT 0 ,
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `checked_out` int(10) unsigned DEFAULT NULL ,
  `checked_out_time` datetime DEFAULT NULL ,
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 ,
  `access` int(10) unsigned NOT NULL DEFAULT 0 ,
  `img` varchar(255) NOT NULL ,
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL ,
  `lft` int(11) NOT NULL DEFAULT 0 ,
  `rgt` int(11) NOT NULL DEFAULT 0 ,
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 ,
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT ,
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 ,
  `title_key` varchar(255) NOT NULL DEFAULT '' ,
  `description_key` varchar(255) NOT NULL DEFAULT '' ,
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' ,
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' ,
  `action_file` varchar(255) DEFAULT '' ,
  `action` varchar(255) DEFAULT '' ,
  `condition_file` varchar(255) DEFAULT NULL ,
  `condition_method` varchar(255) DEFAULT NULL ,
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' ,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__scheduler_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL ,
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) unsigned NOT NULL,
  `taskid` int(10) unsigned NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL ,
  `nextdate` datetime DEFAULT NULL ,
  PRIMARY KEY (`id`),
  KEY `idx_taskname` (`taskname`),
  KEY `idx_tasktype` (`tasktype`),
  KEY `idx_lastdate` (`lastdate`),
  KEY `idx_nextdate` (`nextdate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL ,
  `execution_rules` text DEFAULT NULL ,
  `cron_rules` text DEFAULT NULL ,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 ,
  `last_execution` datetime DEFAULT NULL ,
  `next_execution` datetime DEFAULT NULL ,
  `times_executed` int(11) DEFAULT 0 ,
  `times_failed` int(11) DEFAULT 0 ,
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 ,
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 ,
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL ,
  `metakey` varchar(1024) NOT NULL DEFAULT '' ,
  `metadata` varchar(2048) NOT NULL ,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' ,
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' ,
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  `security` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT ,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `lft` int(11) NOT NULL DEFAULT 0 ,
  `rgt` int(11) NOT NULL DEFAULT 0 ,
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL ,
  `resetCount` int(11) NOT NULL DEFAULT 0 ,
  `otpKey` varchar(1000) NOT NULL DEFAULT '' ,
  `otep` varchar(1000) NOT NULL DEFAULT '' ,
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 ,
  `authProvider` varchar(100) NOT NULL DEFAULT '' ,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

CREATE TABLE `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT ,
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL ,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__webauthn_credentials` (
  `id` varchar(1000) NOT NULL ,
  `user_id` varchar(128) NOT NULL ,
  `label` varchar(190) NOT NULL ,
  `credential` mediumtext NOT NULL ,
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

CREATE TABLE `#__workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 ,
  `stage_id` int(11) NOT NULL ,
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `position` text DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `#__workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
