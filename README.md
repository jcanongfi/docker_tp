# Travaux pratiques pour formation docker

## TP no 8
Jouer avec la registry publique

### Création d'un docker ID
Se connecter sur [hub.docker.com](https://hub.docker.com/)

Remplir le formulaire "Sign Up"
- [ ] Choisir un Docker ID unique
- [ ] Saisissez une adresse email valide
- [ ] Choisissez un password bien costaud

Passez le Capcha et Validez le formulaire.
Il vous sera demandé de confirmer votre adresse email via un code...

... ça y est, vous faites partie du club ! :+1:

### Créer votre premier repo
Avec le contrat par défaut (gratuit), vous avez le droit à 
- [ ] un seul repository privé
- [ ] une infinité de repository publics

Choisissez le type de repository que vous souhaitez créer et choisissez un nom.
Vous pouvez créer votre repository.

**Remarque 1** : Votre repository est préfixé par votre docker ID, soit <dockerid>/<repository>

### Se connecter à la registry publique
Depuis votre VM sous putty, vous pouvez connecter votre CLI à la registry publique.
C'est pratique, comme c'est la registry par défaut, il n'y a pas de host/port à préciser. 
```
docker login
```

Il vous sera demandé de saisir vos identifiants (Docker ID + password)
C'est tout !

**Remarque 2** : Vous pouvez observer la création du fichier ~/.docker/config.json qui contient les informations de connexion encryptées

### Reste à pousser une image
Choisissez une image que vous souhaitez pousser dans votre repository (avec le nombre de TP, vous avez le choix).
Appliquez-lui un tag. 
Il se constitue de votre dockerid, de votre repository et enfin le tag libre (une version, un nom, latest,...)

Par exemple :
```
docker tag <id_image> <dockerid>/<repository>:latest
```

Enfin, il ne vous reste plus qu'a réaliser le push
```
docker push <dockerid>/<repository>:latest
```

Vous pouvez vérifier sur hub.docker.com que l'image est bien arrivée dans votre repository.

Félicitations ! :clap:
