# Etude de l'actionneur

__Principe de fonctionnement :__

L’objectif est d’agiter la queue du poisson pour qu’ils puisse nager. L’utilisation d’un servomoteur classique nous a semblé compliqué car beaucoup d’entre eux ont un temps de parcourt beaucoup trop long. Nous avons donc décidé d’en concevoir un nouveau :

<img src="documents tiers/Images/8.jpg">

Comme le montre cette image, l’idée est d’utiliser un aimant permanant qui serait placé à l’intérieur d’une bobine. En faisait circuler un courant dans la bobine, nous créons un couple sur l’aimant. En faisant circuler un courant alternatif, nous pouvons agiter les aimants.

Dans la pratique, nous fixons les aimant dans un cadre imprimé en 3D auquel la queue du poisson pourra venir se fixer :

<img src="documents tiers/Images/9.jpg">
<img src="documents tiers/Images/10.jpg">

La commande se fait soit par un montage push pull ([vidéo](https://youtu.be/8bh-lfFtLSA)), soit à l’aide d’une carte arduino ([code](https://github.com/mgallois/Robot-Poisson/blob/master/codes%20divers/code%20arduino/programme_commande_actionneur/programme_commande_actionneur.ino)).

__Mesure du couple transmissible :__

On se propose ici de déterminer expérimentalement le couple transmissible. En effet, nos modèles théoriques sont trop éloignés de la réalité (bobine d’épaisseur non négligeables, champs des aimants irréguliers, etc…).

Afin de mesurer la relation entre le couple et l’intensité, nous accrochons un dynamomètre à l’extrémité de l’actionneur et nous l’alimentons avec un courant continu d’intensité variable. ([Résultats](https://github.com/mgallois/Robot-Poisson/blob/master/l'actionneur/Couple%20Actionneur%20en%20fonction%20de%20l'intensit%C3%A9.xlsx))

__Tracé dans Bode du comportement de l’actionneur :__

L’étude de la réponse se fait par analyse vidéo. Cette étape est pour le moment en suspend.([ebauche tableur](https://github.com/mgallois/Robot-Poisson/blob/master/l'actionneur/trac%C3%A9%20dans%20bode%20(%C3%A9bauche).xlsx)).
