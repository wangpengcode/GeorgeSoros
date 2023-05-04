CREATE TABLE  if not exists  rawdata.`stock_history_0` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_1` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_2` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_3` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_4` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_5` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_6` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_7` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_8` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_9` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_10` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_11` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_12` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_13` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_14` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_15` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_16` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_17` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_18` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_19` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_20` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_21` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_22` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_23` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_24` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_25` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_26` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_27` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_28` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_29` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_30` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_31` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_32` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_33` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_34` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_35` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_36` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_37` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_38` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_39` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_40` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_41` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_42` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_43` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_44` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_45` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_46` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_47` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_48` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_49` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_50` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_51` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_52` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_53` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_54` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_55` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_56` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_57` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_58` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_59` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_60` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_61` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_62` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_63` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_64` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_65` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_66` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_67` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_68` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_69` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_70` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_71` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_72` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_73` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_74` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_75` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_76` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_77` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_78` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_79` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_80` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_81` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_82` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_83` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_84` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_85` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_86` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_87` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_88` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_89` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_90` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_91` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_92` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_93` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_94` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_95` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_96` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_97` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_98` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_99` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';

CREATE TABLE  if not exists  rawdata.`stock_history_100` (
  `code` varchar(12) NOT NULL DEFAULT '000000' COMMENT '',
  `date` varchar(20) NOT NULL DEFAULT '' COMMENT '日期',
  `open` double(16,2) COMMENT '开盘价',
  `close` double(16,2) COMMENT '收盘',
  `high` double(16,2) COMMENT '最高',
  `low` double(16,2) COMMENT '最低',
  `volume` double(16,2) COMMENT '成交量',
  `total_amount` double(16,2) COMMENT '成交额',
  `range` double(16,2) COMMENT '振幅',
  `zd_range` double(16,2) COMMENT '涨跌幅',
  `zd_amount` double(16,2) COMMENT '涨跌额',
  `change` double(16,2) COMMENT '换手率',
  UNIQUE KEY `date_date_key` (`code`,`date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';


