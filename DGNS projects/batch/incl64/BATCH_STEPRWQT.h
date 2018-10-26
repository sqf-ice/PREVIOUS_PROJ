/***********************************************************************
版权所有:恒生电子股份有限公司
项目名称:综合技术平台(Turandot)项目
版    本:V1.00
操作系统:
数 据 库:INFORMIX
文 件 名:BATCH_STEPRWQT.h
文件描述:结构定义数据库开发嵌C头文件
项 目 组:
程 序 员:[屠秋龙]
发布时间:2009-4-29 19:40:39 [Gen]
修    订:
修改时间:
************************************************************************
表    名:BATCH_STEPRWQT (批量任务嵌套步点)
说    明:
************************************************************************
修改记录:
修改日期:
修改内容:
修 改 人:
修改内容:
************************************************************************/
#ifndef __BATCH_STEPRWQT_H__
#define __BATCH_STEPRWQT_H__
typedef struct TDB_BATCH_STEPRWQT
{
    char   cllcm[32+1];        /*处理流程名*/
    char   bqtcpdm[16+1];      /*被嵌套产品代码*/
    char   bqtywbh[16+1];      /*被嵌套业务编号*/
    char   qtwjys[32+1];       /*嵌套文件映射*/
    char   qtwjdc[128+1];      /*嵌套文件导出*/
    char   ywbm[32+1];         /*业务表名*/
    char   tjwjbs[32+1];       /*提交文件标识*/
    char   thwjbs[32+1];       /*提回文件标识*/
    long    jlsxz;              /*主机提交笔数*/
    char   zhbz[1+1];          /*响应码转换标志*/
    char   zhbs[32+1];         /*转换标识*/
    char   filefmt[2+1];       /*文件类型*/
}BATCH_STEPRWQT;

#endif  /*end of __BATCH_STEPRWQT_H__*/
