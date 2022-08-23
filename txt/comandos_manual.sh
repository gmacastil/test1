
------ Conmandos usuario Root ------

date
hostname
cat /proc/meminfo |grep MemTotal:
cat /proc/cpuinfo |grep processor | wc -l
uname -a
rpm -qa | egrep '^binutils|^compat-libcap1|^compat-libstdc++|^gcc|^gcc-c++|^glibc-|^glibc-devel|^libaio|^libaio-devel|^libgcc|^libstdc++|^libstdc++-devel|^libXext|^libXtst|^openmotif|^openmotif22|^sysstat'
sctl -w net.core.rmem_max=2096304
sysctl -w net.core.wmem_max=2096304
cat /proc/sys/kernel/shmmax
/sbin/sysctl –p
cat /etc/security/limits.conf|grep oracle
du -sh /opt/telcol/cluster-disco/
id oracle
ifconfig |grep inet|grep 10.203.109
df -h|grep /u01 | sort -n
chown -R  oracle:oracle /u01
cat /etc/sysctl.conf
----------------------------- Alias de IP de servicio

echo "10.203.109.231 MN1-SOA01 MN2-SOA01"  >> /etc/hosts
echo "10.203.109.232 MN1-SOA02 MN2-SOA02"  >> /etc/hosts
echo "10.203.109.233 MN1-SOA03 MN2-SOA03"  >> /etc/hosts
echo "10.203.109.234 MN1-SOA04 MN2-SOA04"  >> /etc/hosts
echo "10.203.109.235 MN1-SOA05 MN2-SOA05"  >> /etc/hosts
echo "10.203.109.241 SB-SOA01 SB-SOA02"  >> /etc/hosts
echo "10.203.109.242 SB-SOA03 SB-SOA04"  >> /etc/hosts
echo "10.203.109.246 FS1-OSB01 FS1-OSB02 FS1-OSB03"  >> /etc/hosts
echo "10.203.109.187 FS1-OSB04 FS1-OSB05 FS1-OSB06"  >> /etc/hosts
echo "10.203.109.188 FS1-OSB07 FS1-OSB08 FS1-OSB09"  >> /etc/hosts
echo "10.203.109.189 FS1-OSB10 FS1-OSB11 FS1-OSB12"  >> /etc/hosts
echo "10.203.109.190 FS1-OSB13 FS1-OSB14 FS1-OSB15"  >> /etc/hosts
echo "10.203.109.196 FS2-OSB01 FS2-OSB02 FS2-OSB03"  >> /etc/hosts
echo "10.203.109.197 FS2-OSB04 FS2-OSB05 FS2-OSB06"  >> /etc/hosts
echo "10.203.109.198 FS2-OSB07 FS2-OSB08 FS2-OSB09"  >> /etc/hosts
echo "10.203.109.199 FS2-OSB10 FS2-OSB11 FS2-OSB12"  >> /etc/hosts
echo "10.203.109.200 FS2-OSB13 FS2-OSB14 FS2-OSB15"  >> /etc/hosts
echo "10.203.109.206 LG1-OSB01 LG1-OSB02"  >> /etc/hosts
echo "10.203.109.207 LG1-OSB03 LG1-OSB04"  >> /etc/hosts
echo "10.203.109.208 LG1-OSB05 LG1-OSB06"  >> /etc/hosts
echo "10.203.109.209 LG1-OSB07 LG1-OSB08"  >> /etc/hosts
echo "10.203.109.210 LG1-OSB09 LG1-OSB10"  >> /etc/hosts
echo "10.203.109.216 LG2-OSB01 LG2-OSB02"  >> /etc/hosts
echo "10.203.109.217 LG2-OSB03 LG2-OSB04"  >> /etc/hosts
echo "10.203.109.218 LG2-OSB05 LG2-OSB06"  >> /etc/hosts
echo "10.203.109.219 LG2-OSB07 LG2-OSB08"  >> /etc/hosts
echo "10.203.109.220 LG2-OSB09 LG2-OSB10"  >> /etc/hosts
echo "10.203.109.228 SB-OSB01 SB-OSB02"  >> /etc/hosts
echo "10.203.109.229 SB-OSB03 SB-OSB04"  >> /etc/hosts
echo "10.203.109.230 SB-OSB05 SB-OSB06"  >> /etc/hosts

------ Conmandos usuario Oracle -------

echo "export LANG=es_ES.UTF-8" >> .bash_profile
echo "export LC_ALL=es_ES.UTF-8" >> .bash_profile
echo "export LC_CTYPE=es_ES.UTF-8" >> .bash_profile
echo "export LC_NUMERIC=es_ES.UTF-8" >> .bash_profile
echo "export LC_TIME=es_ES.UTF-8" >> .bash_profile
echo "export LC_COLLATE=es_ES.UTF-8" >> .bash_profile
echo "export LC_MONETARY=es_ES.UTF-8" >> .bash_profile
echo "export LC_MESSAGES=es_ES.UTF-8" >> .bash_profile
echo "export LC_PAPER=es_ES.UTF-8" >> .bash_profile
echo "export LC_NAME=es_ES.UTF-8" >> .bash_profile
echo "export LC_ADDRESS=es_ES.UTF-8" >> .bash_profile
echo "export LC_TELEPHONE=es_ES.UTF-8" >> .bash_profile
echo "export LC_MEASUREMENT=es_ES.UTF-8" >> .bash_profile
echo "export LC_IDENTIFICATION=es_ES.UTF-8" >> .bash_profile
echo "export ORACLE_BASE=/u01/P_SOA/oracle" >> .bash_profile
#echo "export ORACLE_HOME=\$ORACLE_BASE/product/fmw/12.2.1.1" >> .bash_profile
#echo "export MW_HOME=\$ORACLE_HOME" >> .bash_profile
#echo "export WLS_HOME=\$MW_HOME/wlserver" >> .bash_profile
echo "export DOMAIN_BASE=/u01/domains" >> .bash_profile
echo "export APP_HOME=/u01/apps" >> .bash_profile
echo "export JAVA_HOME=\$ORACLE_BASE/product/java/jdk1.8" >> .bash_profile
echo "export ARQ=i686" >> .bash_profile
echo "export PRODUCTION_MODE=true" >> .bash_profile
echo "export JAVA_VENDOR=Oracle" >> .bash_profile
echo "export JAVA=\${JAVA_HOME}/bin/java" >> .bash_profile
echo "export WL_HOME=\$WLS_HOME" >> .bash_profile
echo "export PATH=\$HOME/bin:\${JAVA_HOME}/bin:\$ORACLE_HOME/OPatch:\$PATH" >> .bash_profile
echo "export LOGS=/u01/logs" >> .bash_profile

-------------- Carepeta para binarios

mkdir /u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1
mkdir /u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1


-------------- Instaladores de Binarios
--------------------------------- INFRA
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_fs1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_fs2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_lg1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_lg2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_mn1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_mn2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_sb.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/SOA_12.1/fmw_12.2.1.1.0_infrastructure.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_infra_ss.txt

--------------------------------- FW OSB
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_of1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_of2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_ol1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_ol2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_osb.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_osb_sb.txt

--------------------------------- FW SOA
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_mn1.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_mn2.txt
/u01/P_SOA/oracle/product/java/jdk1.8/bin/java -jar /opt/telcol/cluster-disco/zip/fmw_12.2.1.1.0_soa.jar -silent -invPtrLoc /opt/telcol/cluster-disco/SOA_12.1/oraInst.loc -responseFile /opt/telcol/cluster-disco/SOA_12.1/plantilla_soa_sb.txt

--------------------------------- JDK 

mkdir /u01/P_SOA/oracle
mkdir /u01/P_SOA/oracle/product
mkdir /u01/P_SOA/oracle/product/java/
cp -r /opt/telcol/cluster-disco/SOA_12.1/zip/jdk1.8.0_131 /u01/P_SOA/oracle/product/java/
ln -s /u01/P_SOA/oracle/product/java/jdk1.8.0_131 /u01/P_SOA/oracle/product/java/jdk1.8

---------------------------------------  PATCH
/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/OPatch/opatch napply /opt/telcol/cluster-disco/patch -id 23635874,24348910,25491960,25388843 -oh /u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1 -silent

----------------- HEAP start de AdminServers

OSB
export USER_MEM_ARGS="-Dweblogic.UseEnhancedIncrementAdvisor=false -XX:+UnlockCommercialFeatures -XX:+ResourceManagement -Xms8g -Xmx8g -Xmn3g -Dweblogic.Stdout=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.out -Djava.io.tmpdir=/u01/domains/pro_osb_fullstack1_domain/tmp -Dweblogic.Stderr=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/heapDump/adm_fullstack1.hprof"

SOA
export USER_MEM_ARGS="-Dweblogic.UseEnhancedIncrementAdvisor=false -XX:+UnlockCommercialFeatures -XX:+ResourceManagement -Xms4g -Xmx4g -Xmn3g -Dweblogic.Stdout=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.out -Djava.io.tmpdir=/u01/domains/pro_osb_fullstack1_domain/tmp -Dweblogic.Stderr=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/adm_fullstack1.err -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/u01/logs/pro_osb_fullstack1_domain/adm_fullstack1/heapDump/adm_fullstack1.hprof"

mkdir /u01/domains/<domain-name>/servers/<admin-server>/security
cd /u01/domains/<domain-name>/servers/<admin-server>/security
vi boot.properties

------------------------ Crear directorio de deployment plan, keystore y tmp
cd /u01/domains/<domain-name>
mkdir dplan
mkdir keystores
mkdir tmp

----------- copiar logs y xml

cp log4j2.xml /u01/domains/<domain-name>/config/osb/
cp *.jar /u01/domains/<domain-name>/lib/

 --------- quitar ssl de nodemanager a maquinas

sed -i '/SecureListener=true/d' /u01/nodemanager/<domain-name>/nodemanager.properties
echo "SecureListener=false" >> /u01/nodemanager/<domain-name>/nodemanager.properties
cat /u01/nodemanager/<domain-name>/nodemanager.properties

------------- pack de dominios

/u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_fullstack1_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack1_domain.jar -template_name="pro_osb_fullstack1" -managed=true
/u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_fullstack2_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack2_domain.jar -template_name="pro_osb_fullstack2" -managed=true
/u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_legados1_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados1_domain.jar -template_name="pro_osb_legados1" -managed=true
/u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_legados2_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados2_domain.jar -template_name="pro_osb_legados2" -managed=true
/u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_main1_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_main1_domain.jar -template_name="pro_soa_main1" -managed=true
/u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_main2_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_main2_domain.jar -template_name="pro_soa_main2" -managed=true
/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_soa_sandbox_domain -template=/opt/telcol/cluster-disco/domjar/pro_soa_sandbox_domain.jar -template_name="pro_soa_sandbox" -managed=true
/u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1/oracle_common/common/bin/pack.sh -domain=/u01/domains/pro_osb_sandbox_domain -template=/opt/telcol/cluster-disco/domjar/pro_osb_sandbox_domain.jar -template_name="pro_osb_sandbox" -managed=true

------------- upack de dominios
/u01/P_SOA/oracle/product/fmw/fs1osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack1_domain.jar -domain=/u01/domains/pro_osb_fullstack1_domain -app_dir=/u01/apps/pro_osb_fullstack1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_fullstack1_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/fs2osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_fullstack2_domain.jar -domain=/u01/domains/pro_osb_fullstack2_domain -app_dir=/u01/apps/pro_osb_fullstack2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_fullstack2_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/lg1osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados1_domain.jar -domain=/u01/domains/pro_osb_legados1_domain -app_dir=/u01/apps/pro_osb_legados1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_legados1_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/lg2osb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_legados2_domain.jar -domain=/u01/domains/pro_osb_legados2_domain -app_dir=/u01/apps/pro_osb_legados2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_legados2_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/sbosb/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_osb_sandbox_domain.jar -domain=/u01/domains/pro_osb_sandbox_domain -app_dir=/u01/apps/pro_osb_sandbox_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_osb_sandbox_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/mn1soa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_main1_domain.jar -domain=/u01/domains/pro_soa_main1_domain -app_dir=/u01/apps/pro_soa_main1_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_main1_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/mn2soa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_main2_domain.jar -domain=/u01/domains/pro_soa_main2_domain -app_dir=/u01/apps/pro_soa_main2_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_main2_domain -nodemanager_type=CustomLocationNodeManager
/u01/P_SOA/oracle/product/fmw/sbsoa/12.2.1.1/oracle_common/common/bin/unpack.sh -template=/opt/telcol/cluster-disco/domjar/pro_soa_sandbox_domain.jar -domain=/u01/domains/pro_soa_sandbox_domain -app_dir=/u01/apps/pro_soa_sandbox_domain/ -overwrite_domain=true -nodemanager_home=/u01/nodemanager/pro_soa_sandbox_domain -nodemanager_type=CustomLocationNodeManager

 -----------  Parametros de tunning

 /opt/telcol/cluster-disco/script/run.sh cambios.py
 /opt/telcol/cluster-disco/script/run.sh jsm.py
 /opt/telcol/cluster-disco/script/run.sh create-workmanager.py
 /opt/telcol/cluster-disco/script/run.sh mach.py
 /opt/telcol/cluster-disco/script/run.sh dssoa.py
 /opt/telcol/cluster-disco/script/run.sh dsosb.py

--------------------------- Path de filestore JMS

/u01/jms/pro_osb_fullstack1_domain/
/u01/jms/pro_osb_fullstack2_domain/
/u01/jms/pro_osb_legados1_domain/
/u01/jms/pro_osb_legados2_domain/
/u01/jms/pro_soa_main1_domain/
/u01/jms/pro_soa_main2_domain/
/u01/jms/pro_soa_sandbox_domain/
/u01/jms/pro_osb_sandbox_domain/

---------------------- Script de Arranque------------------------
echo "nohup /u01/domains/pro_soa_main1_domain/bin/startNodeManager.sh > nodemanager_bm1.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_soa_main2_domain/bin/startNodeManager.sh > nodemanager_bm2.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_soa_sandbox_domain/bin/startNodeManager.sh > nodemanager_bs.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_osb_fullstack1_domain/bin/startNodeManager.sh > nodemanager_of1.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_osb_fullstack2_domain/bin/startNodeManager.sh > nodemanager_of2.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_osb_legados1_domain/bin/startNodeManager.sh > nodemanager_ol1.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_osb_legados2_domain/bin/startNodeManager.sh > nodemanager_ol2.out &" >> /home/oracle/start.sh
echo "nohup /u01/domains/pro_osb_sandbox_domain/bin/startNodeManager.sh > nodemanager_os.out &" >> /home/oracle/start.sh
chmod 755 /home/oracle/start.sh


