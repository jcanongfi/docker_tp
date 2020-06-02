# Travaux pratiques pour formation docker

## TP no 2
Démarrer nos premiers containers

### Executez un premier container type hello-word

Avec un navigateur, visiter le [Hub Docker](https://hub.docker.com/) : https://hub.docker.com/

Utilisez le champs de recherche pour trouver l'application officielle hello-world

Comme proposé dans la page, vous pouvez l'éxécuter de la façon suivante :

```
docker run hello-world
```


La sortie écran (stdout) vous explique ce qu'il s'est déroulé :
 1. Le client docker a contacté (via api) le daemon docker
 2. Le daemon docker a téléchargé l'image **hello-world** depuis la registry publique
   ```
     docker pull hello-world
   ```
 3. Le daemon docker a instancié un container à partir de l'image **hello-world**  (Cette application ne fait qu'écrire le texte sur stdout)
   ```
     docker start hello-world
   ```
 4. Le daemon docker stream la sortie standard *stdout* pour l'afficher à l'écran.

**Remarque 1** : A l'avenir, il est plus précis et plus pérenne d'utiliser les **Management Commands**. 
```
docker image pull hello-world
docker container start hello-world
docker container run hello-world
```

**Remarque 2** : 'docker runi <-->', soit 'docker container run <-->', correspond à 'docker image pull <-->' suivi de 'docker container start <-->'


### Visualisez les changements

Au travers de la commande précédente, on a appris que l'on avait téléchargé une image.

Ce que l'on peut tout de suite vérifier avec la commande :
   ```
     docker image list
   ```

Pour l'anectdote, comparez le résultat avec cette autre commande (sera intéressant pour la suite) :

   ```
     docker image list --all
   ```
 
Ensuite, un container s'est executé et s'est terminé.

Ce que l'on peut visualiser avec la commande suivante :
   ```
     docker container list
   ```

Pour l'anectdote, comparez le résultat avec cette autre commande (sera intéressant pour la suite) :

   ```
     docker container list --all
   ```




