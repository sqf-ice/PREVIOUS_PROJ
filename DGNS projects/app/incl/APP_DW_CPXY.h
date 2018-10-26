#ifndef __APP_DW_CPXY_H__
#define __APP_DW_CPXY_H__
typedef struct TDB_APP_DW_CPXY
{
  char   dwbh[16+1];              /*��λ���*/
              /*��λ���*/
  char   cpdm[16+1];              /*��Ʒ����*/
              /*��Ʒ����*/
  char   ywbh[16+1];              /*ҵ����*/
              /*ҵ���� ���ո�ҵ�������ҵ���ţ�����ͨ������*/
  char   ywmc[40+1];              /*ҵ������*/
              /**/
  char   xybh[20+1];              /*Э����*/
              /*��ͬ���*/
  char   yhdm[16+1];              /*���д���*/
              /*���д���*/
  char   ljbs[8+1];              /*������ʶ*/
              /**/
  char   zhlx[2+1];              /*�˻�����*/
              /*�˻����� �������ֵ� KEY=K_ZHLX*/
  char   sfbz[1+1];              /*�ո���ʶ*/
              /*1 ��  �  ��� */
  char   dszh[32+1];              /*�����˻�*/
              /*�����˻�*/
  char   dszhmc[80+1];              /*�����˻�����*/
              /*�����˻�����*/
  char   dfzh[32+1];              /*�����˻�*/
              /*�����˻�*/
  char   dfzhmc[80+1];              /*�����˻�����*/
              /*�����˻�����*/
  char   khjl[20+1];              /*�ͻ�����*/
              /*�ͻ�����*/
  char   lxr[20+1];              /*ҵ����ϵ��*/
              /**/
  char   email[32+1];              /*ҵ����ϵEMAIL*/
              /**/
  char   lxdh[16+1];              /*ҵ����ϵ�绰*/
              /**/
  char   hyksrq[8+1];              /*��Լ��ʼ����*/
              /*��Լ��ʼ����*/
  char   hyjsrq[8+1];              /*��Լ��������*/
              /*��Լ��������*/
  char   bljg[16+1];              /*��������*/
              /*��������*/
  char   blgy[16+1];              /*������Ա*/
              /*������Ա*/
  char   blrq[16+1];              /*��������*/
              /*��������*/
  double  zhzded;              /*�˻���Ͷ��*/
              /*�˻���Ͷ��*/
  char   whjg[16+1];              /*ά������*/
              /**/
  char   whgy[16+1];              /*ά����Ա*/
              /**/
  char   whsj[14+1];              /*ά��ʱ��*/
              /**/
  char   extfld1[40+1];              /*��չ����1*/
              /*��չ����1*/
  char   extfld2[40+1];              /*��չ����2*/
              /*��չ����2*/
  char   qyzt[1+1];              /*ǩԼ״̬*/
              /*ǩԼ״̬ 0���� 1����*/
  char   fwrx[32+1];        /*��������*/
              /*��������*/
  char   jfbhxsmc[100+1];        /*�ɷѱ����ʾ����*/
              /*�ɷѱ����ʾ����*/
  char   khh[32+1];        /*�ͻ���*/
              /*�ͻ���*/
  char   nbhzhmc[100+1];        /*�ڲ����˺�����*/
              /*�ڲ����˺�����*/
  char   nbhzh[32+1];        /*�ڲ����˺�*/
              /*�ڲ����˺�*/
  char   sxfnbhzhmc[100+1];        /*�������ڲ����˺�����*/
              /*�������ڲ����˺�����*/
  char   sxfnbhzh[32+1];        /*�������ڲ����˺�*/
              /*�������ڲ����˺�*/
  char   scfs[2+1];        /*�ϴ���ʽ*/
              /*01-�ɷ�ƽ̨ 02-����ϵͳ 03-���´���*/
  char   shzt[1+1];        /*���״̬*/
              /*9-δ��� 1-���ͨ�� 2-��˾ܾ�*/
  char   shsj[14+1];        /*���ʱ��*/
              /*���ʱ��*/
  char   shgy[16+1];        /*��˹�Ա*/
              /*��˹�Ա*/
  char   shjg[32+1];        /*��˻���*/
  char   dwbh1[16+1];/*��λ���*/
  /**/
  char   dwmc[80+1];/*��λ����*/
  /*��λ����*/
  char   dwzjlx[2+1];/*��λ֤������*/
  /*��λ֤������ �������ֵ� KEY=K_DWZJLX*/
  char   dwzjhm[32+1];/*��λ֤������*/
              /*��λ֤������*/
  char   dwlxr[16+1];              /*��λ��ϵ������*/
              /*��λ��ϵ������*/
  char   dwlxrdh[16+1];              /*��λ��ϵ�˵绰*/
              /*��λ��ϵ�˵绰*/
  char   dwdz[60+1];              /*��λ��ϵ��ַ*/
              /*��λ��ϵ��ַ*/
  char   dwemail[32+1];              /*��λ��ϵemail*/
              /*��λ��ϵemail*/
  char   whjg1[16+1];              /*ά������*/
              /**/
  char   whgy1[16+1];              /*ά����Ա*/
              /**/
  char   whsj1[14+1];              /*ά��ʱ��*/
              /**/
  char   extfld11[40+1];              /*��չ����1*/
              /*��չ����1*/
  char   extfld12[40+1];              /*��չ����2*/
              /*��չ����2*/
  char   zt1[1+1];              /*״̬*/

}APP_DW_CPXY;

#define SD_DATA  APP_DW_CPXY
#define SD_MEMBERS \
	DEFSDMEMBER(T_STRING,  dwbh, 0),\
	DEFSDMEMBER(T_STRING,  cpdm, 0),\
	DEFSDMEMBER(T_STRING,  ywbh, 0),\
	DEFSDMEMBER(T_STRING,  ywmc, 0),\
	DEFSDMEMBER(T_STRING,  xybh, 0),\
	DEFSDMEMBER(T_STRING,  yhdm, 0),\
	DEFSDMEMBER(T_STRING,  ljbs, 0),\
	DEFSDMEMBER(T_STRING,  zhlx, 0),\
	DEFSDMEMBER(T_STRING,  sfbz, 0),\
	DEFSDMEMBER(T_STRING,  dszh, 0),\
	DEFSDMEMBER(T_STRING,  dszhmc, 0),\
	DEFSDMEMBER(T_STRING,  dfzh, 0),\
	DEFSDMEMBER(T_STRING,  dfzhmc, 0),\
	DEFSDMEMBER(T_STRING,  khjl, 0),\
	DEFSDMEMBER(T_STRING,  lxr, 0),\
	DEFSDMEMBER(T_STRING,  email, 0),\
	DEFSDMEMBER(T_STRING,  lxdh, 0),\
	DEFSDMEMBER(T_STRING,  hyksrq, 0),\
	DEFSDMEMBER(T_STRING,  hyjsrq, 0),\
	DEFSDMEMBER(T_STRING,  bljg, 0),\
	DEFSDMEMBER(T_STRING,  blgy, 0),\
	DEFSDMEMBER(T_STRING,  blrq, 0),\
	DEFSDMEMBER(T_DOUBLE,  zhzded, 2),\
	DEFSDMEMBER(T_STRING,  whjg, 0),\
	DEFSDMEMBER(T_STRING,  whgy, 0),\
	DEFSDMEMBER(T_STRING,  whsj, 0),\
	DEFSDMEMBER(T_STRING,  extfld1, 0),\
	DEFSDMEMBER(T_STRING,  extfld2, 0),\
	DEFSDMEMBER(T_STRING,  qyzt, 0),\
	DEFSDMEMBER(T_STRING,  fwrx, 0),\
	DEFSDMEMBER(T_STRING,  jfbhxsmc, 0),\
	DEFSDMEMBER(T_STRING,  khh, 0),\
	DEFSDMEMBER(T_STRING,  nbhzhmc, 0),\
	DEFSDMEMBER(T_STRING,  nbhzh, 0),\
	DEFSDMEMBER(T_STRING,  sxfnbhzhmc, 0),\
	DEFSDMEMBER(T_STRING,  sxfnbhzh, 0),\
	DEFSDMEMBER(T_STRING,  scfs, 0),\
	DEFSDMEMBER(T_STRING,  shzt, 0),\
	DEFSDMEMBER(T_STRING,  shsj, 0),\
	DEFSDMEMBER(T_STRING,  shgy, 0),\
	DEFSDMEMBER(T_STRING,  shjg, 0),\
        DEFSDMEMBER(T_STRING,  dwbh1, 0),\
        DEFSDMEMBER(T_STRING,  dwmc, 0),\
        DEFSDMEMBER(T_STRING,  dwzjlx, 0),\
        DEFSDMEMBER(T_STRING,  dwzjhm, 0),\
        DEFSDMEMBER(T_STRING,  dwlxr, 0),\
        DEFSDMEMBER(T_STRING,  dwlxrdh, 0),\
        DEFSDMEMBER(T_STRING,  dwdz, 0),\
        DEFSDMEMBER(T_STRING,  dwemail, 0),\
        DEFSDMEMBER(T_STRING,  whjg1, 0),\
        DEFSDMEMBER(T_STRING,  whgy1, 0),\
        DEFSDMEMBER(T_STRING,  whsj1, 0),\
        DEFSDMEMBER(T_STRING,  extfld11, 0),\
        DEFSDMEMBER(T_STRING,  extfld12, 0),\
        DEFSDMEMBER(T_STRING,  zt1, 0)


	DECLAREFIELDS(SD_APP_DW_CPXY)
#undef SD_DATA
#undef SD_MEMBERS

#endif  /*end of __APP_DW_CPXY_H__*/