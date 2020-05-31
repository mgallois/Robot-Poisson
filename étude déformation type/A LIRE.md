INTRODUCTION

Le but de cette étude est de déterminer la géométrie que la queue en silicone devra satisfaire. Concernant la forme globale, il s’agira d’un profil Nacca.

Objectifs :

*	Déterminer les déformations possibles pour une queue déformable agité à son extrémité
*	Simuler à l’aide de Lilypad la poussé de chaque déformation puis déterminer la plus efficace.
*	Estimer les besoins en alimentation de l’actionneur et la taille maximale de la queue pour satisfaire à la déformation choisie et pour atteindre une fréquence de l’ordre de 2 ou 3 Hz.

I_ DETERMINER LES DEFORMATIONS POSSIBLES ET SIMULATION

Nous observons la déformation d’une feuille de papier de fort grammage (300g.m-2) soumise à une excitation sinusoïdale à l’une de ses extrémités :

<img src="documents tiers/Images/2.PNG">

En fonction de la fréquence, nous obtenons différentes déformation types. Nous pouvons ensuite utiliser Lylipad pour déterminer à quelle vitesse se déplacerait un profil Nacca qui aurait ces déformations. Le profil Nacca utilisé correspond à la forme prévue dans [ce fichier](https://github.com/mgallois/Robot-Poisson/blob/master/Plans/mod%C3%A8le%20de%20queue.SLDPRT).

NB : Comparer directement ces vitesses n’aurait pas beaucoup de sens. En effet, il est évident que plus la fréquence de nage est élevée, plus un poisson ira vite. C’est pourquoi dans la simulation nous ne changeons pas la fréquence de la nage, mais seulement la déformation en elle-même. Par défaut, nous appliquons une fréquence de 3Hz à la simulation.

[vidéo de l'expérience](https://github.com/mgallois/Robot-Poisson/blob/master/%C3%A9tude%20d%C3%A9formation%20type/vid%C3%A9o%20d%C3%A9formation.mp4) (fréquence de 1Hz à 15Hz avec un pas de 1Hz toute les 10 secondes).

| Fréquence d’agitation de la feuille de papier (en Hz)      |     Vitesse simulée Avec lilypad (en cm.s-1)   |
| :------------:| :-------------: |
|1|0,6|
|2|1,2|
|3|1,0|
|4|0,9|
|5|1,0|
|6|0,8|
|7|0,8|
|8|0,7|
|9|0,6|
|10|0,6|
|11|0,5|

Nous obtenons ainsi un objectif de déformation à atteindre.

Une seconde simulation montre que plus la queue est grande, plus la propulsion est efficace. Nous chercherons donc à avoir la plus grande queue possible.

II_ BESOINS EN ALIMENTATION ET TAILLE MAXIMALE
	 
HYPOTHESE 1 : L’épaisseur de la queue influe peut sur le couple résistant devant la surface exposée : on peut donc utiliser une plaque de même surface que la queue.

HYPOTHESE 2 : Au vue de la déformation choisie, une plaque de PVC légèrement déformable apporte une estimation suffisamment proche du couple résistant. 

Les plaques en PVC correspondent aux différentes tailles de queue envisagées. Nous ne nous attarderons pas sur des calculs d’inertie, de couple résistant, etc. Comme nous cherchons à atteindre une fréquence de l’ordre de 2 ou 3 Hz, nous allons mesurer le temps de réponse à un échelon pour coup de nageoire.

Nous allons mesurer le temps de réponse à un échelon pour un battement en fonction de l’intensité fournie à l’actionneur et de la taille de la plaque en PVC. Nous utilisons des plaques de PVC de différentes tailles aillant la forme d’une queue de poisson pour simuler la présence d’une queue. La mesure se fait avec une carte Arduino. La mesure du temps se fait entre le début de la consigne et l’établissement du courant à travers la tige de cuivre (assimilable à un contacteur).

Montage sans plaque de PVC :

<img src="documents tiers/Images/3.jpg">
<img src="documents tiers/Images/4.jpg">
<img src="documents tiers/Images/5.jpg">

Code Arduino [ici](https://github.com/mgallois/Robot-Poisson/blob/master/codes%20divers/code%20arduino/code_calcul_Cr/code_calcul_Cr.ino).

Les plaques de PVC sont identifiées par leur longueur noté h.

Résultat de l’expérience :

<img src="documents tiers/Images/6.JPG">

NB : le point h=0 correspond à la valeur à vide, c’est-à-dire sans plaque de PVC.

Pour l’intensité maximale (2500 mA), on peut obtenir la fréquence maximale en fonction de h(mm) :

<img src="documents tiers/Images/7.JPG">

Nous chercherons donc à fabriquer une queue d’environ 9cm. 
