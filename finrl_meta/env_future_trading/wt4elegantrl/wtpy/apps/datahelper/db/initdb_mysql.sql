CREATE TABLE IF NOT EXISTS `tb_adj_factors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exchange` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `factor` double(22,12) NOT NULL DEFAULT 0.000000000000,
  `createtime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exchange_code_date` (`exchange`,`code`,`date`),
  KEY `exchange_code` (`exchange`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='除权因子表';
CREATE TABLE IF NOT EXISTS `tb_kline_day` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exchange` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `open` double(22,4) NOT NULL DEFAULT 0.0000,
  `high` double(22,4) NOT NULL DEFAULT 0.0000,
  `low` double(22,4) NOT NULL DEFAULT 0.0000,
  `close` double(22,4) NOT NULL DEFAULT 0.0000,
  `settle` double(22,4) NOT NULL DEFAULT 0.0000,
  `volume` double(22,6) unsigned NOT NULL DEFAULT 0.000000,
  `turnover` double(22,4) NOT NULL DEFAULT 0.0000,
  `interest` bigint(20) unsigned NOT NULL DEFAULT 0,
  `diff_interest` bigint(20) NOT NULL DEFAULT 0,
  `createtime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exchange_code_date` (`exchange`,`code`,`date`),
  KEY `exchange_code` (`exchange`,`code`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日线表';
CREATE TABLE IF NOT EXISTS `tb_kline_min1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exchange` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  `open` double(22,4) NOT NULL DEFAULT 0.0000,
  `high` double(22,4) NOT NULL DEFAULT 0.0000,
  `low` double(22,4) NOT NULL DEFAULT 0.0000,
  `close` double(22,4) NOT NULL DEFAULT 0.0000,
  `volume` double(22,6) unsigned NOT NULL DEFAULT 0.000000,
  `turnover` double(22,4) NOT NULL DEFAULT 0.0000,
  `interest` bigint(20) unsigned NOT NULL DEFAULT 0,
  `diff_interest` bigint(20) NOT NULL DEFAULT 0,
  `createtime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `exchange_code_date_time` (`exchange`,`code`,`date`,`time`),
  KEY `exchange_code` (`exchange`,`code`),
  KEY `time` (`time`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1分钟线表';
CREATE TABLE IF NOT EXISTS `tb_kline_min5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exchange` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  `open` double(22,4) NOT NULL DEFAULT 0.0000,
  `high` double(22,4) NOT NULL DEFAULT 0.0000,
  `low` double(22,4) NOT NULL DEFAULT 0.0000,
  `close` double(22,4) NOT NULL DEFAULT 0.0000,
  `volume` double(22,6) unsigned NOT NULL DEFAULT 0.000000,
  `turnover` double(22,4) NOT NULL DEFAULT 0.0000,
  `interest` bigint(20) unsigned NOT NULL DEFAULT 0,
  `diff_interest` bigint(20) NOT NULL DEFAULT 0,
  `createtime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `exchange_code_date_time` (`exchange`,`code`,`date`,`time`) USING BTREE,
  KEY `exchange_code` (`exchange`,`code`),
  KEY `date` (`date`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='5分钟线表';