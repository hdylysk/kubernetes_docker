
sudo apt-get update -y

sudo apt-get install -y vim

sudo apt-get install -y git

sudo apt-get install -y emacs

sudo apt-get install -y bridge-utils

sudo add-apt-repository ppa:evarlast/golang1.4
sudo apt-get update -y
sudo apt-get install -y golang
vim ~/.bashrc export to add "GOPATH=$HOME/go"

sudo apt-get install -y docker.io

git clone https://github.com/GoogleCloudPlatform/kubernetes.git

vim ./cluster/ubuntu/config-default.sh
export nodes="root@42.62.101.39 root@42.62.101.4 root@42.62.101.44"

export KUBERNETES_PROVIDER=ubuntu

Add ssh key
ssh-keygen -t rsa -C "chendihao@unitedstack.com"
ssh-agent
SSH_AUTH_SOCK=/tmp/ssh-9oWiMQkLbIHm/agent.7049; export SSH_AUTH_SOCK;
SSH_AGENT_PID=7050; export SSH_AGENT_PID;
echo Agent pid 7050;
ssh-add

vim /etc/hosts
127.0.0.1 kubernetes1


emacs /etc/systemd/system/etcd.service
[Unit]
Description=etcd

[Service]
User=root
PermissionsStartOnly=true
Environment=ETCD_DATA_DIR=/var/lib/etcd
Environment=ETCD_NAME=%H
Environment=ETCD_INITIAL_CLUSTER=%H=http://localhost:2380,%H=http://localhost:7001
EnvironmentFile=-/etc/conf.d/etcd
ExecStart=/opt/bin/etcd
Restart=always
RestartSec=10s

[Install]
WantedBy=multi-user.target


emacs ubuntu/util.sh
