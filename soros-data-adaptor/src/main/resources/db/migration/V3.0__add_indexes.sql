CREATE TABLE if not exists rawdata.`stock_index` (
  `code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock index';
