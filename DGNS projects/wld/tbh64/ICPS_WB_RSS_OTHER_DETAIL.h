/***********************************************************************
��Ȩ����:�������ӹɷ����޹�˾
��Ŀ����:�ۺϼ���ƽ̨(Turandot)��Ŀ
��    ��:V1.00
����ϵͳ:
�� �� ��:INFORMIX
�� �� ��:ICPS_WB_RSS_OTHER_DETAIL.h
�ļ�����:�ṹ�������ݿ⿪��ǶCͷ�ļ�
�� Ŀ ��:
�� �� Ա:[wangzh14925]
����ʱ��:2009-4-29 19:40:39 [Gen]
��    ��:
�޸�ʱ��:
************************************************************************
��    ��:ICPS_WB_RSS_OTHER_DETAIL (F_WB22.���������������ʽ���ϸ)
˵    ��:
************************************************************************
�޸ļ�¼:
�޸�����:
�޸�����:
�� �� ��:
�޸�����:
************************************************************************/
#ifndef __ICPS_WB_RSS_OTHER_DETAIL_H__
#define __ICPS_WB_RSS_OTHER_DETAIL_H__
typedef struct TDB_ICPS_WB_RSS_OTHER_DETAIL
{
	char   busi_date[8+1];  /*ҵ������*/
		/*ҵ������*/
	int   file_order;  /*�ļ����*/
		/*�ļ����*/
	char   data_dt[10+1];  /*��������*/
		/*��������*/
	char   acct_no[40+1];  /*�������˺�*/
		/*�������˺�*/
	char   currency[3+1];  /*����*/
		/*����:CNY-����� */
	char   bank_group_code[5+1];  /*���ű��*/
		/*���ű��*/
	char   data_type[6+1];  /*��������*/
		/*�������ͣ� 1������������� 2��������������" */
	long   ser_no;  /*��ϸ���*/
		/*��ϸ���*/
	double   amount;  /*������*/
		/*������*/
	char   memo[20+1];  /*��ע*/
		/*��ע*/
	char   ds[10+1];  /*���ڷ���*/
		/*���ڷ���*/
	char   is_check_flag[1+1];  /*������˱�ʶ*/
		/*������˱�ʶ*/
	char   extend_param1[100+1];  /*��չ1*/
		/*��չ1*/
	char   extend_param2[250+1];  /*��չ2*/
		/*��չ2*/
	char   extend_param3[40+1];  /*��չ3*/
		/*��չ3*/

}ICPS_WB_RSS_OTHER_DETAIL;

#define SD_DATA  ICPS_WB_RSS_OTHER_DETAIL
#define SD_MEMBERS \ 
	APP_DEFSDMEMBER(T_STRING,  busi_date, 0),\
	APP_DEFSDMEMBER(T_LONG,  file_order, 0),\
	APP_DEFSDMEMBER(T_STRING,  data_dt, 0),\
	APP_DEFSDMEMBER(T_STRING,  acct_no, 0),\
	APP_DEFSDMEMBER(T_STRING,  currency, 0),\
	APP_DEFSDMEMBER(T_STRING,  bank_group_code, 0),\
	APP_DEFSDMEMBER(T_STRING,  data_type, 0),\
	APP_DEFSDMEMBER(T_LONG,  ser_no, 0),\
	APP_DEFSDMEMBER(T_DOUBLE,  amount, 4),\
	APP_DEFSDMEMBER(T_STRING,  memo, 0),\
	APP_DEFSDMEMBER(T_STRING,  ds, 0),\
	APP_DEFSDMEMBER(T_STRING,  is_check_flag, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param1, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param2, 0),\
	APP_DEFSDMEMBER(T_STRING,  extend_param3, 0)


	APP_DECLAREFIELDS(SD_ICPS_WB_RSS_OTHER_DETAIL)
#undef SD_DATA
#undef SD_MEMBERS

#endif  /*end of __ICPS_WB_RSS_OTHER_DETAIL_H__*/