CREATE TABLE if not exists rawdata.`big_trend` (
  `id` bigint NOT NULL AUTO_INCREMENT  COMMENT '主键',
  `st_code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `data_type` varchar(20) DEFAULT 'STOCK' COMMENT '类型:STOCK,INDEX',
  `wave_direction` varchar(20) DEFAULT null COMMENT '类型:FALL,RISE',
  `start_date` varchar(20) DEFAULT null COMMENT '开始日期',
  `end_date` varchar(20) DEFAULT null COMMENT '结束日期',
  `st_range` double(16,2) default null COMMENT '幅度',
  `last_days` bigint default null COMMENT '持续天数',
  UNIQUE KEY `code_date_key` (`st_code`, `start_date`,`end_date`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='big_trend';