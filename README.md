# Travaux pratiques pour formation docker

## TP no 4
Container en mode interactif

### Executer un container en y restant connecté
Tout d'abord, il est possible d'exécuter un container en y restant connecté.
[] option -i pour maintenir stdin ouverte
[] option -t pour attribuer un pseudo terminal (tty)
[] préciser une commande à exécuter dans le container (ici bash)

Prenons l'exemple d'une distribution centos 7
```
docker run -it centos:7 bash
```

Le container se lance et surprise vous obtenez un shell root à l'intérieur.
Vous pouvez en proficter pour exécuter toutes les commandes que vous souhaitez (date, ls, vi, cd, touch...)

Pour sortir, un 'exit' ou un 'Ctrl-D' suffit à terminer le shell bash, et le container se termine en même temps.

### Se connecter à un container existant
Imaginons un container en cours d'execution
```
docker run -d --name dodo centos:7 sleep 120
```

Vous pouvez vous y connecter (via son nom ou son id) et observer de l'intérieur ce qui s'y déroule
```
docker exec -it dodo bash
```

Cela permet de voir le process exécuté (avec la commande ps) ou de suivre les logs (avec par exemple un tail -f )
Vous pouvez quitter ce shell bash, le container hôte continuera à vivre.

### La méthode attach
Selon la documentation, il y a une méthode plus simple
```
docker attach <id_or_name>
```

Cette méthode est pratique, car nous héritons automatiquement des flux stdin, stdout et stderr.
Cependant, elle est aussi plus risquée car comme nous sommes directement connecté au vrai container, un Ctrl-C tuerait le container de facto.

A utiliser avec parcimonie.


