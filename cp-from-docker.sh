sudo docker exec $(sudo docker ps --filter name=app -q) bash -c "mkdir -p /extract; cp -f /app/*.log /app/results"
sudo docker cp $(sudo docker ps --filter name=app -q):/app/results results