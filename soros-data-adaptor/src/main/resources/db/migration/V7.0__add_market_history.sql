CREATE TABLE if not exists rawdata.`market_history` (
  `date` varchar(20) DEFAULT '' COMMENT '日期',
  `zt_nums` bigint default null COMMENT '大盘涨停家数',
  `average_zt_nums` bigint default null COMMENT '',
  `dt_nums` bigint default null COMMENT '',
 `average_dt_nums` bigint default null COMMENT '',
 `flat_nums` bigint default null COMMENT '',
 `profit_nums` bigint default null COMMENT '',
  `average_profit_nums` bigint default null COMMENT '',
  `loss_nums` bigint default null COMMENT '',
  `average_loss_nums` bigint default null COMMENT '',
  `average_by_date_market_range` double(16,2) default null COMMENT '幅度',
  `market_total_amount` double(16,2) default null COMMENT '幅度',
  `average_market_total_amount` double(16,2) default null COMMENT '幅度',
    `open_loss_nums` bigint default null COMMENT '',
    `average_open_loss_nums` bigint default null COMMENT '',
   `open_profit_nums` bigint default null COMMENT '',
   `average_open_profit_nums` bigint default null COMMENT '',
   `open_flat_nums` bigint default null COMMENT '',
    `open_high_close_down_nums` bigint default null COMMENT '',
    `average_open_high_close_down_nums` bigint default null COMMENT '',
    `open_down_close_high_nums` bigint default null COMMENT '',
     `average_open_down_close_high_nums` bigint default null COMMENT '',
     `rush_up_from_low_nums` bigint default null COMMENT '',
     `rush_down_from_high_nums` bigint default null COMMENT '',
     `market_stocks` bigint default null COMMENT '',
       `sh_close` double(16,2) default null COMMENT '幅度',
       `sz_close` double(16,2) default null COMMENT '幅度',
       `average_sh_close` double(16,2) default null COMMENT '幅度',
        `average_sz_close` double(16,2) default null COMMENT '幅度',
  PRIMARY KEY (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='market_history';