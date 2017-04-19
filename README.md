# mysql5.6-replication-docker
All nodes use the same docker image.

docker run -itd --name=MySQL-Cluster-Master -e MYSQL_ROOT_PASSWORD=password -e MySQL_Role=Master -e REPLICATION_PASSWORD=88888888 -e REPLICATION_USER=repluser -e MasterIP=172.20.10.1 -e Slave1IP=172.20.10.2 -e Slave2IP=172.20.20.6 -e MySQLPort=3307 -p 3307:3306 -v /var/lib/mysql:/var/lib/mysql mysql5.6-replication-docker:1.0


docker run -itd --name=MySQL-Cluster-Slave1 -e MYSQL_ROOT_PASSWORD=password -e MySQL_Role=Master -e REPLICATION_PASSWORD=88888888 -e REPLICATION_USER=repluser -e MasterIP=172.20.10.1 -e Slave1IP=172.20.10.2 -e Slave2IP=172.20.20.6 -e MySQLPort=3307 -p 3307:3306 -v /var/lib/mysql:/var/lib/mysql mysql5.6-replication-docker:1.0


docker run -itd --name=MySQL-Cluster-Slave2 -e MYSQL_ROOT_PASSWORD=password -e MySQL_Role=Master -e REPLICATION_PASSWORD=88888888 -e REPLICATION_USER=repluser -e MasterIP=172.20.10.1 -e Slave1IP=172.20.10.2 -e Slave2IP=172.20.20.6 -e MySQLPort=3307 -p 3307:3306 -v /var/lib/mysql:/var/lib/mysql mysql5.6-replication-docker:1.0
