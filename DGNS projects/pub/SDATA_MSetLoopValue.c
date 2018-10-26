/***********************************************************************
��Ȩ����:�������ӹɷ����޹�˾
��Ŀ����:�ۺϼ���ƽ̨(Turandot)��Ŀ
��    ��:V1.00
����ϵͳ:
�� �� ��:DATA_DEC_DATE.c
�ļ�����:
�� Ŀ ��:
�� �� Ա:[]
����ʱ��:2015-7-31 18:33:21[Gen]
��    ��:
�޸�ʱ��:
****************************************************************************/
/****************************************************************************
�޸ļ�¼
�޸�����:
�� �� ��:
�޸�����:
****************************************************************************/
#define SOCOMPBUILDNO BUILDDATETIME
#define SOCOMPVERSION "V1.0.0"

#define MAX_SIZE 10*1024
#define MAX_COMMBUF 100*1024
#include "gaps_head.h"
/*
   ע��������Ϊ����⹫������,�����ڷ���״̬����ʾ�ڲ��汾��Ϣ
       �����������£�ÿ�θ��¾�Ӧ�޸İ汾�š�������Ӧ��Ϣ
*/
int ShowSocompVersion(char *sinfo,int isize)
{
  char sversion[]="<?xml version=\"1.0\" encoding=\"GB2312\"?>"
     "<root>"
	     "<soname>DATA_DEC_DATE.so</soname>"
	     "<sosrcname>DATA_DEC_DATE.c</sosrcname>"
	     "<sonote></sonote>"
	     "<version>"
	       "<rec ver=\"1.0.00\" modify=\"2015-7-31 18:33:21\" programer=\"[����ΰ]\" filesize=\"FILE\">��ʼ������</rec>"
	     "</version>"
     "</root>";
  printf("\n================��̬���������Ϣ================\n");
  printf("SOCOMPBUILDNO:%s.\n",SOCOMPBUILDNO);
  printf("SOCOMPVERSION:%s.\n",SOCOMPVERSION);
  printf("%s-%s\n",__PROJECTSNAME,__VERSION);
  if (strlen(sversion) >= isize)
  {
  	printf(" -->ȡ��ϸ��Ϣʧ��...\n");
  	return -2;
  }
 	strcpy(sinfo,sversion);
 	printf(" -->��鿴��ϸ��Ϣ...\n");
  return 0;
}











/************************************************************************
��̬�����������
�����������:DATA_DEC_DATE
�������:DATA_DEC_DATE
�������:
��������б���
	���      ��������   ��������           ��Դ���            ȱʡֵ                        �ɿ�      ����˵��
	1         ����      para1               ICXP����                                          0         Ԫ����=�ַ���ֵ��ʽ
������״̬:
	���״̬��          ���˵��
	-9999               ȱʡ
	0                   �ɹ�
��־��Ϣ:
	��־����            ��־�� 

��Ӧ��Ϣ:
	�ڲ���Ӧ��           �ڲ���Ӧ��Ϣ 

��Ҫ����Ԫ��:
	Ԫ��·��             ���� 

��Ҫ�������:
	����                 ���� 

ʹ������:

�� Ŀ ��:
�� �� Ա:
��������:
�޸�����:/2015-7-31 18:33:21(gen)
����ʹ��ʾ��:
************************************************************************/
IRESULT SDATA_MSetLoopValue(HXMLTREE lXmlhandle)
{
  char para1[30];
  char	sPath[MAX_SIZE];
  char	sData[MAX_COMMBUF];
  char	sSrc[MAX_SIZE];
  char	sDesc[MAX_SIZE];
  char *pTemp1=NULL;
  int	nParas=-1;
  int	i;

	
  fpub_InitSoComp(lXmlhandle);

#ifdef DEBUG
  LOG(LM_DEBUG, Fmtmsg("���[%s]ִ�п�ʼ", fpub_GetCompname(lXmlhandle)), __func__)
#endif

	nParas=fpub_GetPARAcount(lXmlhandle);
	
	/*XXX����ʧ��*/
  if ( nParas <	1 )
  {
    LOG(LM_STD, Fmtmsg("  -->����ʧ��:���������������"), __func__);
    fpub_SetMsg(lXmlhandle, MID_YW_ERROR, MSG_YW_ERROR);
    fpub_SetCompStatus(lXmlhandle, COMPSTATUS_FAIL);
    return COMPRET_FAIL;
  }	

	for(i=1;i<=nParas;i++)
	{
		COMP_GETPARSEPARAS(i, sPath, "��ֵ����ʽ");

		pTemp1 = strchr(sPath,'=');
		
		strncpy(sDesc,sPath,pTemp1-sPath);
		sDesc[pTemp1-sPath]='\0';

		strncpy(sSrc,pTemp1+1,sizeof(sPath));
		
		memset(sData,0x00,sizeof(sData));
		xml_GetElement(lXmlhandle, sSrc, sData,sizeof(sData));
	
		/*�����ſ�����XML·��������*/
		if(0==strlen(sData)&&'/'!=*sSrc)
		{
			strncpy(sData,sSrc,MAX_SIZE);	
		}
		xml_SetElement(lXmlhandle, sDesc, alltrim(sData)); 
	

		LOG(LM_STD, Fmtmsg("[%s]=[%s]", sDesc,sData), __func__);		
	}	

#ifdef DEBUG
  LOG(LM_DEBUG, Fmtmsg("���[%s]ִ�н���", fpub_GetCompname(lXmlhandle)), __func__)
#endif

  fpub_SetCompStatus(lXmlhandle, COMPSTATUS_SUCC);
  return 0;
}

