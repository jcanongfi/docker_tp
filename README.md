# Travaux pratiques pour formation docker

## TP no 1
Premier contact avec docker

### Commande "docker version"
```
docker version
```
Permet de visualiser la version du client (CLI) et du moteur (Daemon).

*docker* est écrit en Go.

Le moteur docker possède 3 dépendances (containerd, runc et docker-init) qui sont développés de façon autonome selon leur propre cycle.


### Commandes docker disponibles
```
docker
```
Permet de voir la liste des commandes possible avec le CLI.

Historiquement, les commandes étaient directes et simples, réduites à un verbe (*Commands*)

Mais avec le temps, les possibilités augmentant, elles ont été regroupées en catégories (*Management Commands*), soit un nom suivi d'un verbe.

Il faut privilégier les *Management Commands* désormais, les *Commands* simples n'étant présentes que par compatibilité (elles disparaitront peut-être un jour).


