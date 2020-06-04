# Travaux pratiques pour formation docker

## TP no 11
Regroupement avec docker-compose

### Installer docker-compose
Tout d'abord, nous n'irons pas loin sans l'outil.
Une fois de plus, c'est un binaire GO compilé statiquement. Il suffit de le télécharger dans un répertoire du PATH et de le rendre éxecutable.
```
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"
sudo chmod +x /usr/local/bin/docker-compose
```

### Ecrire un fichier yaml

A compléter...

### Executer docker-compose
```
docker-compose up -d
```

### Vérifier que les containers tournent
```
docker-compose ps
```
Ou encore (ce sont des containers docker après tout !) :
```
docker container ps 
```

### Arrêter les containers
```
docker-compose stop
```


### Faire le ménage tel Attila
```
docker-compose down
```


