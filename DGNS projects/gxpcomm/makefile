##########################################################################
# ��Ȩ���У����ݺ������ӹɷ����޹�˾
# ��Ŀ���ƣ��ۺ�Ӧ��ǰ�ã�GAPS����Ŀ
# ��    ����V1.0
# ����ϵͳ��AIX4.3
# �ļ����������������̬���ӿ�ͨ��MAKEFILE
# �� �� ��:Informix 7(64) 
##########################################################################
# �޸ļ�¼
# �޸�����:
# �޸�����:
# �޸���:
##########################################################################
include ${HOME}/src/etc/makefile.${GAPSPLATFORM}
include ${HOME}/src/etc/${DB}/makefile.${DB}
##########################################################################
LO_OBJS=SCOMM_CALLGXP2.o
DATE=`date +"%Y%m%d%H%M"`
BUILDDATETIME=$(DATE)
RELEASE_VERSION=4.0.0
LIBDIR=${HOME}/lib -L${HOME}/libevent/lib -L${HOME}/sqlite/lib ${DB_LIBS}
SHLIBDIR=${HOME}/shlib
BINDIR=${HOME}/bin
LIBINCL=${HOME}/libincl -I${HOME}/libevent/include -I${HOME}/sqlite/include
INCLUDE=${HOME}/incl
#APPEH_INCL�÷�(��oracle�û��£�����ec�ļ�����ͷ�ļ�����·������ʽΪinclude=${HOME}/app/***/include)
APPEH_INCL=
DEBUG=${MOS} -DBUILDDATETIME=\"$(BUILDDATETIME)\"
#CC=cc -m32
VPATH=.libs
all : SCOMM_CALLGXP2.so
.SUFFIXES:  .c .lo

.c.lo:
	libtool --mode=compile --tag=CC ${CC} -g -O ${DEBUG} ${DBS} ${MOS} ${DB_CCFLAGS} ${CCFLAG} -I$(LIBINCL) -I$(INCLUDE) -c $<

#������õĶ�̬���.libsĿ¼copy��shlibĿ¼��������ԭ���ļ�
#install-shlib.sh ***.la   ${SHLIBDIR}��������Ӳ���upd ��ִ��SOAtool upd ***.so,���ӾͲ���ˢ��ֻ����
install:
	install-shlib.sh SCOMM_CALLGXP2.la   ${SHLIBDIR}
	
uninstall: 
	libtool --mode=uninstall /bin/rm ${SHLIBDIR}/SCOMM_CALLGXP2.so ${SHLIBDIR}/SCOMM_CALLGXP2-*.so 

SCOMM_CALLGXP2.so: SCOMM_CALLGXP2.lo 
	libtool --mode=link --tag=CC ${CC} ${LDFLAG}  -g -O -o $(@:.so=.la) $? -rpath ${SHLIBDIR}  -release ${RELEASE_VERSION} -export-dynamic -no-undefined -module -L${LIBDIR} -lsha -lsxml -lhsbase -lgapssfs -lgapssql -ldci
	install-shlib.sh SCOMM_CALLGXP2.la   ${SHLIBDIR} upd

clean:
	@rm -f lib*.a *~ *core *.lo *.o *.la 
	@rm -rf .libs
	@rm -f *.lis  *.bnd

##########################################################################