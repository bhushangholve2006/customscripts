mkdir -p /home/azureuser/consul.d/ && echo '{\"services\":[{\"name\":\"redis\",\"address\":\"10.0.0.4\",\"tags\":[\"redis\"],\"port\":6379}]}' | sudo tee /home/azureuser/consul.d/web.json  && nohup consul agent -dev  -ui -config-dir=/home/azureuser/consul.d -domain=cloudhedgeinternal.io  -client `ip route get 8.8.8.8 | awk '{print $NF; exit}'` &