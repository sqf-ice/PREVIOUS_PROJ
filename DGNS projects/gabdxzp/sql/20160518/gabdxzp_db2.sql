drop table gab_dxzp_qhcx ;
drop table gab_dxzp_qhcx_qlxx ;
create table gab_dxzp_qhcx  (
   ywsqbh             varchar(36)                     not null,
   rwxh               integer                         not null,
   zhlb               varchar(2)                      not null,
   cxzjlx             varchar(15)                     not null,
   cxzjhm             varchar(30)                     not null,
   zhmc               varchar(150),
   cxnr               char(8),
   jgfksj             integer                         not null,
   bankname           varchar(150)                    not null,
   bankid             varchar(12),
   zxjg               char(1),
   respcode           varchar(8),
   respmsg            varchar(100),
   fksm               varchar(500),
   fkjgmc             varchar(200),
   zwrq               char(8)                         not null,
   systime            char(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_qhcx primary key (ywsqbh, rwxh)
);
create table gab_dxzp_qhcx_qlxx  (
   ywsqbh             varchar(36)                     not null,
   rwxh               integer                         not null,
   xh                 varchar(8)                      not null,
   zh                 varchar(50),
   kh                 varchar(30),
   zjlx               varchar(15),
   zjhm               varchar(30),
   qllx               varchar(2),
   qlrxm              varchar(60),
   qlje               varchar(20),
   qlrtxdz            varchar(60),
   qlrlxfs            varchar(50),
   zwrq               char(8)                         not null,
   systime            char(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_qhcx_qlxx primary key (ywsqbh, rwxh, xh)
);