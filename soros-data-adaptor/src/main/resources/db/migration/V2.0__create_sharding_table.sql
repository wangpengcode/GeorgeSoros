CREATE TABLE  if not exists  rawdata.`stock_history_0` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',
`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_1` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_2` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_3` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_4` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_5` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_6` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_7` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_8` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_9` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_10` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_11` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_12` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_13` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_14` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_15` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_16` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_17` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_18` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_19` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_20` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_21` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_22` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_23` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_24` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_25` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_26` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_27` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_28` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_29` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_30` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_31` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_32` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_33` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_34` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_35` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_36` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_37` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_38` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_39` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_40` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_41` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_42` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_43` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_44` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_45` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_46` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_47` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_48` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_49` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_50` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_51` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_52` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_53` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_54` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_55` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_56` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_57` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_58` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_59` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_60` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_61` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_62` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_63` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_64` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_65` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_66` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_67` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_68` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_69` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_70` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_71` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_72` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_73` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_74` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_75` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_76` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_77` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_78` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_79` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_80` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_81` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_82` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_83` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_84` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_85` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_86` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_87` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_88` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_89` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_90` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_91` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_92` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_93` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_94` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_95` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_96` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_97` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_98` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_99` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_100` (
`id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',`st_code` varchar(12)NOT NULL  COMMENT '代码', `partition_code`  bigint default 1 comment '分区值',
  `st_date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `st_open` double(16,2) default null COMMENT '开盘价',
  `st_close` double(16,2) default null COMMENT '收盘',
  `st_high` double(16,2) default null COMMENT '最高',
  `st_low` double(16,2) default null COMMENT '最低',
  `st_volume` double(16,2) default null COMMENT '成交量',
  `total_amount` double(16,2) default null COMMENT '成交额',
  `st_range` double(16,2) default null COMMENT '振幅',
  `zd_range` double(16,2) default null COMMENT '涨跌幅',
  `zd_amount` double(16,2) default null COMMENT '涨跌额',
  `st_change` double(16,2) default null COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`st_code` ,`st_date`) USING BTREE, PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';


