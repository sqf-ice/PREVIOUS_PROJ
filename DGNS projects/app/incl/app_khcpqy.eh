/***********************************************************************
��Ȩ����:�������ӹɷ����޹�˾
��Ŀ����:�ۺϷ���ƽ̨(GAPS)��Ŀ
��    ��:V2.1
����ϵͳ:AIX SCO LINUX SunOS HP-UX
�� �� ��:DB2
�� �� ��:APP_KHCPQY.eh
�ļ�����:APP_KHCPQY;�ṹ�������ݿ⿪��ǶCͷ�ļ�
�� Ŀ ��:����.��Ʒ����
�� �� Ա:SC
����ʱ��:2011-5-27 11:00:48 [By GenEHFromPDMTools]
��    ��:
�޸�ʱ��:
************************************************************************
��    ��:APP_KHCPQY (�ͻ���ƷǩԼ��)
˵    ��:�ͻ���ƷǩԼ��
************************************************************************
�޸ļ�¼:
�޸�����:
�޸�����:
�޸�����:
�� �� ��:
************************************************************************/
#ifndef __APP_KHCPQY_EH__
#define __APP_KHCPQY_EH__
#ifdef DBS_ORACLE
  #include "gaps_lenmacro.eh"
#endif

EXEC SQL BEGIN DECLARE SECTION;
struct TDB_APP_KHCPQY_EH
{
  char   xybh[20+1];              /*Э����*/
              /*Э���� ���������ɣ���Ʒ��Ϣ�������ã�*/
  char   khbh[16+1];              /*�ͻ����*/
              /*�ͻ����*/
  char   cpdm[16+1];              /*��Ʒ����*/
              /*��Ʒ����*/
  char   ywbh[16+1];              /*ҵ����*/
              /*ҵ���� */
  char   zhlx[2+1];              /*�˻�����*/
              /*�˻����� */
  char   khjg[16+1];              /*��������*/
              /*ǩԼ�˻���������*/
  char   qyzh[32+1];              /*ǩԼ�˻�*/
              /*ǩԼ�˻�*/
  char   zhhm[60+1];              /*�˻�����*/
              /*�˻�����*/
  char   dlzjlx[3+1];              /*����֤������*/
              /*������֤������ �������ֵ� KEY=K_ZJLX*/
  char   dlzjhm[32+1];              /*����֤������*/
              /*������֤������*/
  char   zjlx[3+1];              /*֤������*/
              /*֤������ �������ֵ� KEY=K_ZJLX*/
  char   zjhm[32+1];              /*֤������*/
              /*֤������*/
  char   qylx[1+1];              /*ǩԼ����*/
              /*ǩԼ���� 0���� 1���� 9����*/
  char   khjl[20+1];              /*�ͻ�����*/
              /*�ͻ�����*/
  char   hyksrq[8+1];              /*��Լ��ʼ����*/
              /*��Լ��ʼ����*/
  char   hyjsrq[8+1];              /*��Լ��������*/
              /*��Լ��������*/
  char   ktqd[60+1];              /*��ͨ����*/
              /*��ͨ����  ������ʶͨ�� | ��ָ��� ALL��ʾȫ��ͨ*/
  char   bljg[16+1];              /*��������*/
              /*��������*/
  char   blgy[16+1];              /*������Ա*/
              /*������Ա*/
  char   blrq[8+1];              /*��������*/
              /*��������*/
  char   yhh1[32+1];              /*�û���1*/
              /*�û���1*/
  char   yhh2[32+1];              /*�û���2*/
              /*�û���2*/
  char   yhh3[32+1];              /*�û���3*/
              /*�û���3*/
  char   yhmc[80+1];              /*�û�����*/
              /*�û�����(�������û�����)*/
  char   yhlx[16+1];              /*�û�����*/
              /*�û�����(�������û�����)*/
  char   yhyb[6+1];              /*�û��ʱ�*/
              /*�û��ʱ�(�������û��ʱ�)*/
  char   yhdh[12+1];              /*�û��绰*/
              /*�û��绰(�������û��绰)*/
  char   yhdz[120+1];              /*�û���ַ*/
              /*�û���ַ(�������û���ַ)*/
  char   jybz[3+1];              /*���ױ���*/
              /*���ױ���*/
  double  kkzdxe;              /*�ۿ�����޶�*/
              /*�ۿ�����޶�*/
  char   kkzq[1+1];              /*�ۿ�����*/
              /*�ۿ�����  --0-û���ڣ�1-�գ�2-�ܣ�3-�£�4-��*/
  char   ydkkrq[8+1];              /*Լ���ۿ�����*/
              /*Լ���ۿ�����*/
  char   kkzt[1+1];              /*�ۿ�״̬*/
              /*���һ�οۿ�״̬ 0 �C �ɹ�  1 �C ���ֳɹ�  2-ʧ�� 
                */
  char   kkrq[8+1];              /*�ۿ�����*/
              /*���һ�οۿ�����*/
  char   dxtzbz[1+1];              /*����֪ͨ��־*/
              /*����֪ͨ��־ 0֪ͨ 1��֪ͨ*/
  double  zhzded;              /*�˻���Ͷ��*/
              /*�˻���Ͷ��*/
  char   extfld1[40+1];              /*��չ����1*/
              /*��չ����1*/
  char   extfld2[40+1];              /*��չ����2*/
              /*��չ����2*/
  char   extfld3[40+1];              /*��չ����3*/
              /*��չ����3*/
  char   extfld4[40+1];              /*��չ����4*/
              /*��չ����4*/
  char   extfld5[40+1];              /*��չ����5*/
              /*��չ����5*/
  char   extfld6[254+1];              /*��չ����6*/
              /*��չ����6*/
  char   qyzt[1+1];              /*ǩԼ״̬*/
              /*ǩԼ״̬ 0���� 1����*/
}sdb_app_khcpqy;
EXEC SQL END DECLARE SECTION;
#endif  /*end of __APP_KHCPQY_EH__*/