# Travaux pratiques pour formation docker

## TP no 5
Construire une image minimale

### Objectif
Ceci est mon TP préféré.
Il combine beaucoup de points d'intérêts
[] Il permet d'illustrer la construction d'image from scratch
[] Il met en lumière le langage GO qui génère des binaires autonomes (C'est aussi possible désormais en java avec graal, mais c'est plus lourd)
[] C'est une des plus petites images docker que l'on peut réaliser
[] C'est pédagogique, comme toute application hello-world

### Analyser le fichier Dockerfile
Ici, le fichier Dockerfile se résume à sa plus simple expression.
[] une image de base vide (scratch)
[] copie d'un fichier binaire autonome (ici il est déjà compilé pour vous. Pour les plus curieux, voir le TP no 10)
[] spécification de la commande à exécuter pour l'image (tiens, comme par hasard, c'est notre binaire GO)

### Construction de l'image
```
docker build -t hello-world .
```

### Execution du container
```
docker build -t hello-world .
```

Félicitations ! :+1:

**Remarque** : Notez (via un 'docker image ls' la taille minimale de cette image)

