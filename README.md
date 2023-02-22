./gencsv.sh 2 8
docker run infracloudio/csvserver 
docker container cp inputdata 469601d293f5:/csvserver/inputdata
docker start  469601d293f5
docker exec -it 469601d293f5 /bin/bash
netstat -tunlp | grep LISTEN 
exit
docker stop 469601d293f5 
docker rm 469601d293f5 
docker run -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver
docker ps -a
docker container cp inputdata 6f1960d682b5:/csvserver/inputdata
docker ps -a
docker start 6f1960d682b5
docker ps -a
docker ps

