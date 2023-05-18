CREATE TABLE if not exists rawdata.`stock_inflection_point` (
  `code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `type` varchar(20) DEFAULT 'MIN' COMMENT '类型:MAX,MIN',
  `date` varchar(20) DEFAULT '' COMMENT '日期',
  `close` double(16,2) default null COMMENT '幅度',
  `high` double(16,2) default null COMMENT '幅度',
  `low` double(16,2) default null COMMENT '幅度',
  UNIQUE KEY `code_date_key` (`code`, `date`) USING BTREE,
  INDEX index_code (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock_inflection_point';
