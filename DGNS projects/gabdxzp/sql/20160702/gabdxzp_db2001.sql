drop table gab_dxzp_sbxx_zhxx;
drop table gab_dxzp_hhmd;
drop table gab_dxzp_ztcx ;
drop table gab_dxzp_djxj ;
drop table gab_dxzp_jymx ;
drop table gab_dxzp_ycsj ;
drop table gab_dxzp_sazh ;
drop table gab_dxzp_zhsa ;
drop table gab_dxzp_sfsa ;
drop table gab_dxzp_ztcx_resp ;
drop table gab_dxzp_sbxx_zhjyxx ;
drop table gab_dxzp_sf_dzh ;
drop table gab_dxzp_sf_szh ;
create table gab_dxzp_sbxx_zhxx  (
   sbpch                varchar(36)                     not null,
   sbpcxh               integer                         not null,
   zhxh                 varchar(8)                      not null,
   jybm                 varchar(6),
   csbwlsh              varchar(53),
   ywsqbh               varchar(36),
   zh                   varchar(30),
   kksj                 varchar(14),
   kkdd                 varchar(170),
   zwrq                 varchar(8)                         not null,
   systime              varchar(6)                         not null,
   by1                  varchar(30),
   by2                  varchar(254),
   by3                  varchar(254),
   constraint pkdxzp_sbxx_zhxx primary key (sbpch, sbpcxh, zhxh)
);
create table gab_dxzp_hhmd  (
   mdjz               varchar(70)                     not null,
   yhbh               varchar(12),
   mdlx               varchar(45),
   fsjgbm             varchar(12),
   hhbz               varchar(1),
   ajlx               varchar(12),
   xm                 varchar(180),
   galxr              varchar(60),
   galxdh             varchar(20),
   kksj               varchar(14),
   yxq                varchar(30),
   mdsm               varchar(225),
   by1                varchar(254),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_hhmd primary key (mdjz)
);
create table gab_dxzp_ztcx  (
   ywsqbh             varchar(36)                     not null,
   rwxh               integer                         not null,
   khyh               varchar(12)                     not null,
   khyhmc             varchar(150),
   zhlb               varchar(2)                      not null,
   zhmc               varchar(150),
   zh                 varchar(30)                     not null,
   jgfksj             integer                         not null,
   zxjg               varchar(1),
   respcode           varchar(8),
   respmsg            varchar(100),
   fksm               varchar(300),
   fkjgmc             varchar(150),
   zwrq               varchar(8)                         not null,
   systime            varchar(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_ztcx primary key (ywsqbh, rwxh)
);
create table gab_dxzp_djxj  (
   ywsqbh               varchar(36)                     not null,
   rwxh                 integer                         not null,
   yywsqbh              varchar(36),
   khyh                 varchar(12)                     not null,
   khyhmc               varchar(150),
   djywlx             varchar(2)   not null,
   zhlb                 varchar(2)                      not null,
   zhmc                 varchar(120)                    not null,
   zh                   varchar(50)                     not null,
   zjlx                 varchar(2),
   zjhm                 varchar(30),
   djfs                 varchar(2),
   bz                   varchar(3),
   je                   varchar(18),
   dqr                  varchar(8)                         not null,
   djqssj               varchar(14),
   djjssj               varchar(14),
   jgfksj               integer                         not null,
   zxjg                 varchar(1),
   respcode             varchar(8),
   respmsg              varchar(100),
   kh                   varchar(30),
   zxqssj               varchar(14),
   zxjssj               varchar(14),
   fksm                 varchar(300),
   fkjgmc               varchar(150),
   djje                 varchar(20),
   zhye                 varchar(20),
   zxdjje               varchar(20),
   zxdjrq             varchar(14),
   zhkyye               varchar(20),
   zxdjjg               varchar(60),
   wsh                varchar(254),
   zwrq                 varchar(8)                         not null,
   systime              varchar(6)                         not null,
   by1                  varchar(30),
   by2                  varchar(254),
   by3                  varchar(254),
   constraint pkdxzp_djxj primary key (ywsqbh, rwxh)
);
create table gab_dxzp_jymx  (
   ywsqbh             varchar(36)                     not null,
   rwxh               integer                         not null,
   khyh               varchar(12)                     not null,
   khyhmc             varchar(150),
   zhlb               varchar(2)                      not null,
   zhmc               varchar(120),
   zh                 varchar(30)                     not null,
   cxnr               varchar(8),
   cxqsrq             varchar(8),
   cxqssj             varchar(6),
   cxjzrq             varchar(8),
   cxjzsj             varchar(6),
   jgfksj             integer                         not null,
   zxjg               varchar(1),
   respcode           varchar(8),
   respmsg            varchar(100),
   fksm               varchar(300),
   fkjgmc             varchar(150),
   zwrq               varchar(8)                         not null,
   systime            varchar(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_jymx primary key (ywsqbh, rwxh)
);
create table gab_dxzp_ycsj  (
   sbpch              varchar(36)                     not null,
   sbpcxh             integer                         not null,
   jybm               varchar(6),
   csbwlsh            varchar(53),
   ywsqbh             varchar(36),
   ywlx               varchar(4),
   sjtzm              varchar(4),
   yywsqbh            varchar(36),
   zhm                varchar(120)                    not null,
   kh                 varchar(30��                     not null,
   beiz               varchar(150),
   zwrq               varchar(8)                         not null,
   systime            varchar(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_ycsj primary key (sbpch, sbpcxh)
);
create table gab_dxzp_sazh  (
   sbpch                varchar(36)                     not null,
   sbpcxh               integer                         not null,
   jybm                 varchar(6),
   csbwlsh              varchar(53),
   ywsqbh               varchar(36),
   ywlx                 varchar(4),
   sjtzm                varchar(4),
   yywsqbh              varchar(36),
   kh                   varchar(30),
   zhm                  varchar(120),
   zjlx                 varchar(2),
   zjhm                 varchar(30),
   lxdh                 varchar(30),
   txdz                 varchar(150),
   yzbm                 varchar(10),
   zhlx                 varchar(30),
   zhzt                 varchar(10),
   khrq                 varchar(8),
   xhrq                 varchar(8),
   kkdd                 varchar(170),
   zwrq                 varchar(8)                         not null,
   systime              varchar(6)                         not null,
   by1                  varchar(30),
   by2                  varchar(254),
   by3                  varchar(254),
   constraint pkdxzp_sazh primary key (sbpch, sbpcxh)
);
create table gab_dxzp_ztcx_resp  (
   ywsqbh             varchar(36)                     not null,
   rwxh               integer                         not null,
   fkjgmc             varchar(150),
   fksm               varchar(300),
   zjlx               varchar(2)                      not null,
   zjhm               varchar(30)                     not null,
   ztmc               varchar(100)                    not null,
   lxsj               varchar(20)                     not null,
   dbrxm              varchar(60),
   dbrzjlx            varchar(2),
   dbrzjhm            varchar(30),
   zzdz               varchar(150),
   zzdh               varchar(20),
   gzdw               varchar(100),
   dwdz               varchar(150),
   dwdh               varchar(20),
   yxdz               varchar(60),
   frdb               varchar(60),
   frdbzjlx           varchar(2),
   frdbzjhm           varchar(30),
   khgszzhm           varchar(18),
   gsnsh              varchar(20),
   dsnsh              varchar(20),
   zzsxrq             varchar(8),
   beiz               varchar(254),
   zwrq               varchar(8)                         not null,
   systime            varchar(6)                         not null,
   by1                varchar(30),
   by2                varchar(254),
   by3                varchar(254),
   constraint pkdxzp_ztcx_resp primary key (ywsqbh, rwxh)
);
