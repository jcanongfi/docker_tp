# Travaux pratiques pour formation docker

## TP no 10
Build multistage

### Objectif
Il s'agit ici de construire une image minimale contenant une application écrite en GO.
Nous ne disposons que du code source et pas d'environnement Go sur notre vm.

Le fait d'utiliser un fichier Dockerfile multistage offre les avantages suivants :
[] Pouvoir profiter d'une image golang possédant l'environnement de compilation Go
[] De compiler le code source dans cette image et de n'extraire que le binaire résultant
[] De minimiser le nombre de layer sur l'image finale

### Lecture et analyse du fichier Dockerfile
Analysez le contenu du fichier Dockerfile de ce TP.

Vous trouvez une première construction d'image nommée builder.
C'est elle qui sert à la compilation du code GO

Vous trouvez ensuite la seconde construction d'une image (l'image finale).
On part d'une image vide (scratch) et on vient copier uniquement le binaire Go contruit dans l'image précédente (builder).

### Construction de l'image
Lancez la constuction de l'image :
```
docker build -t appli-hello .
```

**Remarque 1** : Notez la taille extrêment faible de l'image résultante.
```
docker image ls
```

### Execution du container
Executez l'application  :
```
docker run appli-hello 
```


