# Travaux pratiques pour formation docker

## TP no 00
Préparation de la vm

### Pour ce TP, il faut être root :
```
sudo su – 
```

### Pour installer git :
```
yum install -y git
```

### Pour installer docker-ce :
```
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker
```

### Paramétrage de l’environnement :
```
usermod –a –G docker gfiuser
echo "gfiuser ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
exit
```

