sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi -f $(sudo docker images -a -q)
sudo docker volume prune -f
sudo docker network prune -f
sudo docker system prune -a --volumes -f
