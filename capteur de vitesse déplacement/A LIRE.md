# Capteur de vitesse

INTRODUCTION :

L’objectif de cette partie est de réaliser un capteur de vitesse du poisson. Ce capteur a plusieurs intérêts. Dans un premier temps il servira à prendre la vitesse du poisson afin de pouvoir réaliser des mesures sur l’efficacité de la queue, du rendement, etc. Dans un second temps, il servira à asservir le poisson en vitesse. En effet il peut être intéressant, selon la mission du drone, de pouvoir contrôler sa vitesse. (Mesures de distances sans dépondre de la technologie GPS qui fonctionne mal sous l’eau, mesure de courant marin, vitesse adéquat à l’observation de certains milieux en autonomie, …)

Principe :

Au vu de la vitesse faible du poisson nous nous dirigeons vers un capteur de pression différentiel (tube de Pitot). En voici le principe :
<img src="documents tiers/Images/11.jpeg">

Au début, nous ne disposions pas de tube de Pitot adéquat et pour rendre facile la communication avec une carte arduino nous avons commencé par utiliser un capteur de pression différentiel placé dans un capsule étanche.

Capteur :

<img src="documents tiers/Images/12.jpg">
<img src="documents tiers/Images/13.jpg">
<img src="documents tiers/Images/14.jpg">

[Code pour l’utilisation](https://github.com/mgallois/Robot-Poisson/blob/master/codes%20divers/code%20arduino/capteur_pression/capteur_pression.ino)

Doc capteur : [résumé](https://github.com/mgallois/Robot-Poisson/blob/master/capteur%20de%20vitesse%20d%C3%A9placement/bilan%20doc%20capteur.pdf)
 / [complète](https://github.com/mgallois/Robot-Poisson/blob/master/documents%20tiers/fiche-technique-1182924-capteur-de-pression-nxp-semiconductors-mpxv5004dp-0-kpa-a-392-kpa-smd-1-pcs.pdf)

[Circuit entre le capteur de l’arduino](https://github.com/mgallois/Robot-Poisson/blob/master/capteur%20de%20vitesse%20d%C3%A9placement/Amplificateur.pdf)


Montage :

<img src="documents tiers/Images/15.jpg">
<img src="documents tiers/Images/16.jpg">
<img src="documents tiers/Images/17.jpg">
<img src="documents tiers/Images/18.jpg">
<img src="documents tiers/Images/19.jpg">
