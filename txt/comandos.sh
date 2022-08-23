serie:root:Ubuntu$1
tunnel:119.8.10.245:root:R3dh4t$0:22
#cat /etc/elasticsearch/elasticsearch.yml|grep -v '^#' |grep memory
#tail -10 /elk/logs/elk-telefonica.log
#tail -10 /elk/logs/kibana.log
#tail -10 /elk/logs/logstash-plain.log
#ls -al /etc/elasticsearch
#hostname
#ip address | grep inet |grep 10.
#ls -al /elk/logs
#cat /etc/logstash/conf.d/micros.conf
#mkdir /etc/systemd/system/elasticsearch.service.d/
#echo -e "[Service]\nLimitMEMLOCK=infinity" >> /etc/systemd/system/elasticsearch.service.d/override.conf
#cat /etc/systemd/system/elasticsearch.service.d/override.conf
#systemctl daemon-reload
#ulimit -l unlimited
#cat /etc/security/limits.conf|grep elastic
#sed -i 's/bootstrap.memory_lock: false/bootstrap.memory_lock: true/g' /etc/elasticsearch/elasticsearch.yml
#service elasticsearch restart
#free -h | grep G
#cat /etc/elasticsearch/jvm.options |grep 'Xm'
#echo vm.swappiness=0 | tee -a /etc/sysctl.conf
service elasticsearch status |grep active
#ps -aux|grep kswapd0
#swapoff --all
