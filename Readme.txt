git clone git@github.com:sasikanth2806/kmps-camera.git

##installing docker 
sudo apt  install docker.io 




#install docker compose v2

sudo apt remove docker docker.io containerd runc -y
sudo apt update
sudo apt install ca-certificates curl gnupg -y

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io \
docker-buildx-plugin docker-compose-plugin -y

### start docker
sudo systemctl start docker

sudo systemctl enable docker

sudo systemctl status docker

start
====

docker compose -f docker-compose.yml up -d
