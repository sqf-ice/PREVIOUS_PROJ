/***********************************************************************
��Ȩ����:�������ӹɷ����޹�˾
��Ŀ����:�ۺϼ���ƽ̨(Turandot)��Ŀ
��    ��:V1.00
����ϵͳ:
�� �� ��:INFORMIX
�� �� ��:APP_CPJYJGED.h
�ļ�����:�ṹ�������ݿ⿪��ǶCͷ�ļ�
�� Ŀ ��:
�� �� Ա:[�]
����ʱ��:2009-4-29 19:40:39 [Gen]
��    ��:
�޸�ʱ��:
************************************************************************
��    ��:APP_CPJYJGED (��Ʒ���׻�����ȿ���)
˵    ��:
************************************************************************
�޸ļ�¼:
�޸�����:
�޸�����:
�� �� ��:
�޸�����:
************************************************************************/
#ifndef __APP_CPJYJGED_H__
#define __APP_CPJYJGED_H__
typedef struct TDB_APP_CPJYJGED
{
  char   cpdm[16+1];              /*��Ʒ����*/
              /*��Ʒ����*/
  char   jydm[8+1];              /*���״���*/
              /*���״���*/
  char   jybz[3+1];              /*���ױ���*/
              /**/
  char   dbedkz[1+1];              /*���ʶ�ȿ��Ʊ�־*/
              /*0 ������ 1���Ƽ��� 9�������Ի���*/
  char   rljedkz[1+1];              /*���ۼƿ��Ʊ�־*/
              /*0 ������ 1���Ƽ��� 9�������Ի���*/
  char   yljedkz[1+1];              /*���ۼƿ��Ʊ�־*/
              /*0 ������ 1���Ƽ��� 9�������Ի���*/
  char   jgjb[16+1];              /*��������*/
              /**/
  double  dbed;              /*������߶��*/
              /**/
  double  yljed;              /*���ۼ���߶��*/
              /**/
  double  rljed;              /*���ۼ���߶��*/
              /**/
  char   cxcl[1+1];              /*���޴���*/
              /*0 ���׾ܾ� 1 �����Ȩ��Ա���� 2 �����Ȩ��Ա��λ 3 �����Ȩ��Ա����͸�λ*/
  char   sqgygw[8+1];              /*��Ȩ��Ա��λ*/
              /**/
  char   sqgyjb[2+1];              /*��Ȩ��Ա����*/
              /**/
  char   whjg[16+1];              /*ά������*/
              /**/
  char   whgy[16+1];              /*ά����Ա*/
              /**/
  char   whsj[14+1];              /*ά��ʱ��*/
              /**/
  char   extfld1[40+1];              /*��չ����1*/
              /*��չ����1*/
  char   extfld2[40+1];              /*��չ����2*/
              /*��չ����1*/
}APP_CPJYJGED;

#define SD_DATA  APP_CPJYJGED
#define SD_MEMBERS \
	DEFSDMEMBER(T_STRING,  cpdm, 0),\
	DEFSDMEMBER(T_STRING,  jydm, 0),\
	DEFSDMEMBER(T_STRING,  jybz, 0),\
	DEFSDMEMBER(T_STRING,  dbedkz, 0),\
	DEFSDMEMBER(T_STRING,  rljedkz, 0),\
	DEFSDMEMBER(T_STRING,  yljedkz, 0),\
	DEFSDMEMBER(T_STRING,  jgjb, 0),\
	DEFSDMEMBER(T_DOUBLE,  dbed, 2),\
	DEFSDMEMBER(T_DOUBLE,  yljed, 2),\
	DEFSDMEMBER(T_DOUBLE,  rljed, 2),\
	DEFSDMEMBER(T_STRING,  cxcl, 0),\
	DEFSDMEMBER(T_STRING,  sqgygw, 0),\
	DEFSDMEMBER(T_STRING,  sqgyjb, 0),\
	DEFSDMEMBER(T_STRING,  whjg, 0),\
	DEFSDMEMBER(T_STRING,  whgy, 0),\
	DEFSDMEMBER(T_STRING,  whsj, 0),\
	DEFSDMEMBER(T_STRING,  extfld1, 0),\
	DEFSDMEMBER(T_STRING,  extfld2, 0)


	DECLAREFIELDS(SD_APP_CPJYJGED)
#undef SD_DATA
#undef SD_MEMBERS

#endif  /*end of __APP_CPJYJGED_H__*/