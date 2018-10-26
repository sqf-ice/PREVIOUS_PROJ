/********************************************************************
��Ȩ����:���ݺ������ӹɷ����޹�˾
��Ŀ����:�м�ҵ��ƽ̨��Ŀ(AGENT2.0)
��    ��:V3.2
����ϵͳ:AIX5.3+DB2V8.1+HSXP
�ļ�����:SCOMM_CALLGXP.sqc
�ļ�����:����ҵ��ƽ̨GXPͨѶ�������
�� Ŀ ��:����ҵ��ƽ̨��Ŀ��
�� �� Ա:wuyp@hundsun.com
��������:2009��01��09��
��    ��:
�޸�����:
*********************************************************************/
#include <stdio.h>
#include <math.h>
#include <dlfcn.h>
#include <string.h>
#include "gaps_head.h"
#include "gxp_cli.h"

#define  DEBUG 1
#define  HEAD_NO   1
#define  MAX_PKG_LEN   100*1024
#define  FREE_FPOINT(pPoint) {if(NULL!=pPoint)\
		{free(pPoint);\
			pPoint=NULL;\
		}\
	}

#define SOCOMPBUILDNO BUILDDATETIME
#define SOCOMPVERSION "4.0.03"

int ShowSocompVersion(char *sinfo,int isize)
{
  char sversion[]="<?xml version=\"1.0\" encoding=\"GB2312\"?>\
     <root>\
        <soname>SCOMM_CALLGXP.so</soname>\
        <sosrcname>SCOMM_CALLGXP.c</sosrcname>\
        <sonote>GXPͨѶ�������</sonote>\
        <version>\
          <rec ver=\"4.0.02\" modify=\"2009-6-11 10:43\" programer=\"Wangt Chendh\" filesize=\"70096\">����ΪASPKV4����GXPͨѶ���</rec>\
          <rec ver=\"4.0.03\" modify=\"2012-6-14 11:36\" programer=\"pancj\" filesize=\"6839\">��ʱ������¼��־ʱ�����ӳ�ʱʱ��</rec>\
        </version>\
     </root>";
  printf("\n================��̬���������Ϣ================\n");
  printf("SOCOMPBUILDNO:%s\n",SOCOMPBUILDNO);
  printf("SOCOMPVERSION:%s\n",SOCOMPVERSION);
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

/**********************************************************
�������: SCOMM_CALLGXP2
�������: ������GXP����ͨѶ����
���������
   ���   ��������               ��Դ���               ȱʡֵ      �Ƿ�ɿ�   ����˵��
   1         ������IP��ַ         416-�����ַ���      127.0.0.1   ��            ������IP��ַ
   2         ������PORT            416-�����ַ���      9000         ��            ������PORT
   3         ��ʱʱ��               416-�����ַ���      60            ��            ��ʱʱ��
   4         ͨѶ������ڵ���   XML�ṹ����            /commbuf   ��            ͨѶ������ڵ���
������״̬:
  ���״̬��         ���˵��
  -9999              ȱʡ
  0                  �ɹ�
  1                  ����ʧ��
  2                  ����ʧ��
����˵����
**********************************************************/
IRESULT SCOMM_CALLGXP2(HXMLTREE lXmlhandle)
{
    int  iSock = -1,iPort, iTime, iRet, len;
    char sIp[50], sPort[50], sTime[50] ;
    char sTmp[255];
    char *sBuffer=NULL;
    char sCommBufName[100],tmpbuf[10];
    int  iParas;
    int  ilen = 0;
    int  i=0,iflag=0;

    fpub_InitSoComp(lXmlhandle);

#ifdef DEBUG
    LOG(LM_STD,Fmtmsg("���[%s]ִ�п�ʼ",fpub_GetCompname(lXmlhandle)),"")
#endif

    COMP_PARACOUNTCHK(4)

    /*����1*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sIp,0,sizeof(sIp));
    COMP_GETPARSEPARAS(1, sTmp, "��������ַ")
    trim(sTmp);
    sprintf(sIp,"%s",sTmp);

    /*����2*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sPort,0,sizeof(sPort));
    COMP_GETPARSEPARAS(2, sTmp, "�������˿�")
    trim(sTmp);
    sprintf( sPort, "%s",sTmp );
    iPort = atoi(sPort);

    /*����3*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sTime,0,sizeof(sTime));
    COMP_GETPARSEPARAS(3, sTmp, "��ʱʱ��")
    trim(sTmp);
    sprintf(sTime,"%s",sTmp);
    iTime = atoi(sTime);
    if ( iTime <=1 )
            iTime = 30;

    /*����4*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sCommBufName,0,sizeof(sCommBufName));
    COMP_GETPARSEPARAS(4, sTmp, "ͨѶ����")
    trim(sTmp);
    sprintf(sCommBufName,"%s",sTmp);

#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("������GXP��̨ͨѶ��IP=[%s] PORT=[%s] TIMEOUT=[%s]", sIp, sPort, sTime),"")
#endif

    /*ȡ����������*/
    ilen =xml_GetElementLen( lXmlhandle,sCommBufName);
#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("COMMBUF -->[%d]", ilen),"")
#endif    

    ilen = ilen +10;
    sBuffer = malloc (ilen);
    if(sBuffer == NULL)
    {
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"�����ڴ�ռ�ʧ�ܣ�"));
        fpub_SetCompStatus(lXmlhandle,1);
        LOGRET(1,LM_STD,"�����ڴ�ռ�ʧ��","");
    }

/*    memset(sBuffer, 0, ilen); */
    if (( len= xml_RelGetBinElement( lXmlhandle, sCommBufName, sBuffer+8, ilen-10)) == FAIL )
    {
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelGetBinElement����!!!!!!!"));
        fpub_SetCompStatus(lXmlhandle,1);
        free(sBuffer);
        LOGRET(1,LM_STD,"ִ��xml_RelGetBinElement����!!!!!!!!!","");
        return 1;
    }
    memset(tmpbuf,0x00,sizeof(tmpbuf));
    sprintf(tmpbuf,"%08d",len);
    memcpy(sBuffer,tmpbuf,8);
    *(sBuffer+len+8)='\0';
    
    /*����������*/
#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("��Ҫ���͵ı������ݰ�len=[%d]", len),"")
#endif

    /*��Է���������*/
    itcp_sethead(HEAD_NO);
    itcp_setenv( iPort , &iSock);
    itcp_setmaxlen(ilen);
    if ( itcp_calln(sIp,3) <0 )
    {
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"��������GXP��̨ʧ��"));
        fpub_SetCompStatus(lXmlhandle,1);
        free(sBuffer);
        LOGRET(1,LM_STD,"��������GXP��̨ʧ��","");
        return 1;
    }

    iRet=itcp_send(sBuffer,len+8,iTime);
    if (iRet<0)
    {
       itcp_clear();
       fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨ʧ��"));
       fpub_SetCompStatus(lXmlhandle,1);
       free(sBuffer);
       LOGRET(1,LM_STD,"����GXP��̨ʧ��","");
       return 1;
    }
    if(sBuffer != NULL)
    {
       free(sBuffer);
       sBuffer=NULL;
    }  
    /*���նԷ�Ӧ���ͷ*/
    len=0;
    memset(tmpbuf,0,sizeof(tmpbuf));
    iRet=itcp_recv(tmpbuf, 8, iTime);
    if (iRet < 0)
    {
        itcp_clear();
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨����ʧ��"));
        fpub_SetCompStatus(lXmlhandle,2);
        LOGRET(2,LM_STD,"����GXP��̨���ĳ���ʧ��","");
        return 2;
    }
    len=atoi(tmpbuf);

    sBuffer = malloc (len+1);
    if(sBuffer == NULL)
    {
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"�����ڴ�ռ�ʧ�ܣ�"));
        fpub_SetCompStatus(lXmlhandle,1);
        LOGRET(1,LM_STD,"�����ڴ�ռ�ʧ��","");
    }
     
   /* memset(sBuffer, 0, len+1);*/
    iRet=itcp_recv(sBuffer, len, iTime);
    if (iRet < 0)
    {
        itcp_clear();
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨����ʧ��"));
        fpub_SetCompStatus(lXmlhandle,2);
        free(sBuffer);
        LOGRET(2,LM_STD,"����GXP2��̨��������ʧ��","");
        return 2;
    }
    *(sBuffer+len)='\0';
#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("���յ��ı������ݰ�len=[%d]", len),"")
#endif

    if(xml_SetBinElement(lXmlhandle,sCommBufName,sBuffer,len)<0)
    {
        itcp_clear();
        fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC,Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelSetBinElement����"));
        fpub_SetCompStatus(lXmlhandle,2);
        free(sBuffer);
        LOGRET(2,LM_STD,"ִ��xml_RelSetBinElement����","");
        return 2;
    }
    if( sBuffer != NULL)
    {
        free(sBuffer);
        sBuffer = NULL;
    }
    itcp_clear();

    fpub_SetCompStatus(lXmlhandle,COMPSTATUS_SUCC);

#ifdef DEBUG
    LOG(LM_DEBUG,Fmtmsg("���[%s]ִ�н���",fpub_GetCompname(lXmlhandle)),"")
#endif

    return COMPRET_SUCC;
}

/**********************************************************
�������: SCOMM_CALLGXP3
�������: ������GXP����ͨѶ����
���������
   ���   ��������               ��Դ���               ȱʡֵ      �Ƿ�ɿ�   ����˵��
   1         ������IP��ַ         416-�����ַ���      127.0.0.1   ��            ������IP��ַ
   2         ������PORT            416-�����ַ���      9000         ��            ������PORT
   3         ��ʱʱ��               416-�����ַ���      60            ��            ��ʱʱ��
   4         ͨѶ������ڵ���   XML�ṹ����            /commbuf   ��            ͨѶ������ڵ���
   5     ͨѶͷ            XML�ṹ����       /commbuf0 ��        ͨѶͷ�ڵ���
   6     ͨѶͷ����        416-�����ַ���      56            ��            ͨѶͷ����
������״̬:
  ���״̬��         ���˵��
  -9999              ȱʡ
  0                  �ɹ�
  1                  ����ʧ��
  2                  ����ʧ��
����˵����
**********************************************************/
IRESULT SCOMM_CALLGXP3(HXMLTREE lXmlhandle)
{
    int		iSock = -1,iPort= -1, iTime= -1, iRet= -1, len= -1,iParas= -1,iheadlen= -1;
    int 	nLen = -1;
    char	sIp[17], sPort[10], sTime[10] ,sTmp[256];
    char*	psBuffer = NULL;
    char*	psPkgOut = NULL;
    char*	psPkgIn = NULL;
    char	sPkgLen[8+1];
    char	sCommBufName[100],sHeadName[100];

    fpub_InitSoComp(lXmlhandle);

#ifdef DEBUG
    LOG(LM_STD,Fmtmsg("���[%s]ִ�п�ʼ",fpub_GetCompname(lXmlhandle)),"")
#endif
    COMP_PARACOUNTCHK(6)

    /*����1*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sIp,0,sizeof(sIp));
    COMP_GETPARSEPARAS(1, sTmp, "��������ַ")
    trim(sTmp);
    sprintf(sIp,"%s",sTmp);

    /*����2*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sPort,0,sizeof(sPort));
    COMP_GETPARSEPARAS(2, sTmp, "�������˿�")
    trim(sTmp);
    sprintf( sPort, "%s",sTmp );
    iPort = atoi(sPort);

    /*����3*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sTime,0,sizeof(sTime));
    COMP_GETPARSEPARAS(3, sTmp, "��ʱʱ��")
    trim(sTmp);
    sprintf(sTime,"%s",sTmp);
    iTime = atoi(sTime);
    if ( iTime <=1 )
       iTime = 30;

    /*����4*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sCommBufName,0,sizeof(sCommBufName));
    COMP_GETPARSEPARAS(4, sTmp, "ͨѶ����")
    trim(sTmp);
    sprintf(sCommBufName,"%s",sTmp);

    /*����5*/
    memset(sHeadName,0x00,sizeof(sHeadName));
    memset(sTmp,0,sizeof(sTmp));
    COMP_GETPARSEPARAS(5, sTmp, "ͨѶͷ����")
    trim(sTmp);
    sprintf(sHeadName,"%s",sTmp);

    /*����6*/
    memset(sTmp,0,sizeof(sTmp));
    memset(sTime,0,sizeof(sTime));
    COMP_GETPARSEPARAS(6, sTmp, "ͨѶͷ����")
    trim(sTmp);
    iheadlen = atoi(sTmp);
    if ( iheadlen <0 ) iheadlen = 0;
       
		LOG(LM_STD,Fmtmsg("iheadlen -->[%d]", iheadlen),"")

#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("������GXP��̨ͨѶ��IP=[%s] PORT=[%s] TIMEOUT=[%d]", sIp, sPort, iTime),"")
#endif

    /*ȡ����������*/
    nLen =xml_GetElementLen( lXmlhandle,sCommBufName);
#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("COMMBUF LEN -->[%d]", nLen),"")
#endif    
		
		if(NULL==(psBuffer=malloc(nLen+iheadlen)))
		{
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"�����ڴ�ռ�ʧ�ܣ�"));
				fpub_SetCompStatus(lXmlhandle,1);
				LOG(LM_STD,Fmtmsg("�����ڴ�ռ�ʧ��"),"")
				iRet = 1;
				goto err;
		}

		psPkgOut =malloc (nLen+iheadlen);
		/*ȡ����ͨѶͷ��������*/
		memset(psBuffer, 0,nLen+iheadlen);
		if (( len= xml_RelGetBinElement( lXmlhandle, sHeadName, psBuffer, nLen+iheadlen)) == FAIL )
		{
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelGetBinElement����!!!!!!!"));
				fpub_SetCompStatus(lXmlhandle,1);
				LOG(LM_STD,Fmtmsg("ִ��xml_RelGetBinElement����!!!!!!!!!"),"")
				iRet = 1;
				goto err;
		}

		memset(psPkgOut,0,nLen+iheadlen);
		memcpy(psPkgOut+8,psBuffer,iheadlen);
		
		/* ��ȡͨѶ���� */
		memset(psBuffer, 0,nLen+iheadlen);
		if (( len= xml_RelGetBinElement( lXmlhandle, sCommBufName, psBuffer, nLen+iheadlen)) == FAIL )
		{
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelGetBinElement����!!!!!!!"));
				fpub_SetCompStatus(lXmlhandle,1);
				LOG(LM_STD,Fmtmsg("ִ��xml_RelGetBinElement����!!!!!!!!!"),"")
				iRet = 1;
				goto err;
		}
		memcpy(psPkgOut+8+iheadlen,psBuffer,len);
		len=len+iheadlen;
		memset(sPkgLen,0,sizeof(sPkgLen));
		sprintf(sPkgLen,"%08d",len);
		memcpy(psPkgOut,sPkgLen,8);
		
		/*����������*/
		LOG(LM_DEBUG,Fmtmsg("���붯̬�ڴ�len=[%d]", iheadlen),"")
#ifdef  DEBUG
		LOG(LM_DEBUG,Fmtmsg("��Ҫ���͵ı������ݰ�len=[%d]", len),"")
#endif

		/*��Է���������*/
		itcp_sethead(HEAD_NO);
		itcp_setenv( iPort , &iSock);
		itcp_setmaxlen(MAX_PKG);
		
		if ( itcp_calln(sIp,3) <0 )
		{
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"��������GXP��̨ʧ��"));
				fpub_SetCompStatus(lXmlhandle,1);
				LOG(LM_STD,Fmtmsg("��������GXP��̨ʧ��"),"")
				iRet = 1;
				goto err;
		}

    iRet=itcp_send(psPkgOut,len+8,iTime);
    if (iRet<0)
    {
			itcp_clear();
			fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨ʧ��"));
			fpub_SetCompStatus(lXmlhandle,1);
			LOG(LM_STD,Fmtmsg("����GXP��̨ʧ��"),"")
			iRet = 1;
			goto err;
				
		}
      
    /*���նԷ�Ӧ���ͷ*/
		len=0;
		memset(psPkgOut,0,nLen+iheadlen);
		memset(sPkgLen,0,sizeof(sPkgLen));
		iRet=itcp_recv(sPkgLen, 8, iTime);
		if (iRet < 0)
		{
				itcp_clear();
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨����ʧ��"));
				fpub_SetCompStatus(lXmlhandle,2);
				LOG(LM_STD,Fmtmsg("����GXP��̨���ĳ���ʧ��"),"")
				iRet = 2;
				goto err;
		}

		len=atoi(sPkgLen);
		if(NULL==(psPkgIn=malloc(len+1)))
		{
				LOG(LM_STD,Fmtmsg("�붯̬�ڴ�ʧ��"),"")
				iRet = 1;
				goto err;
		}
		LOG(LM_DEBUG,Fmtmsg("���붯̬�ڴ�len=[%d]", len+1),"")
		memset(psPkgIn,0x00,len+1);
		iRet=itcp_recv(psPkgIn, len, iTime);
		if (iRet < 0)
		{
				itcp_clear();
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC, Fmtmsg(MSG_SYS_COMPEXEC,"����GXP��̨����ʧ��"));
				fpub_SetCompStatus(lXmlhandle,2);
				LOG(LM_STD,Fmtmsg("����GXP2��̨��������ʧ��"),"")
				iRet = 2;	
				goto err;
		}
    LOG(LM_DEBUG,Fmtmsg("���յ��ĳ���len=[%d]",iRet),"")
#ifdef  DEBUG
    LOG(LM_DEBUG,Fmtmsg("���յ��ı������ݰ�=[%s]", psPkgIn),"")
#endif
		
		memcpy(psBuffer,psPkgIn,iheadlen);
		*(psBuffer+iheadlen+1)='\0';
		
		len=len-iheadlen;

		if(xml_SetBinElement(lXmlhandle,sHeadName,psBuffer,iheadlen)<0)
		{
				itcp_clear();
				fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC,Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelSetBinElement����"));
				fpub_SetCompStatus(lXmlhandle,2);
				LOG(LM_STD,Fmtmsg("ִ��xml_RelSetBinElement����"),"")
				iRet = 2;
				goto err;
		}
		if(len > 0)
		{
				if(xml_SetBinElement(lXmlhandle,sCommBufName,psPkgIn+iheadlen,len)<0)
				{
					itcp_clear();
					fpub_SetMsg(lXmlhandle,MID_SYS_COMPEXEC,Fmtmsg(MSG_SYS_COMPEXEC,"ִ��xml_RelSetBinElement����"));
					fpub_SetCompStatus(lXmlhandle,2);
					LOG(LM_STD,Fmtmsg("ִ��xml_RelSetBinElement����"),"")
					iRet = 2;
					goto err;
				}
		}
		itcp_clear();

		fpub_SetCompStatus(lXmlhandle,COMPSTATUS_SUCC);

#ifdef DEBUG
    LOG(LM_DEBUG,Fmtmsg("���[%s]ִ�н���",fpub_GetCompname(lXmlhandle)),"");
#endif

suc:		
		FREE_FPOINT(psBuffer);
		FREE_FPOINT(psPkgOut);
		FREE_FPOINT(psPkgIn);
		return COMPRET_SUCC;
    
err:
		FREE_FPOINT(psBuffer);
		FREE_FPOINT(psPkgOut);
		FREE_FPOINT(psPkgIn);
		return iRet;

}
