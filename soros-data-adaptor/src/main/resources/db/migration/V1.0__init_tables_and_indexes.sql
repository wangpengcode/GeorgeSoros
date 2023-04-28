CREATE TABLE `stock_info` (
  `code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `full_name` varchar(200) NOT NULL DEFAULT '' COMMENT '全称',
  `ipo_date` varchar(20) NOT NULL DEFAULT '' COMMENT '上市日期',
  `total_capital` double(16,2) COMMENT '总股本',
  `flow_capital` double(16,2) COMMENT '流通股本',
  `industry` varchar(20) NOT NULL DEFAULT '' COMMENT '行业',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock info';
