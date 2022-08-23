paralelo:root:Everis2020!
#paralelo:oracle:0racle1
#paralelo:admin:sunm1cr0
date
#hostname
#cat /proc/meminfo |grep MemTotal:
#cat /proc/cpuinfo |grep processor | wc -l
#uname -a
#rpm -qa | egrep '^binutils|^compat-libcap1|^compat-libstdc++|^gcc|^gcc-c++|^glibc-|^glibc-devel|^libaio|^libaio-devel|^libgcc|^libstdc++|^libstdc++-devel|^libXext|^libXtst|^openmotif|^openmotif22|^sysstat'
#sctl -w net.core.rmem_max=2096304
#sysctl -w net.core.wmem_max=2096304
#cat /proc/sys/kernel/shmmax
#/sbin/sysctl �p
#cat /etc/security/limits.conf|grep oracle
#cat .bash_profile
#env |grep es_ES.UTF-8
#du -sh /opt/telcol/cluster-disco/
#id oracle
#ifconfig |grep inet|grep 10.203.109
#df -h|grep /u01 | sort -n
#chown -R  oracle:oracle /u01
#cat /etc/hosts
#ls -al /u01/P_SOA
#ls -al /u01/domains
#cat /etc/sysctl.conf
#echo "10.203.106.222 soahostpreosb01"  >> /etc/hosts

#rpm -ivh /opt/telcol/cluster-disco/SOA_12.1/zip/jdk-8u101-linux-x64.rpm
#/usr/sbin/alternatives --set java /usr/java/jdk1.8.0_101/jre/bin/java
#/usr/sbin/alternatives --set java /u01/P_SOA/oracle/product/java/jdk1.8.0_101/jre/bin/java
#echo 'oracle:0racle1' | chpasswd

# ------ cambiar usuario oracle -------

#sed -i '/JAVA/d' .bash_profile
	
#cat .bash_profile
#echo "export LANG=es_ES.UTF-8" >> .bash_profile
#echo "export LC_ALL=es_ES.UTF-8" >> .bash_profile
#echo "export LC_CTYPE=es_ES.UTF-8" >> .bash_profile
#echo "export LC_NUMERIC=es_ES.UTF-8" >> .bash_profile
#echo "export LC_TIME=es_ES.UTF-8" >> .bash_profile
#echo "export LC_COLLATE=es_ES.UTF-8" >> .bash_profile
#echo "export LC_MONETARY=es_ES.UTF-8" >> .bash_profile
#echo "export LC_MESSAGES=es_ES.UTF-8" >> .bash_profile
#echo "export LC_PAPER=es_ES.UTF-8" >> .bash_profile
#echo "export LC_NAME=es_ES.UTF-8" >> .bash_profile
#echo "export LC_ADDRESS=es_ES.UTF-8" >> .bash_profile
#echo "export LC_TELEPHONE=es_ES.UTF-8" >> .bash_profile
#echo "export LC_MEASUREMENT=es_ES.UTF-8" >> .bash_profile
#echo "export LC_IDENTIFICATION=es_ES.UTF-8" >> .bash_profile
#
#echo "export ORACLE_BASE=/u01/P_SOA/oracle" >> .bash_profile
#echo "export ORACLE_HOME=\$ORACLE_BASE/product/fmw/12.2.1.1" >> .bash_profile
#echo "export MW_HOME=\$ORACLE_HOME" >> .bash_profile
#echo "export WLS_HOME=\$MW_HOME/wlserver" >> .bash_profile
#echo "export DOMAIN_BASE=/u01/domains" >> .bash_profile
#echo "export APP_HOME=/u01/apps" >> .bash_profile
#echo "export JAVA_HOME=\$ORACLE_BASE/product/java/jdk1.8" >> .bash_profile
#echo "export ARQ=i686" >> .bash_profile
#echo "export PRODUCTION_MODE=true" >> .bash_profile
#echo "export JAVA_VENDOR=Oracle" >> .bash_profile
#echo "export JAVA=\${JAVA_HOME}/bin/java" >> .bash_profile
#echo "export WL_HOME=\$WLS_HOME" >> .bash_profile
#echo "export PATH=\$HOME/bin:\${JAVA_HOME}/bin:\$ORACLE_HOME/OPatch:\$PATH" >> .bash_profile
#echo "export LOGS=/u01/logs" >> .bash_profile

#cat .bash_profile

# -------------- Carepeta para binarios

#ls -al /u01/P_SOA/oracle/product/fmw

#mkdir /u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1
                                           
#mkdir /u01/P_SOA/oracle/product/fmw/sbosb
#mkdir /u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1
#mkdir /u01/P_SOA/oracle/product/fmw/sbsoa /12.2.1.1

#mkdir /u01/P_SOA/oracle/product/fmw/sbsoa
#mkdir /u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1



#ls -al /u01/P_SOA/oracle/product/fmw/

# -------------- Instaladores de Binarios

# INFRA
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_fs1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_fs2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_lg1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_lg2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_mn1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_mn2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_sb.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_ss.txt


# FW OSB
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_of1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_of2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_ol1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_ol2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_sb.txt

# FW SOA
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_mn1.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_mn2.txt
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_sb.txt

#sed -i 's/fs1osb/fs1osb\/12.2.1.1/g' plantilla_infra_fs1.txt
#sed -i 's/fs2osb/fs2osb\/12.2.1.1/g' plantilla_infra_fs2.txt
#sed -i 's/lg1osb/lg1osb\/12.2.1.1/g' plantilla_infra_lg1.txt
#sed -i 's/lg2osb/lg2osb\/12.2.1.1/g' plantilla_infra_lg2.txt
#sed -i 's/sbosb/sbosb\/12.2.1.1/g' plantilla_infra_sb.txt
#sed -i 's/sbsoa/sbsoa\/12.2.1.1/g' plantilla_infra_ss.txt
#sed -i 's/mn1soa/mn1soa\/12.2.1.1/g' plantilla_infra_mn1.txt
#sed -i 's/mn2soa/mn2soa\/12.2.1.1/g' plantilla_infra_mn2.txt
#
#sed -i 's/fs1osb/fs1osb\/12.2.1.1/g' plantilla_osb_of1.txt
#sed -i 's/fs2osb/fs2osb\/12.2.1.1/g' plantilla_osb_of2.txt
#sed -i 's/lg1osb/lg1osb\/12.2.1.1/g' plantilla_osb_ol1.txt
#sed -i 's/lg2osb/lg2osb\/12.2.1.1/g' plantilla_osb_ol2.txt
#sed -i 's/sbosb/sbosb\/12.2.1.1/g' plantilla_osb_sb.txt
#sed -i 's/mn1soa/mn1soa\/12.2.1.1/g' plantilla_soa_mn1.txt
#sed -i 's/mn2soa/mn2soa\/12.2.1.1/g' plantilla_soa_mn2.txt
#sed -i 's/sbsoa/sbsoa\/12.2.1.1/g' plantilla_soa_sb.txt
#sed -i 's/12.2.1.1\///g' *.txt

# --------------------------------- Comandos varios

#killall java
#ps -fea|grep java
#tar cvf psoa1.tar /u01/P_SOA/
#netstat -na|grep 700|grep LISTEN
#netstat -na|grep 555|grep LISTEN
#find /u01/Tlogs/ -name "*.DAT" -print | xargs ls -al
#ps -fea|grep product/fmw/fs2osb/12.2.1.1
#ls -al /u01/P_SOA/oracle/product/fmw/


#mv /u01/apps/pro_soa_main1_domain /u01/apps/pro_soa_main1_domain_old
#mv /u01/domains/pro_soa_main1_domain /u01/domains/pro_soa_main1_domain_old
#mv /u01/jms/pro_soa_main1_domain /u01/jms/pro_soa_main1_domain_old
#mv /u01/logs/pro_soa_main1_domain /u01/logs/pro_soa_main1_domain_old
#mv /u01/nodemanager/pro_soa_main1_domain /u01/nodemanager/pro_soa_main1_domain_old
#mv /u01/Tlogs/pro_soa_main1_domain /u01/Tlogs/pro_soa_main1_domain_old
#
#ls -al /u01/apps |grep domain
#ls -al /u01/domains |grep domain
#ls -al /u01/jms |grep domain
#ls -al /u01/logs |grep domain
#ls -al /u01/nodemanager |grep domain
#ls -al /u01/Tlogs |grep domain
#
#rm -rf /u01/apps/*_domain*
#rm -rf /u01/jms/*_domain*
#rm -rf /u01/logs/*_domain*
#rm -rf /u01/nodemanager/*_domain*
#rm -rf /u01/Tlogs/*_domain*
#rm -rf /u01/domains/*_domain*

#mv /u01/P_SOA/oracle/product/fmw/12.2.1.1 /u01/P_SOA/oracle/product/fmw/old

#ls -al /u01/P_SOA/oracle/product/fmw


# --------------------------------- JDK 
#ls -al /u01/P_SOA/oracle/product/java
#/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -version
#rm /u01/P_SOA/oracle/product/java/jdk1.8.0_101
#rm /u01/P_SOA/oracle/product/java/jdk1.8
#rm /u01/P_SOA/oracle/product/java/jdk1.8.0_131
#cp -rf /opt/telcol/cluster-disco/patch/jdk1.8.0_131 /u01/P_SOA/oracle/product/java/
#mv /u01/P_SOA/oracle/product/java/jdk1.8 /u01/P_SOA/oracle/product/java/jdk1.8.0_101
#ln -s /u01/P_SOA/oracle/product/java/jdk1.8.0_131 /u01/P_SOA/oracle/product/java/jdk1.8
#mkdir /u01/P_SOA/oracle
#mkdir /u01/P_SOA/oracle/product
#mkdir /u01/P_SOA/oracle/product/java/
#cp -r /opt/telcol/cluster-disco/SOA_12.1/zip/jdk1.8.0_101 /u01/P_SOA/oracle/product/java/
#mv /u01/P_SOA/oracle/product/java/jdk1.8.0_101 /u01/P_SOA/oracle/product/java/jdk1.8


# ---------------------------------------  PATCH
#/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/OPatch/opatch napply /opt/telcol/cluster-disco/patch -id 23635874,24348910,25491960,25388843 -oh /u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1 -silent


# --------------------------------------- Pache para dev/IOT/E2E/PRE
#mkdir /u01/P_SOA/java
#cp -r /opt/telcol/cluster-disco/patch/java/jdk1.8.0_131/ /u01/P_SOA/java/
#ln -s /u01/P_SOA/java/jdk1.8.0_131 /u01/P_SOA/java/jdk1.8
#/opt/telcol/cluster-disco/deploy/run.sh
#ls -al /u01/P_SOA
#ls -al /u01/P_SOA/java/*
#find /u01/domains/*/bin/ -name "set*.sh" -print | xargs sed -i 's/\/usr\/java\/jdk1.8.0_101/\/u01\/P_SOA\/java\/jdk1.8/g'
#find /u01/domains/*/bin/ -name "set*.sh" -print | grep jdk
#sed -i 's/ -XX:+AggressiveHeap//g' *.sh


# ---------------- Script de arranque
#mkdir /u01/P_SOA/scripts
#mv start.sh /u01/P_SOA/scripts


# ----------------- HEAP

# OSB
# export USER_MEM_ARGS="-Dweblogic.UseEnhancedIncrementAdvisor=false -XX:+UnlockCommercialFeatures -XX:+ResourceManagement -Xms8g -Xmx8g -Xmn3g -Dweblogic.Stdout=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.out -Djava.io.tmpdir=/u01/domains/pro_osb_fullstack1_domain/tmp -Dweblogic.Stderr=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/heapDump/adm_fullstack1.hprof"



#-Dweblogic.Stderr=/u01/logs/pro_osb_legados1_domain/adm_legados1/adm_legados1.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_osb_legados1_domain/adm_legados1/heapDump/adm_legados1.hprof
#-Dweblogic.Stderr=/u01/logs/pro_soa_main1_domain/adm_main1/adm_main1.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_soa_main1_domain/adm_main1/heapDump/adm_main1.hprof
#-Dweblogic.Stderr=/u01/logs/pro_soa_main2_domain/adm_main2/adm_main2.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_soa_main2_domain/adm_main2/heapDump/adm_main2.hprof
#-Dweblogic.Stderr=/u01/logs/pro_osb_sandbox_domain/adm_sandbox/adm_sandbox.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_osb_sandbox_domain/adm_sandbox/heapDump/adm_sandbox.hprof
#-Dweblogic.Stderr=/u01/logs/pro_soa_sandbox_domain/adm_sandbox/adm_sandbox.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_soa_sandbox_domain/adm_sandbox/heapDump/adm_sandbox.hprof

# SOA
#-Xms4g -Xmx4g


# create boot.properties

# ------------------------ crear directorio de deployment plan, keystore y tmp

#mkdir dplan
#mkdir keystores
#mkdir tmp

#----------- copiar logs y xml

#cp log4j2.xml /u01/domains/pro_osb_sandbox_domain/config/osb/
#cp *.jar /u01/domains/pro_osb_sandbox_domain/lib/

# --------- quitar ssl de nodemanager a maquinas


#sed -i '/SecureListener=true/d' /u01/nodemanager/pro_soa_main2_domain/nodemanager.properties
#echo "SecureListener=false" >> /u01/nodemanager/pro_soa_main2_domain/nodemanager.properties
#cat /u01/nodemanager/pro_soa_main1_domain/nodemanager.properties

#sed -i '/SecureListener=true/d' /u01/nodemanager/pro_osb_sandbox_domain/nodemanager.properties
#echo "SecureListener=false" >> /u01/nodemanager/pro_osb_sandbox_domain/nodemanager.properties

#cat /u01/nodemanager/pro_soa_main2_domain/nodemanager.properties

#------------- pack

#/u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_fullstack1_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack1_domain.jar -template_name="pro_osb_fullstack1" -managed=true
#/u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_fullstack2_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack2_domain.jar -template_name="pro_osb_fullstack2" -managed=true
#/u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_legados1_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados1_domain.jar -template_name="pro_osb_legados1" -managed=true
#/u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_legados2_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados2_domain.jar -template_name="pro_osb_legados2" -managed=true
#/u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_main1_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_main1_domain.jar -template_name="pro_soa_main1" -managed=true
#/u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_main2_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_main2_domain.jar -template_name="pro_soa_main2" -managed=true
#/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_sandbox_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_sandbox_domain.jar -template_name="pro_soa_sandbox" -managed=true
#/u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_sandbox_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_sandbox_domain.jar -template_name="pro_osb_sandbox" -managed=true




#------------- upack
#/u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack1_domain.jar -domain=/u01/domains/pro_osb_fullstack1_domain -app_dir=/u01/apps/pro_osb_fullstack1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_fullstack1_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack2_domain.jar -domain=/u01/domains/pro_osb_fullstack2_domain -app_dir=/u01/apps/pro_osb_fullstack2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_fullstack2_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados1_domain.jar -domain=/u01/domains/pro_osb_legados1_domain -app_dir=/u01/apps/pro_osb_legados1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_legados1_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados2_domain.jar -domain=/u01/domains/pro_osb_legados2_domain -app_dir=/u01/apps/pro_osb_legados2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_legados2_domain -nodemanager_type=CustomLocationNodeManager

#/u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_sandbox_domain.jar -domain=/u01/domains/pro_osb_sandbox_domain -app_dir=/u01/apps/pro_osb_sandbox_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_sandbox_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_main1_domain.jar -domain=/u01/domains/pro_soa_main1_domain -app_dir=/u01/apps/pro_soa_main1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_main1_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_main2_domain.jar -domain=/u01/domains/pro_soa_main2_domain -app_dir=/u01/apps/pro_soa_main2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_main2_domain -nodemanager_type=CustomLocationNodeManager
#/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_sandbox_domain.jar -domain=/u01/domains/pro_soa_sandbox_domain -app_dir=/u01/apps/pro_soa_sandbox_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_sandbox_domain -nodemanager_type=CustomLocationNodeManager

# -----------------------  parametros
# cambios.py (logs y HEAP)
# jsm.py
# create-workmanager.py
# mach.py
# agregar alias a /etc/hosts
# cambiar listen adress por nombre
# cambiar cookies nombre consola
# timeout de datasource


# ---- ------------------------rotar
#mkdir /u01/logs/archive 
#cp -r /opt/telcol/cluster-disco/scripts/archiveLogs.sh /u01/P_SOA/scripts/
#chmod 755 /u01/P_SOA/scripts/archiveLogs.sh
#crontab /opt/telcol/cluster-disco/scripts/cron
#crontab -l
#find /u01/domains -type f -name '*.out0*' -print | xargs rm
#find /u01/domains -type f -name '*.err0*' -print | xargs rm
#find tree /u01/logs/
#rm -rf /u01/domains/pro_osb_fullstack1_domain/*LOGS
#rm -rf /u01/domains/pro_osb_fullstack1_domain/servers/adm_fullstack1/*LOGS
#find /u01/domains/pro_osb_fullstack1_domain -name *LOG*
#ls -al /u01/nodemanager/pro_osb_fullstack1_domain


# ---------------------- Cambiar el cookieName

#ADMINCONSOLESESSION_NAME



#----------cambio de fecha y hora
rm /etc/localtime
ln -s /usr/share/zoneinfo/America/Bogota /etc/localtime

date -s "21 MAR 2018 18:14:00"
date
#date +%T -s "23:11:00"
date +%T -s "14:35:00"

# -------------- desistalar
#rm -rf /u01/apps/*
#rm -rf /u01/domains/*
#rm -rf /u01/nodemanager/*
#rm -rf /u01/logs/*
#rm -rf /u01/Tlogs/*
#rm -rf /u01/jms/*
#ls -al /u01/jms
#rm -rf /u01/P_SOA/*
#rm -rf oradiag_oracle
#rm -rf oraInventory
#rm -rf /u01/P_SOA/.patch_storage/


# --------------------------- OTROS

#java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_soa_quickstart.jar -silent -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa.txt -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc


#/u01/jms/pro_osb_fullstack1_domain/
#/u01/jms/pro_osb_fullstack2_domain/

#/u01/jms/pro_osb_legados1_domain/
#/u01/jms/pro_osb_legados2_domain/

#/u01/jms/pro_soa_main1_domain/
#/u01/jms/pro_soa_main2_domain/
#/u01/jms/pro_soa_sandbox_domain/
#/u01/jms/pro_osb_sandbox_domain/


# ----------------------------- hosts


#sed -i 's/soahostproadm01/soahostproadm01 ADM1/g' /etc/hosts
#sed -i 's/soahostproadm02/soahostproadm02 ADM2/g' /etc/hosts


#echo "10.203.109.231 MN1-SOA01 MN2-SOA01"  >> /etc/hosts
#echo "10.203.109.232 MN1-SOA02 MN2-SOA02"  >> /etc/hosts
#echo "10.203.109.233 MN1-SOA03 MN2-SOA03"  >> /etc/hosts
#echo "10.203.109.234 MN1-SOA04 MN2-SOA04"  >> /etc/hosts
#echo "10.203.109.235 MN1-SOA05 MN2-SOA05"  >> /etc/hosts
#echo "10.203.109.241 SB-SOA01 SB-SOA02"  >> /etc/hosts
#echo "10.203.109.242 SB-SOA03 SB-SOA04"  >> /etc/hosts
#echo "10.203.109.246 FS1-OSB01 FS1-OSB02 FS1-OSB03"  >> /etc/hosts
#echo "10.203.109.187 FS1-OSB04 FS1-OSB05 FS1-OSB06"  >> /etc/hosts
#echo "10.203.109.188 FS1-OSB07 FS1-OSB08 FS1-OSB09"  >> /etc/hosts
#echo "10.203.109.189 FS1-OSB10 FS1-OSB11 FS1-OSB12"  >> /etc/hosts
#echo "10.203.109.190 FS1-OSB13 FS1-OSB14 FS1-OSB15"  >> /etc/hosts
#echo "10.203.109.196 FS2-OSB01 FS2-OSB02 FS2-OSB03"  >> /etc/hosts
#echo "10.203.109.197 FS2-OSB04 FS2-OSB05 FS2-OSB06"  >> /etc/hosts
#echo "10.203.109.198 FS2-OSB07 FS2-OSB08 FS2-OSB09"  >> /etc/hosts
#echo "10.203.109.199 FS2-OSB10 FS2-OSB11 FS2-OSB12"  >> /etc/hosts
#echo "10.203.109.200 FS2-OSB13 FS2-OSB14 FS2-OSB15"  >> /etc/hosts
#echo "10.203.109.206 LG1-OSB01 LG1-OSB02"  >> /etc/hosts
#echo "10.203.109.207 LG1-OSB03 LG1-OSB04"  >> /etc/hosts
#echo "10.203.109.208 LG1-OSB05 LG1-OSB06"  >> /etc/hosts
#echo "10.203.109.209 LG1-OSB07 LG1-OSB08"  >> /etc/hosts
#echo "10.203.109.210 LG1-OSB09 LG1-OSB10"  >> /etc/hosts
#echo "10.203.109.216 LG2-OSB01 LG2-OSB02"  >> /etc/hosts
#echo "10.203.109.217 LG2-OSB03 LG2-OSB04"  >> /etc/hosts
#echo "10.203.109.218 LG2-OSB05 LG2-OSB06"  >> /etc/hosts
#echo "10.203.109.219 LG2-OSB07 LG2-OSB08"  >> /etc/hosts
#echo "10.203.109.220 LG2-OSB09 LG2-OSB10"  >> /etc/hosts
#echo "10.203.109.228 SB-OSB01 SB-OSB02"  >> /etc/hosts
#echo "10.203.109.229 SB-OSB03 SB-OSB04"  >> /etc/hosts
#echo "10.203.109.230 SB-OSB05 SB-OSB06"  >> /etc/hosts


# ---------------------- root

#Ch4O123.
#H0l4123!

# ---------------------- Arranque
#echo "nohup /u01/domains/pro_soa_main1_domain/bin/startNodeManager.sh > nodemanager_bm1.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_soa_main2_domain/bin/startNodeManager.sh > nodemanager_bm2.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_soa_sandbox_domain/bin/startNodeManager.sh > nodemanager_bs.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_osb_fullstack1_domain/bin/startNodeManager.sh > nodemanager_of1.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_osb_fullstack2_domain/bin/startNodeManager.sh > nodemanager_of2.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_osb_legados1_domain/bin/startNodeManager.sh > nodemanager_ol1.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_osb_legados2_domain/bin/startNodeManager.sh > nodemanager_ol2.out &" >> /home/oracle/start.sh
#echo "nohup /u01/domains/pro_osb_sandbox_domain/bin/startNodeManager.sh > nodemanager_os.out &" >> /home/oracle/start.sh
#chmod 755 /home/oracle/start.sh


