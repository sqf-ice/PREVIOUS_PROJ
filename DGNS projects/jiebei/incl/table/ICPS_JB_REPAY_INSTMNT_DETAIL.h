/***********************************************************************
版权所有:恒生电子股份有限公司
项目名称:综合技术平台(Turandot)项目
版    本:V1.00
操作系统:
数 据 库:INFORMIX
文 件 名:ICPS_JB_REPAY_INSTMNT_DETAIL.h
文件描述:结构定义数据库开发嵌C头文件
项 目 组:
程 序 员:[wangzh14925]
发布时间:2009-4-29 19:40:39 [Gen]
修    订:
修改时间:
************************************************************************
表    名:ICPS_JB_REPAY_INSTMNT_DETAIL (F_JB6.还款（分期）明细文件)
说    明:
************************************************************************
修改记录:
修改日期:
修改内容:
修 改 人:
修改内容:
************************************************************************/
#ifndef __ICPS_JB_REPAY_INSTMNT_DETAIL_H__
#define __ICPS_JB_REPAY_INSTMNT_DETAIL_H__
typedef struct TDB_ICPS_JB_REPAY_INSTMNT_DETAIL
{
	char   busi_date[8+1];  /*业务日期*/
		/*业务日期*/
	int   file_order;  /*文件序号*/
		/*文件序号*/
	char   contract_no[32+1];  /*借呗平台贷款合同号*/
		/*借呗平台贷款合同号*/
	char   repay_seq_no[64+1];  /*还款流水号*/
		/*还款流水号*/
	int   term_no;  /*期次号*/
		/*期次号*/
	char   repay_amt_type[8+1];  /*还款金额类型*/
		/*还款金额类型 01-按期还款 02-提前还款 03-逾期还款*/
	char   repay_date[8+1];  /*还款日期*/
		/*还款日期 YYYYMMDD*/
	double   curr_prin_bal;  /*本次还款前的应收未收本金*/
		/*本次还款前的应收未收本金*/
	double   curr_int_bal;  /*本次还款前的应收未收利息*/
		/*本次还款前的应收未收利息*/
	double   curr_ovd_prin_pnlt_bal;  /*本次还款前的应收未收逾期本金罚息*/
		/*本次还款前的应收未收逾期本金罚息*/
	double   curr_ovd_int_pnlt_bal;  /*本次还款前的应收未收逾期利息罚息*/
		/*本次还款前的应收未收逾期利息罚息*/
	double   repay_amt;  /*本次实还总金额*/
		/*本次实还总金额*/
	double   paid_prin_amt;  /*本次实还本金金额*/
		/*本次实还本金金额*/
	double   paid_int_amt;  /*本次实还利息金额*/
		/*本次实还利息金额*/
	double   paid_ovd_prin_pnlt_amt;  /*本次实还逾期本金罚息金额*/
		/*本次实还逾期本金罚息金额*/
	double   paid_ovd_int_pnlt_amt;  /*本次实还逾期利息罚息金额*/
		/*本次实还逾期利息罚息金额*/
	char   is_check_flag[1+1];  /*参与对账标识*/
		/*参与对账标识*/
	char   extend_param1[100+1];  /*扩展1*/
		/*扩展1*/
	char   extend_param2[250+1];  /*扩展2*/
		/*扩展2*/
	char   extend_param3[40+1];  /*扩展3*/
		/*扩展3*/

}ICPS_JB_REPAY_INSTMNT_DETAIL;

#define SD_DATA  ICPS_JB_REPAY_INSTMNT_DETAIL
#define SD_MEMBERS \
	APP_DEFSDMEMBER(T_STRING,  busi_date, 0),\
	APP_DEFSDMEMBER(T_LONG,  file_order, 0),\
	APP_DEFSDMEMBER(T_STRING,  contract_no, 0),\
	APP_DEFSDMEMBER(T_STRING,  repay_seq_no, 0),\
	APP_DEFSDMEMBER(T_LONG,  term_no, 0),\
	APP_DEFSDMEMBER(T_STRING,  repay_amt_type, 0),\
	APP_DEFSDMEMBER(T_STRING,  repay_date, 0),\
	APP_DEFSDMEMBER(T_DOUBLE,  curr_prin_bal, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  curr_int_bal, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  curr_ovd_prin_pnlt_bal, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  curr_ovd_int_pnlt_bal, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  repay_amt, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  paid_prin_amt, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  paid_int_amt, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  paid_ovd_prin_pnlt_amt, 2),\
	APP_DEFSDMEMBER(T_DOUBLE,  paid_ovd_int_pnlt_amt, 2),\
	APP_DEFSDMEMBER(T_STRING,  is_check_flag, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param1, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param2, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param3, 0)


	APP_DECLAREFIELDS(SD_ICPS_JB_REPAY_INSTMNT_DETAIL)
#undef SD_DATA
#undef SD_MEMBERS

#endif  /*end of __ICPS_JB_REPAY_INSTMNT_DETAIL_H__*/
