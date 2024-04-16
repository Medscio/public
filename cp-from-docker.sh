sudo docker exec $(sudo docker ps --filter name=app -q) bash -c "mkdir -p /results; cp -f /app/*.log /app/results"
sudo rm -rf ./results
sudo docker cp $(sudo docker ps --filter name=app -q):/app/results ./results
