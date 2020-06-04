# Travaux pratiques pour formation docker

## TP no 7
Utiliser un volume sur un container web

### Creation d'un volume nommé

```
docker volume create site_web
```

### Vérification de la bonne création

```
docker volume list
```

### Ajout de données sur ce volume
Faute de mieux, je propose de monter ce volume sur un container centos:7 pour y créer des données

```
docker run -it -v site_web:/mnt centos:7 bash
```

Déplacez vous dans /mnt et créez une page index.html


### Utilisons ce volume pour un serveur web nginx
```
docker run -d -v site_web:/usr/share/nginx/html -p 8080:80 --name webserver nginx
```
Testez
```
curl http://capcloud-X.westeurope.cloudapp.azure.com:8080/
```
Arrêtez le container webserver
```
docker stop webserver
```
Détruisez le volume site_web
```
docker volume rm site_web
```


### Version bind mount
```
docker run -d -v /home/gfiuser/docker_tp:/usr/share/nginx/html -p 8080:80 nginx
```
Testez
```
curl http://capcloud-X.westeurope.cloudapp.azure.com:8080/
```

