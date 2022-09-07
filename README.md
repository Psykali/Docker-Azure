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
```html
<!DOCTYPE html>
<html>
<head>
<title>g3b10AzetDockerKCAB.drawio.html</title>
<meta charset="utf-8"/>
</head>
<body>
<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2022-09-07T14:09:30.532Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;vMmP_diA7HNVN6CA5-aG\&quot; version=\&quot;20.2.8\&quot; type=\&quot;device\&quot;&gt;&lt;diagram id=\&quot;pEq1C7PcL2HOytmeoLkm\&quot; name=\&quot;Page-1\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;,&quot;toolbar&quot;:&quot;pages zoom layers lightbox&quot;,&quot;page&quot;:0}"></div>
<script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>
</body>
</html>
```