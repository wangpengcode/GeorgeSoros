CREATE TABLE if not exists rawdata.`stock_wave` (
  `id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',
  `st_code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `st_type` varchar(20) DEFAULT 'STOCK' COMMENT '类型:STOCK,INDEX',
  `start_date` varchar(20) DEFAULT '' COMMENT '开始日期',
  `end_date` varchar(20) DEFAULT '' COMMENT '结束日期',
  `last_days` bigint DEFAULT 0 COMMENT '持续天数',
  `direction` varchar(20) DEFAULT '' COMMENT '方向',
  `st_range` double(16,2) default null COMMENT '幅度',
  `wave_type` varchar(20) DEFAULT 'MULTI' COMMENT '类型:MULTI,SINGLE',
  `start_inflection_point` varchar(500) DEFAULT '' COMMENT '开始日期',
  `end__inflection_point` varchar(500) DEFAULT '' COMMENT '结束日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_type_key` (`code` ,`type`, `start_date`, `end_date`) USING BTREE,
  INDEX index_code (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock_wave';
