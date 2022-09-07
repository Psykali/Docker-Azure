# Docker-Azure

Deploy docker image on Azure FuncApp

## Vous trouverez ci dessous les differantes étapes pour avoir une manifique web app

### Etape 1 Dans un terminal bash connectez vous a Azure avec un "az login".

Vous êtes maintenant connecté à votre souscription Azure.

### Etape 2 Dans un premier temps nous allons executer le script <https://github.com/Psykali/G3-B10-AZetDocker-KCAB/blob/main/Brief10-azure%2BdockerKCAB.bash>

Une fois le script terminé vous avez votre groupe de ressource, votre compte storage, azure fonction app et le slot.

### Etape 3 Faire la fin des configurations sur le portail Azure.



### Etape 4 importer l'image du docker hub.

#### L'image de dev est ici https://hub.docker.com/repository/docker/psykali/stackoverp20kcabdev

#### L'image de prod est ici https://hub.docker.com/repository/docker/psykali/stackoverp20kcab

### Voici l'archithecture réseau :
[![Alt text](https://github.com/Psykali/G3-B10-AZetDocker-KCAB/blob/main/diagrammebrief10.png)](https://github.com/Psykali/G3-B10-AZetDocker-KCAB/blob/main/diagrammebrief10.png)