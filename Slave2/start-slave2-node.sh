docker run -itd --name=MySQL-Cluster-Slave2 -e MYSQL_ROOT_PASSWORD=password -e MySQL_Role=Slave2 -e REPLICATION_PASSWORD=88888888 -e REPLICATION_USER=repluser -e MasterIP=172.20.10.1 -e Slave1IP=172.20.10.2 -e Slave2IP=172.20.20.6 -e MySQLPort=3307 -p 3307:3306 -v /home/rancher/mysql:/var/lib/mysql mysql5.6-replication-docker:1.0
