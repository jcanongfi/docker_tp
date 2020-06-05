# Travaux pratiques pour formation docker

## TP no 09
Jouer avec une registry privée

### Objectif
A défaut d'installer de façon native une registry docker, quoi de mieux que le faire en executant un container ?

C'est une solution pédagogique et pratique qui convient bien à ce TP, mais ce n'est pas une bonne idée pour un environnement de production. :sweat_smile:
- [ ] Pas de gestion du SSL via des certificats
- [ ] Pas de paramétrage et de sizing de la zone disque dédiée au stockage des images
- [ ] Pas assez de haute disponibilité en l'état

Cependant, ce serait dommage de passer à côté. Et ça a le mérite de pouvoir s'entraîner facilement à tester une registry.

### Démarrage de la registry
Nous allons donc démarrer l'image docker officielle registry:2 qui sert justement à implémenter une registry en version 2.
```
docker run -d -p 5000:5000 --restart always --name registry registry:2
```

Nous obtenons une registry qui écoute sur le port 5000 de notre vm hôte.
**Remarque 1** : Notez l'utilisation de l'option --restart always pour ammener un minimum de haute disponibilité :smile:

### Utilisation de notre registry privée
Tout d'abord, il nous faut nous identifier sur cette nouvelle registry (encore inconnue de notre environnement docker CLI)

```
docker login localhost:5000
```
Il vous sera demandé un couple user/password.
Pas d'inquiétude, n'importe quelle valeur fera l'affaire.

**Remarque 2** : Rappelez-vous que la vm est exposée sur internet. Pensez à couper la registry dès que vous ne l'utilisez plus.

Ensuite, choisissez une image au hasard (avec le nombre de TP, vous avez le choix).
Appliquez-lui un tag de votre choix avec en préfix le nom de votre registry localhost:5000.

Par exemple :
```
docker tag <id> localhost:5000/mon_repo/mon_image:latest
```

Enfin, il ne vous reste plus qu'a réaliser le push
```
docker push localhost:5000/mon_repo/mon_image:latest
```
Félicitations ! :clap:

