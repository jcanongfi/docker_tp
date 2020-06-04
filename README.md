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

### Analyser un fichier yaml
Ouvrez et parcourez le fichier docker-compose.yml

C'est un fichier au formal YAML basé sur l'indentation.

Il décrit 4 services
* postgres
  * définit l'image docker et 3 variables d'initialisation
* redis
  * définit l'image docker
* rails
  * définit l'image docker, la dépendance à deux services, 2 variables d'environnement et un volume
* nginx
  * définit l'image docker, un link vers rails, un port d'exposition sur la vm hôte et un bind mount en read-only

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

```
docker-compose logs
```
```
docker-compose logs -f 
```
```
docker-compose logs -f rails
```

### Arrêter les containers
```
docker-compose stop
```


### Faire le ménage tel Attila
```
docker-compose down
```


