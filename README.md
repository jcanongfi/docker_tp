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
docker run -d -v site_web:/usr/share/nginx/html -p 8080:80 nginx
```

