CREATE TABLE if not exists rawdata.`stock_statistics` (
  `code` varchar(20) NOT NULL DEFAULT '000000' COMMENT 'stock code',
  `type` varchar(20) DEFAULT 'STOCK' COMMENT '类型:STOCK,INDEX',
  `macroscopic_index` LONGTEXT DEFAULT null COMMENT '宏观指标',
  `macroscopic_month_index` text DEFAULT null COMMENT '宏观指标-月度',
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_type_key` (`code` ,`type`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='stock_statistics';
