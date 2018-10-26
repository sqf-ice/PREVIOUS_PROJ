drop table yw_gjj_trans;

/*==============================================================*/
/* Table: yw_gjj_trans                                        */
/*==============================================================*/
create table yw_gjj_trans 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   sendnode           VARCHAR(6),
   senddate           VARCHAR(8)              not null,
   sendtime           VARCHAR(6),
   transcode          VARCHAR(7)           not null,
   receivenode        VARCHAR(6),
   bdcdate            VARCHAR(8),
   bdctime            VARCHAR(6),
   bdcseqno           VARCHAR(32),
   custno             VARCHAR(32),
   operno             VARCHAR(21),
   beginrec           INTEGER,
   maxrec             INTEGER,
   clrq               VARCHAR(8),
   clsj               VARCHAR(6),
   jbjg               VARCHAR(16),
   jbgy               VARCHAR(16),
   ywlsh              VARCHAR(32),
   hoststatus         VARCHAR(1),
   hostseqno          VARCHAR(32),
   hostmsg            VARCHAR(160),
   hostrespcode       VARCHAR(20),
   zjrq               VARCHAR(8),
   zjsj               VARCHAR(6),
   tjhxcs             INTEGER,
   caphostseqno       VARCHAR(32),
   inthostseqno       VARCHAR(32),
   penhostseqno       VARCHAR(32),
   finehostseqno      VARCHAR(32),
   summary            VARCHAR(60),
   batch              VARCHAR(20),
   transdate          VARCHAR(8)           not null,
   transtime          VARCHAR(8),
   qzlsh              VARCHAR(10)          not null,
   qqdzt              VARCHAR(2),
   respcode           VARCHAR(8),
   respmsg            VARCHAR(100),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_TRANS primary key (sendseqno, txunitno)
);

comment on table yw_gjj_trans is
'住建部公积金主流水表';

comment on column yw_gjj_trans.sendseqno is
'发送方流水号';

comment on column yw_gjj_trans.txunitno is
'交易机构号';

comment on column yw_gjj_trans.sendnode is
'中心代码';

comment on column yw_gjj_trans.senddate is
'发送方日期';

comment on column yw_gjj_trans.transcode is
'交易码';

comment on column yw_gjj_trans.bdcdate is
'采集系统日期';

comment on column yw_gjj_trans.bdctime is
'数据应用系统时间';

comment on column yw_gjj_trans.bdcseqno is
'采集系统流水号';

comment on column yw_gjj_trans.custno is
'银行客户编号';

comment on column yw_gjj_trans.operno is
'发送操作员';

comment on column yw_gjj_trans.beginrec is
'开始记录数';

comment on column yw_gjj_trans.maxrec is
'一次查询最大记录数';

comment on column yw_gjj_trans.clrq is
'处理日期';

comment on column yw_gjj_trans.clsj is
'处理时间';

comment on column yw_gjj_trans.jbjg is
'经办机构';

comment on column yw_gjj_trans.jbgy is
'经办柜员';

comment on column yw_gjj_trans.ywlsh is
'业务流水号';

comment on column yw_gjj_trans.hoststatus is
'银行主机处理状态0-成功 1-失败 3-超时 9-初始';

comment on column yw_gjj_trans.hostseqno is
'银行主机流水号';

comment on column yw_gjj_trans.hostmsg is
'银行主机响应信息';

comment on column yw_gjj_trans.hostrespcode is
'银行主机响应码';

comment on column yw_gjj_trans.zjrq is
'主机日期';

comment on column yw_gjj_trans.zjsj is
'主机时间';

comment on column yw_gjj_trans.tjhxcs is
'提交核心次数';

comment on column yw_gjj_trans.caphostseqno is
'本金银行主机流水号';

comment on column yw_gjj_trans.inthostseqno is
'利息银行主机流水号';

comment on column yw_gjj_trans.penhostseqno is
'贷款罚息银行主机流水号';

comment on column yw_gjj_trans.finehostseqno is
'贷款违约金银行流水号';

comment on column yw_gjj_trans.summary is
'摘要';

comment on column yw_gjj_trans.batch is
'交易批量编号';

comment on column yw_gjj_trans.transdate is
'交易日期';

comment on column yw_gjj_trans.transtime is
'交易时间';

comment on column yw_gjj_trans.qzlsh is
'前置流水号';

comment on column yw_gjj_trans.qqdzt is
'11-落地失败,20-已落地待处理,21-提交失败,23-提交超时,30-已提交待提回,31-提回失败,33-提回超时,40-已处理待反馈,41-反馈失败,43-反馈超时,99-已反馈';

comment on column yw_gjj_trans.zwrq is
'前置日期';

comment on column yw_gjj_trans.systime is
'前置时间';

comment on column yw_gjj_trans.remark is
'备注';

comment on column yw_gjj_trans.remark1 is
'备用1';

comment on column yw_gjj_trans.remark2 is
'备注2';

comment on column yw_gjj_trans.remark3 is
'备用3';

comment on column yw_gjj_trans.remark4 is
'备用4';













drop table yw_gjj_dbsfk;

/*==============================================================*/
/* Table: yw_gjj_dbsfk                                        */
/*==============================================================*/
create table yw_gjj_dbsfk 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   sfkbz              VARCHAR(1),
   currno             VARCHAR(3),
   curriden           VARCHAR(1),
   settletype         VARCHAR(1),
   bustype            VARCHAR(6),
   deacctno           VARCHAR(32),
   deacctname         VARCHAR(60),
   deacctclass        VARCHAR(1),
   debankname         VARCHAR(60),
   dechgno            VARCHAR(12),
   debankclass        VARCHAR(1),
   conagrno           VARCHAR(32),
   capamt             NUMERIC(16,2),
   deintacctno        VARCHAR(32),
   deintacctname      VARCHAR(60),
   deintacctclass     VARCHAR(1),
   deintcracct        VARCHAR(32),
   intamt             NUMERIC(16,2),
   cracctno           VARCHAR(32),
   cracctname         VARCHAR(60),
   cracctclass        VARCHAR(1),
   crbankclass        VARCHAR(1),
   crbankname         VARCHAR(60),
   crchgno            VARCHAR(12),
   amt                NUMERIC(16,2),
   refacctno          VARCHAR(32),
   refseqno1          VARCHAR(32),
   refseqno2          VARCHAR(32),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_DBSFK primary key (sendseqno, txunitno)
);

comment on table yw_gjj_dbsfk is
'住建部公积金单笔收付款表';

comment on column yw_gjj_dbsfk.sendseqno is
'发送方流水号';

comment on column yw_gjj_dbsfk.txunitno is
'交易机构号';

comment on column yw_gjj_dbsfk.sfkbz is
'收付款标志0-收款，1-付款';

comment on column yw_gjj_dbsfk.currno is
'币种';

comment on column yw_gjj_dbsfk.curriden is
'钞汇鉴别';

comment on column yw_gjj_dbsfk.settletype is
'结算模式';

comment on column yw_gjj_dbsfk.bustype is
'业务类型';

comment on column yw_gjj_dbsfk.deacctno is
'付方账号';

comment on column yw_gjj_dbsfk.deacctname is
'付方户名';

comment on column yw_gjj_dbsfk.deacctclass is
'付方账户类别';

comment on column yw_gjj_dbsfk.debankname is
'付方行名';

comment on column yw_gjj_dbsfk.dechgno is
'付方联行号';

comment on column yw_gjj_dbsfk.debankclass is
'付方账户行别';

comment on column yw_gjj_dbsfk.conagrno is
'多方协议号';

comment on column yw_gjj_dbsfk.capamt is
'本金发生额';

comment on column yw_gjj_dbsfk.deintacctno is
'付息户账号';

comment on column yw_gjj_dbsfk.deintacctname is
'付息户户名';

comment on column yw_gjj_dbsfk.deintacctclass is
'付息户类别';

comment on column yw_gjj_dbsfk.deintcracct is
'利息收方账号';

comment on column yw_gjj_dbsfk.intamt is
'利息发生额';

comment on column yw_gjj_dbsfk.cracctno is
'收方账号';

comment on column yw_gjj_dbsfk.cracctname is
'收方户名';

comment on column yw_gjj_dbsfk.cracctclass is
'收方账户类别';

comment on column yw_gjj_dbsfk.crbankclass is
'收方账户行别';

comment on column yw_gjj_dbsfk.crbankname is
'收方行名';

comment on column yw_gjj_dbsfk.crchgno is
'收方联行号';

comment on column yw_gjj_dbsfk.amt is
'金额';

comment on column yw_gjj_dbsfk.refacctno is
'业务明细账号';

comment on column yw_gjj_dbsfk.refseqno1 is
'业务明细流水号1';

comment on column yw_gjj_dbsfk.refseqno2 is
'业务明细流水号2';

comment on column yw_gjj_dbsfk.zwrq is
'前置日期';

comment on column yw_gjj_dbsfk.systime is
'前置时间';

comment on column yw_gjj_dbsfk.remark is
'备注';

comment on column yw_gjj_dbsfk.remark1 is
'备用1';

comment on column yw_gjj_dbsfk.remark2 is
'备注2';

comment on column yw_gjj_dbsfk.remark3 is
'备用3';

comment on column yw_gjj_dbsfk.remark4 is
'备用4';














drop table yw_gjj_drbatch;

/*==============================================================*/
/* Table: yw_gjj_drbatch                                      */
/*==============================================================*/
create table yw_gjj_drbatch 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   sfkbz              VARCHAR(1),
   batchno            VARCHAR(20)          not null,
   fileno             VARCHAR(8)           not null,
   currno             VARCHAR(3),
   curriden           VARCHAR(1),
   filetype           VARCHAR(1),
   bustype            VARCHAR(6),
   batchprjno         VARCHAR(32),
   acctno             VARCHAR(32),
   acctname           VARCHAR(60),
   acctclass          VARCHAR(1),
   batchcapamt        NUMERIC(16,2),
   deintacctno        VARCHAR(32),
   deintacctname      VARCHAR(60),
   deintacctclass     VARCHAR(1),
   deintcracct        VARCHAR(32),
   batchintamt        NUMERIC(16,2),
   bankacctno         VARCHAR(32),
   batchtotalnum      INTEGER,
   batchtotalamt      NUMERIC(16,2),
   batchsuccnum       INTEGER,
   batchsuccamt       NUMERIC(16,2),
   batchfailnum       INTEGER,
   batchfailamt       NUMERIC(16,2),
   zipfilename        VARCHAR(128),
   unzipfilename      VARCHAR(128),
   trantype           VARCHAR(1),
   dealtype           VARCHAR(1),
   dealstep           VARCHAR(1),
   dealstatus         VARCHAR(5),
   dealinf            VARCHAR(160),
   batchpch           VARCHAR(64),
   querystatus        VARCHAR(1),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_DRBATCH primary key (sendseqno, txunitno)
);

comment on table yw_gjj_drbatch is
'住建部公积金批量收付款主表';

comment on column yw_gjj_drbatch.sendseqno is
'发送方流水号';

comment on column yw_gjj_drbatch.txunitno is
'交易机构号';

comment on column yw_gjj_drbatch.sfkbz is
'收付款标志0-收款,1-付款,2-扣款';

comment on column yw_gjj_drbatch.batchno is
'批次号';

comment on column yw_gjj_drbatch.fileno is
'文件序号';

comment on column yw_gjj_drbatch.currno is
'币种';

comment on column yw_gjj_drbatch.curriden is
'钞汇鉴别';

comment on column yw_gjj_drbatch.filetype is
'文件类型';

comment on column yw_gjj_drbatch.bustype is
'业务类型';

comment on column yw_gjj_drbatch.batchprjno is
'批量项目编号';

comment on column yw_gjj_drbatch.acctno is
'账号';

comment on column yw_gjj_drbatch.acctname is
'户名';

comment on column yw_gjj_drbatch.acctclass is
'账户类别';

comment on column yw_gjj_drbatch.batchcapamt is
'付款本金金额';

comment on column yw_gjj_drbatch.deintacctno is
'付方利息户账号';

comment on column yw_gjj_drbatch.deintacctname is
'付方利息户户名';

comment on column yw_gjj_drbatch.deintacctclass is
'付方利息户类别';

comment on column yw_gjj_drbatch.deintcracct is
'利息收方账号';

comment on column yw_gjj_drbatch.batchintamt is
'付款利息金额';

comment on column yw_gjj_drbatch.bankacctno is
'银行内部过渡户';

comment on column yw_gjj_drbatch.batchtotalnum is
'总笔数';

comment on column yw_gjj_drbatch.batchtotalamt is
'总金额';

comment on column yw_gjj_drbatch.batchsuccnum is
'成功笔数';

comment on column yw_gjj_drbatch.batchsuccamt is
'成功金额';

comment on column yw_gjj_drbatch.batchfailnum is
'失败笔数';

comment on column yw_gjj_drbatch.batchfailamt is
'失败金额';

comment on column yw_gjj_drbatch.zipfilename is
'密文文件名';

comment on column yw_gjj_drbatch.unzipfilename is
'明文文件名';

comment on column yw_gjj_drbatch.trantype is
'交易类别 a：行内代扣 b：行内代发 c：跨行代扣 d: 跨行代发 e: 混合代扣 f: 混合代发 g: 其他';

comment on column yw_gjj_drbatch.dealtype is
'处理类型1:文件 2:逐笔 3:都支持';

comment on column yw_gjj_drbatch.dealstep is
'处理步点0-初态，1-收妥，2-处理中，3-处理完成';

comment on column yw_gjj_drbatch.dealstatus is
'0-初态，1-成功，2-失败';

comment on column yw_gjj_drbatch.dealinf is
'处理结果描述';

comment on column yw_gjj_drbatch.batchpch is
'核心处理批次号';

comment on column yw_gjj_drbatch.querystatus is
'结果查询状态0-未查询，1-已查询，2-查询失败';

comment on column yw_gjj_drbatch.zwrq is
'前置日期';

comment on column yw_gjj_drbatch.systime is
'前置时间';

comment on column yw_gjj_drbatch.remark is
'备注';

comment on column yw_gjj_drbatch.remark1 is
'备注1';

comment on column yw_gjj_drbatch.remark2 is
'备注2';

comment on column yw_gjj_drbatch.remark3 is
'备注3';

comment on column yw_gjj_drbatch.remark4 is
'备注4';




















drop table yw_gjj_drbatchmx;

/*==============================================================*/
/* Table: yw_gjj_drbatchmx                                    */
/*==============================================================*/
create table yw_gjj_drbatchmx 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   seqno              VARCHAR(20)          not null,
   batchno            VARCHAR(20)          not null,
   fileno             VARCHAR(5)           not null,
   amt                NUMERIC(16,2),
   acctno             VARCHAR(32),
   acctname           VARCHAR(60),
   chgno              VARCHAR(12),
   openchgno          VARCHAR(12),
   drbal              NUMERIC(16,2),
   crbal              NUMERIC(16,2),
   address            VARCHAR(80),
   conagrno           VARCHAR(32),
   amttype            VARCHAR(1),
   summary            VARCHAR(60),
   mxacctno           VARCHAR(32),
   mxserialno1        VARCHAR(32),
   mxserialno2        VARCHAR(32),
   capamt             NUMERIC(16,2),
   intamt             NUMERIC(16,2),
   dealstatus         VARCHAR(1),
   hostseq            VARCHAR(32),
   hostdate           VARCHAR(8),
   caphostseqno       VARCHAR(32),
   inthostseqno       VARCHAR(32),
   dealcode           VARCHAR(5),
   dealmsg            VARCHAR(160),
   hzno               VARCHAR(32),
   bankex             VARCHAR(254),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(128),
   remark2            VARCHAR(64),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_DRBATCHMX primary key (sendseqno, txunitno, seqno)
);

comment on table yw_gjj_drbatchmx is
'住建部公积金批量收付款明细表';

comment on column yw_gjj_drbatchmx.sendseqno is
'发送方流水号';

comment on column yw_gjj_drbatchmx.txunitno is
'交易机构号';

comment on column yw_gjj_drbatchmx.seqno is
'序号';

comment on column yw_gjj_drbatchmx.batchno is
'批次号';

comment on column yw_gjj_drbatchmx.fileno is
'文件序号';

comment on column yw_gjj_drbatchmx.amt is
'金额';

comment on column yw_gjj_drbatchmx.acctno is
'账号';

comment on column yw_gjj_drbatchmx.acctname is
'户名';

comment on column yw_gjj_drbatchmx.chgno is
'账户联行号';

comment on column yw_gjj_drbatchmx.openchgno is
'开户行联行号';

comment on column yw_gjj_drbatchmx.drbal is
'付方余额';

comment on column yw_gjj_drbatchmx.crbal is
'收方余额';

comment on column yw_gjj_drbatchmx.address is
'地址';

comment on column yw_gjj_drbatchmx.conagrno is
'多方协议号';

comment on column yw_gjj_drbatchmx.amttype is
'足额标志';

comment on column yw_gjj_drbatchmx.summary is
'摘要';

comment on column yw_gjj_drbatchmx.mxacctno is
'业务明细账号';

comment on column yw_gjj_drbatchmx.mxserialno1 is
'业务明细流水号1';

comment on column yw_gjj_drbatchmx.mxserialno2 is
'业务明细流水号2';

comment on column yw_gjj_drbatchmx.capamt is
'本金发生额';

comment on column yw_gjj_drbatchmx.intamt is
'利息发生额';

comment on column yw_gjj_drbatchmx.dealstatus is
'处理结果0-初态，1-成功，2失败，3超时';

comment on column yw_gjj_drbatchmx.hostseq is
'主机流水';

comment on column yw_gjj_drbatchmx.hostdate is
'主机日期';

comment on column yw_gjj_drbatchmx.caphostseqno is
'本金银行流水号';

comment on column yw_gjj_drbatchmx.inthostseqno is
'利息银行流水号';

comment on column yw_gjj_drbatchmx.dealcode is
'处理结果码00000-成功，99999超时，其他失败';

comment on column yw_gjj_drbatchmx.dealmsg is
'处理结果信息';

comment on column yw_gjj_drbatchmx.hzno is
'回执编号';

comment on column yw_gjj_drbatchmx.bankex is
'银行扩展';

comment on column yw_gjj_drbatchmx.zwrq is
'前置日期';

comment on column yw_gjj_drbatchmx.systime is
'前置时间';

comment on column yw_gjj_drbatchmx.remark is
'备用';

comment on column yw_gjj_drbatchmx.remark1 is
'备用1';

comment on column yw_gjj_drbatchmx.remark2 is
'备用2';

comment on column yw_gjj_drbatchmx.remark3 is
'备用3';

comment on column yw_gjj_drbatchmx.remark4 is
'备用4';




















drop table yw_gjj_custqy;

/*==============================================================*/
/* Table: yw_gjj_custqy                                       */
/*==============================================================*/
create table yw_gjj_custqy 
(
   receivenode        VARCHAR(6)           not null,
   acctno             VARCHAR(32)          not null,
   custno             VARCHAR(32),
   acctname           VARCHAR(60),
   opbrhno            VARCHAR(20),
   opbrhname          VARCHAR(80),
   acctnature         VARCHAR(1),
   accttype           VARCHAR(1),
   acctkind           VARCHAR(1),
   acctstatus         VARCHAR(1),
   trantype           VARCHAR(1),
   bankacctno         VARCHAR(32),
   bkrefloancapno     VARCHAR(32),
   dkbjacctno         VARCHAR(32),
   dklxacctno         VARCHAR(32),
   qystatus           VARCHAR(1),
   qydate             VARCHAR(8),
   sendflag           VARCHAR(1),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_CUSTQY primary key (receivenode, acctno)
);

comment on table yw_gjj_custqy is
'住建部公积金中心账户签约表';

comment on column yw_gjj_custqy.receivenode is
'公积金中心节点号';

comment on column yw_gjj_custqy.acctno is
'账号';

comment on column yw_gjj_custqy.custno is
'客户编号';

comment on column yw_gjj_custqy.acctname is
'账户名称';

comment on column yw_gjj_custqy.opbrhno is
'开户机构号';

comment on column yw_gjj_custqy.opbrhname is
'开户机构名';

comment on column yw_gjj_custqy.acctnature is
'1-活期2-定期3-一户通';

comment on column yw_gjj_custqy.accttype is
'1-归集户2-结算户3-增值收益户4-贷款本金专户5-贷款利息专户6-贷款罚息专户7-贷款违约金专户';

comment on column yw_gjj_custqy.acctkind is
'2-对公1-对私';

comment on column yw_gjj_custqy.acctstatus is
'0-注销 1-正常';

comment on column yw_gjj_custqy.trantype is
'1-同行2-实时（他行）3-非实时（他行）';

comment on column yw_gjj_custqy.bankacctno is
'银行扣款资金内部过渡户';

comment on column yw_gjj_custqy.bkrefloancapno is
'银行委托贷款本金账号';

comment on column yw_gjj_custqy.dkbjacctno is
'银行贷款本金内部过渡户';

comment on column yw_gjj_custqy.dklxacctno is
'银行贷款利息内部过渡户';

comment on column yw_gjj_custqy.qystatus is
'0-签约，1-解约';

comment on column yw_gjj_custqy.qydate is
'签约日期';

comment on column yw_gjj_custqy.sendflag is
'0-未推送，1-已推送';

comment on column yw_gjj_custqy.remark is
'备注';

comment on column yw_gjj_custqy.remark1 is
'备注1';

comment on column yw_gjj_custqy.remark2 is
'备注2';

comment on column yw_gjj_custqy.remark3 is
'备注3';

comment on column yw_gjj_custqy.remark4 is
'备注4';




















drop table yw_gjj_accserial;

/*==============================================================*/
/* Table: yw_gjj_accserial                                    */
/*==============================================================*/
create table yw_gjj_accserial 
(
   sendseqno          VARCHAR(32)          not null,
   sendnode           VARCHAR(6)           not null,
   acctno             VARCHAR(32)          not null,
   seqno              VARCHAR(20)          not null,
   hostseq            VARCHAR(32)          not null,
   jydm               VARCHAR(6),
   rivalacctno        VARCHAR(32),
   rivalacctname      VARCHAR(60),
   amt                NUMERIC(16,2),
   trandate           VARCHAR(8),
   trantime           VARCHAR(6),
   availbal           NUMERIC(16,2),
   openbrhno          VARCHAR(20),
   beiz               VARCHAR(254),
   currno             VARCHAR(3),
   curriden           VARCHAR(1),
   bal                NUMERIC(16,2),
   overamt            NUMERIC(16,2),
   dcmttp             VARCHAR(4),
   dcmtno             VARCHAR(16),
   bankno             VARCHAR(32),
   desctx             VARCHAR(60),
   transtatus         VARCHAR(1),
   penno              VARCHAR(30),
   copno              VARCHAR(30),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_ACCSERIAL primary key (sendseqno, sendnode, acctno, seqno, hostseq)
);

comment on table yw_gjj_accserial is
'住建部公积金账户变动通知明细表';

comment on column yw_gjj_accserial.acctno is
'账号';

comment on column yw_gjj_accserial.seqno is
'序号';

comment on column yw_gjj_accserial.hostseq is
'银行主机流水号';

comment on column yw_gjj_accserial.jydm is
'交易代码';

comment on column yw_gjj_accserial.rivalacctno is
'交易对手账号';

comment on column yw_gjj_accserial.rivalacctname is
'交易对手户名';

comment on column yw_gjj_accserial.amt is
'金额';

comment on column yw_gjj_accserial.trandate is
'交易日期';

comment on column yw_gjj_accserial.trantime is
'交易时间';

comment on column yw_gjj_accserial.availbal is
'可用余额';

comment on column yw_gjj_accserial.openbrhno is
'开户机构号';

comment on column yw_gjj_accserial.beiz is
'说明';

comment on column yw_gjj_accserial.currno is
'币种156';

comment on column yw_gjj_accserial.curriden is
'炒汇标志1：钞 2：汇';

comment on column yw_gjj_accserial.bal is
'账户余额';

comment on column yw_gjj_accserial.overamt is
'可透支余额';

comment on column yw_gjj_accserial.dcmttp is
'凭证种类';

comment on column yw_gjj_accserial.dcmtno is
'凭证号码';

comment on column yw_gjj_accserial.bankno is
'交易对手行号';

comment on column yw_gjj_accserial.desctx is
'摘要';

comment on column yw_gjj_accserial.transtatus is
'Y：冲正
N：未冲正';

comment on column yw_gjj_accserial.penno is
'定期/通知/一本通账户使用，用于标识账号下不同存款';

comment on column yw_gjj_accserial.copno is
'定期/通知/一本通使用，标识账号下不同存款';

comment on column yw_gjj_accserial.zwrq is
'前置日期';

comment on column yw_gjj_accserial.systime is
'前置时间';

comment on column yw_gjj_accserial.remark is
'备注';

comment on column yw_gjj_accserial.remark1 is
'备注1';

comment on column yw_gjj_accserial.remark2 is
'备注2';

comment on column yw_gjj_accserial.remark3 is
'备注3';

comment on column yw_gjj_accserial.remark4 is
'备注4';




















drop table yw_gjj_sendserial;

/*==============================================================*/
/* Table: yw_gjj_sendserial                                   */
/*==============================================================*/
create table yw_gjj_sendserial 
(
   sendseqno          VARCHAR(32)          not null,
   sendnode           VARCHAR(6)           not null,
   senddate           VARCHAR(8)              not null,
   sendtime           VARCHAR(6),
   transcode          VARCHAR(7),
   receivenode        VARCHAR(6),
   receivedate        VARCHAR(8),
   receivetime        VARCHAR(6),
   receiveseqno       VARCHAR(32),
   jbjg               VARCHAR(16),
   jbgy               VARCHAR(16),
   txstatus           VARCHAR(1),
   qzlsh              VARCHAR(10)          not null,
   qqdzt              VARCHAR(2),
   respcode           VARCHAR(8),
   respmsg            VARCHAR(254),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_SENDSERIAL primary key (sendseqno, sendnode)
);

comment on table yw_gjj_sendserial is
'住建部公积金往帐流水表';

comment on column yw_gjj_sendserial.sendseqno is
'发送方流水号-银行流水号';

comment on column yw_gjj_sendserial.sendnode is
'发送方节点号-参见银行代码表';

comment on column yw_gjj_sendserial.senddate is
'发送方日期';

comment on column yw_gjj_sendserial.sendtime is
'发送方时间';

comment on column yw_gjj_sendserial.transcode is
'交易码';

comment on column yw_gjj_sendserial.receivenode is
'接收方节点号-参见公积金中心代码表';

comment on column yw_gjj_sendserial.receivedate is
'接收方日期';

comment on column yw_gjj_sendserial.receivetime is
'接收方时间';

comment on column yw_gjj_sendserial.receiveseqno is
'接收方流水号-数据应用系统接收流水号';

comment on column yw_gjj_sendserial.jbjg is
'经办机构';

comment on column yw_gjj_sendserial.jbgy is
'经办柜员';

comment on column yw_gjj_sendserial.txstatus is
'0：成功 1：失败 9：初始
';

comment on column yw_gjj_sendserial.qzlsh is
'前置流水号';

comment on column yw_gjj_sendserial.qqdzt is
'20-初始,41-反馈失败,43-反馈超时,99-已反馈';

comment on column yw_gjj_sendserial.zwrq is
'前置日期';

comment on column yw_gjj_sendserial.systime is
'前置时间';

comment on column yw_gjj_sendserial.remark is
'备注';

comment on column yw_gjj_sendserial.remark1 is
'备用1';

comment on column yw_gjj_sendserial.remark2 is
'备注2';

comment on column yw_gjj_sendserial.remark3 is
'备用3';

comment on column yw_gjj_sendserial.remark4 is
'备用4';






















drop table yw_gjj_sign;

/*==============================================================*/
/* Table: yw_gjj_sign                                         */
/*==============================================================*/
create table yw_gjj_sign 
(
   sendnode           VARCHAR(6)           not null,
   receivenode        VARCHAR(6)           not null,
   zwrq               VARCHAR(8),
   receivedate        VARCHAR(8),
   bdcdate            VARCHAR(8),
   dotime             VARCHAR(8),
   keyfilename        VARCHAR(128),
   handkey            VARCHAR(1024),
   bankno             VARCHAR(12),
   status             VARCHAR(1),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_SIGN primary key (sendnode, receivenode)
);

comment on table yw_gjj_sign is
'住建部公积金签到签退表';

comment on column yw_gjj_sign.sendnode is
'发送方节点';

comment on column yw_gjj_sign.receivenode is
'接收方节点';

comment on column yw_gjj_sign.zwrq is
'前置账务日期';

comment on column yw_gjj_sign.receivedate is
'接收方日期';

comment on column yw_gjj_sign.bdcdate is
'采集系统日期';

comment on column yw_gjj_sign.dotime is
'签到签退时间';

comment on column yw_gjj_sign.keyfilename is
'证书文件名';

comment on column yw_gjj_sign.handkey is
'会话密钥明文';

comment on column yw_gjj_sign.bankno is
'行联行号';

comment on column yw_gjj_sign.status is
'签到签退状态';

comment on column yw_gjj_sign.remark is
'备注';

comment on column yw_gjj_sign.remark1 is
'备注1';

comment on column yw_gjj_sign.remark2 is
'备注2';

comment on column yw_gjj_sign.remark3 is
'备注3';

comment on column yw_gjj_sign.remark4 is
'备注4';





















drop table yw_gjj_cskz;

/*==============================================================*/
/* Table: yw_gjj_cskz                                         */
/*==============================================================*/
create table yw_gjj_cskz 
(
   csjz               VARCHAR(20)          not null,
   cslx               VARCHAR(1),
   cstj               VARCHAR(8),
   jdm                VARCHAR(80)          not null,
   jdz                VARCHAR(40)          not null,
   remark             VARCHAR(40),
   jzlx               VARCHAR(1),
   whjg               VARCHAR(16),
   whgy               VARCHAR(16),
   whsj               VARCHAR(14),
   constraint PK_CSKZ primary key (csjz)
);

comment on table yw_gjj_cskz is
'住建部公积金初始化参数';

comment on column yw_gjj_cskz.csjz is
'参数键值';

comment on column yw_gjj_cskz.cslx is
'参数类型';

comment on column yw_gjj_cskz.cstj is
'参数条件 如果类型为渠道则输入渠道标识如果为应用输入应用标识';

comment on column yw_gjj_cskz.jdm is
'节点名';

comment on column yw_gjj_cskz.jdz is
'节点值';

comment on column yw_gjj_cskz.remark is
'说明';

comment on column yw_gjj_cskz.jzlx is
'加载类型 0自动 1非自动';







drop table yw_gjj_crcapint;

/*==============================================================*/
/* Table: yw_gjj_crcapint                                     */
/*==============================================================*/
create table yw_gjj_crcapint 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   batchno            VARCHAR(20)          not null,
   fileno             VARCHAR(8)           not null,
   oribatchno         VARCHAR(20)          not null,
   batchtotalnum      INTEGER,
   batchtotalamt      NUMERIC(16,2),
   beiz               VARCHAR(254),
   bkamt              NUMERIC(16,2),
   refamt             NUMERIC(16,2),
   refcapamt          NUMERIC(16,2),
   refintamt          NUMERIC(16,2),
   repenamt           NUMERIC(16,2),
   refineamt          NUMERIC(16,2),
   bankacctno         VARCHAR(32),
   bkrefloancapno     VARCHAR(32),
   bkloancapinacctno  VARCHAR(32),
   bkloanintinacctno  VARCHAR(32),
   loancapcracctno    VARCHAR(32),
   loancapcracctname  VARCHAR(60),
   loancapcracctclass VARCHAR(1),
   loancapcracctbkname VARCHAR(60),
   loancapamt         NUMERIC(16,2),
   loanintcracctno    VARCHAR(32),
   loanintcracctname  VARCHAR(60),
   loanintcracctclass VARCHAR(1),
   loanintcracctbkname VARCHAR(60),
   loanintamt         NUMERIC(16,2),
   loanpencracctno    VARCHAR(32),
   loanpencracctname  VARCHAR(60),
   loanpencracctclass VARCHAR(1),
   loanpencratbkname  VARCHAR(60),
   loanpenamt         NUMERIC(16,2),
   loanfinecracctno   VARCHAR(32),
   loanfinecracctname VARCHAR(60),
   loanfinecracctclass VARCHAR(1),
   loanfinecratbkname VARCHAR(60),
   loanfineamt        NUMERIC(16,2),
   batchsuccnum       INTEGER,
   batchsuccamt       NUMERIC(16,2),
   batchfailnum       INTEGER,
   batchfailamt       NUMERIC(16,2),
   zipfilename        VARCHAR(128),
   unzipfilename      VARCHAR(128),
   trantype           VARCHAR(1),
   dealtype           VARCHAR(1),
   dealstep           VARCHAR(1),
   dealstatus         VARCHAR(5),
   dealinf            VARCHAR(160),
   batchpch           VARCHAR(64),
   querystatus        VARCHAR(1),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_CRCAPINT primary key (sendseqno, txunitno)
);

comment on table yw_gjj_crcapint is
'住建部公积金贷款本息分解主表';

comment on column yw_gjj_crcapint.sendseqno is
'发送方流水号';

comment on column yw_gjj_crcapint.txunitno is
'交易机构号';

comment on column yw_gjj_crcapint.batchno is
'批次号';

comment on column yw_gjj_crcapint.fileno is
'文件序号';

comment on column yw_gjj_crcapint.oribatchno is
'原贷款扣款批次号';

comment on column yw_gjj_crcapint.batchtotalnum is
'本批次交易总笔数';

comment on column yw_gjj_crcapint.batchtotalamt is
'本批次交易总金额';

comment on column yw_gjj_crcapint.beiz is
'说明';

comment on column yw_gjj_crcapint.bkamt is
'到银行扣款还贷金额';

comment on column yw_gjj_crcapint.refamt is
'不需要银行扣款或公积金还贷金额';

comment on column yw_gjj_crcapint.refcapamt is
'非扣款本金还款额';

comment on column yw_gjj_crcapint.refintamt is
'非扣款利息还款额';

comment on column yw_gjj_crcapint.repenamt is
'非扣款罚息还款额';

comment on column yw_gjj_crcapint.refineamt is
'非扣款违约金还款额';

comment on column yw_gjj_crcapint.bankacctno is
'贷款扣款中使用的收款银行收款内部过渡户';

comment on column yw_gjj_crcapint.bkrefloancapno is
'银行委托贷款本金账号';

comment on column yw_gjj_crcapint.bkloancapinacctno is
'银行使用的贷款本金过渡户';

comment on column yw_gjj_crcapint.bkloanintinacctno is
'银行使用的贷款利息过渡户';

comment on column yw_gjj_crcapint.loancapcracctno is
'公积金中心放置贷款本金账号';

comment on column yw_gjj_crcapint.loancapcracctname is
'贷款本金账号户名';

comment on column yw_gjj_crcapint.loancapcracctclass is
'1：对私
2：对公';

comment on column yw_gjj_crcapint.loancapcracctbkname is
'贷款本金收方账户行名';

comment on column yw_gjj_crcapint.loancapamt is
'银行扣款贷款本金发生额';

comment on column yw_gjj_crcapint.loanintcracctno is
'公积金中心放置贷款利息账号';

comment on column yw_gjj_crcapint.loanintcracctname is
'贷款利息收方户名';

comment on column yw_gjj_crcapint.loanintcracctclass is
'1：对私
2：对公';

comment on column yw_gjj_crcapint.loanintcracctbkname is
'贷款利息收方账户行名';

comment on column yw_gjj_crcapint.loanintamt is
'银行扣款贷款利息发生额';

comment on column yw_gjj_crcapint.loanpencracctno is
'公积金中心放置贷款罚息账号';

comment on column yw_gjj_crcapint.loanpencracctname is
'贷款罚息收方户名';

comment on column yw_gjj_crcapint.loanpencracctclass is
'1：对私 2：对公';

comment on column yw_gjj_crcapint.loanpencratbkname is
'贷款罚息收方账户行名';

comment on column yw_gjj_crcapint.loanpenamt is
'银行扣款贷款罚息发生额';

comment on column yw_gjj_crcapint.loanfinecracctno is
'公积金中心放置贷款违约金账号';

comment on column yw_gjj_crcapint.loanfinecracctname is
'贷款违约金收方账户行名';

comment on column yw_gjj_crcapint.loanfinecracctclass is
'1：对私2：对公';

comment on column yw_gjj_crcapint.loanfinecratbkname is
'贷款违约金收方账户行名';

comment on column yw_gjj_crcapint.loanfineamt is
'银行扣款贷款违约金发生额户时填写';

comment on column yw_gjj_crcapint.batchsuccnum is
'成功笔数';

comment on column yw_gjj_crcapint.batchsuccamt is
'成功金额';

comment on column yw_gjj_crcapint.batchfailnum is
'失败笔数';

comment on column yw_gjj_crcapint.batchfailamt is
'失败金额';

comment on column yw_gjj_crcapint.zipfilename is
'密文文件名';

comment on column yw_gjj_crcapint.unzipfilename is
'明文文件名';

comment on column yw_gjj_crcapint.trantype is
'交易类别 a：行内代扣 b：行内代发 c：跨行代扣 d: 跨行代发 e: 混合代扣 f: 混合代发 g: 其他';

comment on column yw_gjj_crcapint.dealtype is
'处理类型1:文件 2:逐笔 3:都支持';

comment on column yw_gjj_crcapint.dealstep is
'处理步点0-初态，1-收妥，2-处理中，3-处理完成';

comment on column yw_gjj_crcapint.dealstatus is
'0-初态，1-成功，2-失败';

comment on column yw_gjj_crcapint.dealinf is
'处理结果描述';

comment on column yw_gjj_crcapint.batchpch is
'核心处理批次号';

comment on column yw_gjj_crcapint.querystatus is
'结果查询状态0-未查询，1-已查询，2-查询失败';

comment on column yw_gjj_crcapint.zwrq is
'前置日期';

comment on column yw_gjj_crcapint.systime is
'前置时间';

comment on column yw_gjj_crcapint.remark is
'备注';

comment on column yw_gjj_crcapint.remark1 is
'备注1';

comment on column yw_gjj_crcapint.remark2 is
'备注2';

comment on column yw_gjj_crcapint.remark3 is
'备注3';

comment on column yw_gjj_crcapint.remark4 is
'备注4';














drop table yw_gjj_crcapintmx;

/*==============================================================*/
/* Table: yw_gjj_crcapintmx                                   */
/*==============================================================*/
create table yw_gjj_crcapintmx 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   seqno              VARCHAR(20)          not null,
   batchno            VARCHAR(20)          not null,
   fileno             VARCHAR(5)           not null,
   mxacctno           VARCHAR(32),
   mxserialno         VARCHAR(32),
   idNUMERIC           VARCHAR(18),
   contractno         VARCHAR(32),
   name               VARCHAR(60),
   amt                NUMERIC(16,2),
   capamt             NUMERIC(16,2),
   intamt             NUMERIC(16,2),
   penamt             NUMERIC(16,2),
   fineamt            NUMERIC(16,2),
   bkamt              NUMERIC(16,2),
   refcapamt          NUMERIC(16,2),
   refintamt          NUMERIC(16,2),
   refineamt          NUMERIC(16,2),
   repenamt           NUMERIC(16,2),
   summary            VARCHAR(60),
   dealstatus         VARCHAR(1),
   hostseq            VARCHAR(32),
   hostdate           VARCHAR(8),
   caphostseqno       VARCHAR(32),
   inthostseqno       VARCHAR(32),
   dealcode           VARCHAR(5),
   dealmsg            VARCHAR(160),
   hzno               VARCHAR(32),
   bankex             VARCHAR(254),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(128),
   remark2            VARCHAR(64),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_CRCAPINTMX primary key (sendseqno, txunitno, seqno)
);

comment on table yw_gjj_crcapintmx is
'住建部公积金贷款本息分解明细表';

comment on column yw_gjj_crcapintmx.sendseqno is
'发送方流水号';

comment on column yw_gjj_crcapintmx.txunitno is
'交易机构号';

comment on column yw_gjj_crcapintmx.seqno is
'序号';

comment on column yw_gjj_crcapintmx.batchno is
'批次号';

comment on column yw_gjj_crcapintmx.fileno is
'文件序号';

comment on column yw_gjj_crcapintmx.mxacctno is
'业务明细账号';

comment on column yw_gjj_crcapintmx.mxserialno is
'业务明细流水号';

comment on column yw_gjj_crcapintmx.idNUMERIC is
'身份证号';

comment on column yw_gjj_crcapintmx.contractno is
'合同编号';

comment on column yw_gjj_crcapintmx.name is
'姓名';

comment on column yw_gjj_crcapintmx.amt is
'还款金额';

comment on column yw_gjj_crcapintmx.capamt is
'贷款本金发生额';

comment on column yw_gjj_crcapintmx.intamt is
'贷款利息发生额';

comment on column yw_gjj_crcapintmx.penamt is
'贷款罚息发生额';

comment on column yw_gjj_crcapintmx.fineamt is
'贷款违约金发生额';

comment on column yw_gjj_crcapintmx.bkamt is
'非扣款还贷金额';

comment on column yw_gjj_crcapintmx.refcapamt is
'非扣款贷款本金发生额';

comment on column yw_gjj_crcapintmx.refintamt is
'非扣款贷款利息发生额';

comment on column yw_gjj_crcapintmx.refineamt is
'非扣款贷款违约金发生额';

comment on column yw_gjj_crcapintmx.repenamt is
'非扣款贷款罚息发生额';

comment on column yw_gjj_crcapintmx.summary is
'摘要';

comment on column yw_gjj_crcapintmx.dealstatus is
'处理结果0-初态，1-成功，2失败，3超时';

comment on column yw_gjj_crcapintmx.hostseq is
'主机流水';

comment on column yw_gjj_crcapintmx.hostdate is
'主机日期';

comment on column yw_gjj_crcapintmx.caphostseqno is
'本金银行流水号';

comment on column yw_gjj_crcapintmx.inthostseqno is
'利息银行流水号';

comment on column yw_gjj_crcapintmx.dealcode is
'处理结果码00000-成功，99999超时，其他失败';

comment on column yw_gjj_crcapintmx.dealmsg is
'处理结果信息';

comment on column yw_gjj_crcapintmx.hzno is
'回执编号';

comment on column yw_gjj_crcapintmx.bankex is
'银行扩展';

comment on column yw_gjj_crcapintmx.zwrq is
'前置日期';

comment on column yw_gjj_crcapintmx.systime is
'前置时间';

comment on column yw_gjj_crcapintmx.remark is
'备用';

comment on column yw_gjj_crcapintmx.remark1 is
'备用1';

comment on column yw_gjj_crcapintmx.remark2 is
'备用2';

comment on column yw_gjj_crcapintmx.remark3 is
'备用3';

comment on column yw_gjj_crcapintmx.remark4 is
'备用4';
















drop table yw_gjj_fixedbusiness;

/*==============================================================*/
/* Table: yw_gjj_fixedbusiness                                */
/*==============================================================*/
create table yw_gjj_fixedbusiness 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   jylx               VARCHAR(1),
   currno             VARCHAR(3),
   curriden           VARCHAR(1),
   activedacctno      VARCHAR(32),
   activedacctname    VARCHAR(60),
   activedacctopenbank VARCHAR(60),
   fixedacctno        VARCHAR(32),
   fixedacctname      VARCHAR(60),
   fixedacctopenbank  VARCHAR(60),
   depositperiod      VARCHAR(1),
   interestrate       NUMERIC(8,5),
   amt                NUMERIC(16,2),
   extenddeposittype  VARCHAR(1),
   partexdeacctno     VARCHAR(32),
   beiz               VARCHAR(254),
   bookno             VARCHAR(50),
   booklistno         VARCHAR(50),
   depositbegindate   VARCHAR(8),
   depositenddate     VARCHAR(8),
   depostiamt         NUMERIC(16,2),
   drawamt            NUMERIC(16,2),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_FIXEDBUSINESS primary key (sendseqno, txunitno)
);

comment on table yw_gjj_fixedbusiness is
'住建部公积金定期业务';

comment on column yw_gjj_fixedbusiness.sendseqno is
'发送方流水号';

comment on column yw_gjj_fixedbusiness.txunitno is
'交易机构号';

comment on column yw_gjj_fixedbusiness.jylx is
'交易类型 0-活期转定期 1-定期支取 2-定期转存方式设定';

comment on column yw_gjj_fixedbusiness.currno is
'币种';

comment on column yw_gjj_fixedbusiness.curriden is
'钞汇鉴别';

comment on column yw_gjj_fixedbusiness.activedacctno is
'活期账号';

comment on column yw_gjj_fixedbusiness.activedacctname is
'活期户名';

comment on column yw_gjj_fixedbusiness.activedacctopenbank is
'活期账户开户机构名';

comment on column yw_gjj_fixedbusiness.fixedacctno is
'定期账号';

comment on column yw_gjj_fixedbusiness.fixedacctname is
'定期户名';

comment on column yw_gjj_fixedbusiness.fixedacctopenbank is
'定期账户开户机构名';

comment on column yw_gjj_fixedbusiness.depositperiod is
'存期 0：三个月 1：半年 2：一年 3：两年 4：三年 5：五年 
';

comment on column yw_gjj_fixedbusiness.interestrate is
'银行挂牌利率';

comment on column yw_gjj_fixedbusiness.amt is
'交易金额';

comment on column yw_gjj_fixedbusiness.extenddeposittype is
'转存方式
0：本金+利息自动转存 
1：不自动转存 
2：本金自动转存 
';

comment on column yw_gjj_fixedbusiness.partexdeacctno is
'本金发生额';

comment on column yw_gjj_fixedbusiness.beiz is
'付息户账号';

comment on column yw_gjj_fixedbusiness.bookno is
'册号 帐号为一本通时,必输';

comment on column yw_gjj_fixedbusiness.booklistno is
'笔号 帐号为一本通时,必输';

comment on column yw_gjj_fixedbusiness.depositbegindate is
'存入日期';

comment on column yw_gjj_fixedbusiness.depositenddate is
'到期日期';

comment on column yw_gjj_fixedbusiness.depostiamt is
'实际金额';

comment on column yw_gjj_fixedbusiness.drawamt is
'支取金额';

comment on column yw_gjj_fixedbusiness.zwrq is
'前置日期';

comment on column yw_gjj_fixedbusiness.systime is
'前置时间';

comment on column yw_gjj_fixedbusiness.remark is
'备用';

comment on column yw_gjj_fixedbusiness.remark1 is
'备用1';

comment on column yw_gjj_fixedbusiness.remark2 is
'备用2';

comment on column yw_gjj_fixedbusiness.remark3 is
'备用3';

comment on column yw_gjj_fixedbusiness.remark4 is
'备用4';










drop table yw_gjj_noticebusiness;

/*==============================================================*/
/* Table: yw_gjj_noticebusiness                               */
/*==============================================================*/
create table yw_gjj_noticebusiness 
(
   sendseqno          VARCHAR(32)          not null,
   txunitno           VARCHAR(15)          not null,
   jylx               VARCHAR(1),
   currno             VARCHAR(3),
   curriden           VARCHAR(1),
   fixedacctno        VARCHAR(32),
   fixedacctname      VARCHAR(60),
   fixedacctopenbank  VARCHAR(60),
   noticesetserialno  VARCHAR(20),
   bookno             VARCHAR(50),
   booklistno         VARCHAR(50),
   noticeflag         VARCHAR(1),
   noticedrawsetdate  VARCHAR(8),
   noticedrawdate     VARCHAR(8),
   drawamt            NUMERIC(16,2),
   balance            NUMERIC(16,2),
   noticedepositamt   NUMERIC(16,2),
   activedacctno      VARCHAR(32),
   activedacctname    VARCHAR(60),
   activedacctopenbank VARCHAR(60),
   depositperiod      VARCHAR(1),
   acctno             VARCHAR(32),
   drawtype           VARCHAR(1),
   acctname           VARCHAR(60),
   noticedrawamt      NUMERIC(16,2),
   depositbegindate   VARCHAR(8),
   zwrq               VARCHAR(8),
   systime            VARCHAR(6),
   remark             VARCHAR(32),
   remark1            VARCHAR(64),
   remark2            VARCHAR(128),
   remark3            VARCHAR(254),
   remark4            VARCHAR(254),
   constraint PK_NOTICEBUSINESS primary key (sendseqno, txunitno)
);

comment on table yw_gjj_noticebusiness is
'住建部公积金通知存款类业务';

comment on column yw_gjj_noticebusiness.sendseqno is
'发送方流水号';

comment on column yw_gjj_noticebusiness.txunitno is
'交易机构号';

comment on column yw_gjj_noticebusiness.jylx is
'交易类型 0-活期转通知存款 1-通知存款支取 2-通知存款支取设定 3-通知存款支取通知取消';

comment on column yw_gjj_noticebusiness.currno is
'币种';

comment on column yw_gjj_noticebusiness.curriden is
'钞汇鉴别';

comment on column yw_gjj_noticebusiness.fixedacctno is
'通知存款账号';

comment on column yw_gjj_noticebusiness.fixedacctname is
'通知账户户名';

comment on column yw_gjj_noticebusiness.fixedacctopenbank is
'通知账户开户机构名';

comment on column yw_gjj_noticebusiness.noticesetserialno is
'通知设定序号';

comment on column yw_gjj_noticebusiness.bookno is
'册号 帐号为一本通时,必输';

comment on column yw_gjj_noticebusiness.booklistno is
'笔号 帐号为一本通时,必输';

comment on column yw_gjj_noticebusiness.noticeflag is
'通知标志0：正常 1：通知已过期';

comment on column yw_gjj_noticebusiness.noticedrawsetdate is
'通知设定日期';

comment on column yw_gjj_noticebusiness.noticedrawdate is
'通知支取日期';

comment on column yw_gjj_noticebusiness.drawamt is
'支取金额';

comment on column yw_gjj_noticebusiness.balance is
'存单余额';

comment on column yw_gjj_noticebusiness.noticedepositamt is
'通知存款金额';

comment on column yw_gjj_noticebusiness.activedacctno is
'活期账号';

comment on column yw_gjj_noticebusiness.activedacctname is
'活期户名';

comment on column yw_gjj_noticebusiness.activedacctopenbank is
'活期账户开户机构名';

comment on column yw_gjj_noticebusiness.depositperiod is
'存期 6-1天 7-7天 

';

comment on column yw_gjj_noticebusiness.acctno is
'存款账号';

comment on column yw_gjj_noticebusiness.drawtype is
'支取方式 0：按支取通知支取 1：直接支取';

comment on column yw_gjj_noticebusiness.acctname is
'存款账户户名';

comment on column yw_gjj_noticebusiness.noticedrawamt is
'通知支取金额';

comment on column yw_gjj_noticebusiness.depositbegindate is
'存入日期';

comment on column yw_gjj_noticebusiness.zwrq is
'前置日期';

comment on column yw_gjj_noticebusiness.systime is
'前置时间';

comment on column yw_gjj_noticebusiness.remark is
'备用';

comment on column yw_gjj_noticebusiness.remark1 is
'备用1';

comment on column yw_gjj_noticebusiness.remark2 is
'备用2';

comment on column yw_gjj_noticebusiness.remark3 is
'备用3';

comment on column yw_gjj_noticebusiness.remark4 is
'备用4';
