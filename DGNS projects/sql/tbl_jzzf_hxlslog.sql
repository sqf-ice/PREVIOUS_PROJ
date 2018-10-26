drop INDEX TBL_JZZF_HXLSLOG_I_KEY1;
DROP TABLE TBL_JZZF_HXLSLOG;

CREATE TABLE TBL_JZZF_HXLSLOG
(
FLOWID VARCHAR(32) NOT NULL,
OPERTYPE VARCHAR(1)NOT NULL,
ISSUM VARCHAR(1) NOT NULL,
RZRQ VARCHAR(9)NOT NULL,
RZGYLS VARCHAR(12)NOT NULL,
SEQNO VARCHAR(9)NOT NULL,
AMT DECIMAL(16,2)NOT NULL,
TRANDATE VARCHAR(8)NOT NULL,
TRANTIME VARCHAR(6)NOT NULL
);


CREATE INDEX TBL_JZZF_HXLSLOG_I_KEY1 ON TBL_JZZF_HXLSLOG(RZRQ,RZGYLS);
COMMENT ON TABLE  TBL_JZZF_HXLSLOG  IS '������ˮ���/�ϲ��ǼǱ�' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.FLOWID		IS	'ҵ����ˮ' ; 
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.OPERTYPE   	IS	'��������(0��֡�1�ϲ�)';
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.ISSUM  	IS	'���ܱ��(0��1��)';
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.RZRQ  	IS	'��������' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.RZGYLS 	IS	'���˹�Ա��ˮ' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.SEQNO   	IS	'���' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.AMT   	IS	'���' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.TRANDATE   	IS	'��������' ;
COMMENT ON COLUMN TBL_JZZF_HXLSLOG.TRANTIME   	IS	'����ʱ��' ;