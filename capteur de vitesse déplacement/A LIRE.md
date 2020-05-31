# Capteur de vitesse

INTRODUCTION :

L’objectif de cette partie est de réaliser un capteur de vitesse du poisson. Ce capteur a plusieurs intérêts. Dans un premier temps il servira à prendre la vitesse du poisson afin de pouvoir réaliser des mesures sur l’efficacité de la queue, du rendement, etc. Dans un second temps, il servira à asservir le poisson en vitesse. En effet il peut être intéressant, selon la mission du drone, de pouvoir contrôler sa vitesse. (Mesures de distances sans dépondre de la technologie GPS qui fonctionne mal sous l’eau, mesure de courant marin, vitesse adéquat à l’observation de certains milieux en autonomie, …)

Principe :

Au vu de la vitesse faible du poisson nous nous dirigeons vers un capteur de pression différentiel (tube de Pitot). En voici le principe :

![alt tag](https://user-images.githubusercontent.com/64842540/83362148-47e40c80-a38f-11ea-848c-f2f9003ab683.jpeg)

Au début, nous ne disposions pas de tube de Pitot adéquat et pour rendre facile la communication avec une carte arduino nous avons commencé par utiliser un capteur de pression différentiel placé dans un capsule étanche.

Capteur :

![alt tag](https://user-images.githubusercontent.com/64842540/83362280-58e14d80-a390-11ea-83d0-c9b2e465b701.jpg)
![alt tag](https://user-images.githubusercontent.com/64842540/83362281-5bdc3e00-a390-11ea-99c8-c5817f0f04d1.jpg)
![alt tag](https://user-images.githubusercontent.com/64842540/83362283-5da60180-a390-11ea-9e49-c0436a1d8f3f.jpg)

[Code pour l’utilisation](https://github.com/mgallois/Robot-Poisson/blob/master/codes%20divers/code%20arduino/capteur_pression/capteur_pression.ino)

Doc capteur : [résumé](https://github.com/mgallois/Robot-Poisson/blob/master/capteur%20de%20vitesse%20d%C3%A9placement/bilan%20doc%20capteur.pdf)
 / [complète](https://github.com/mgallois/Robot-Poisson/blob/master/documents%20tiers/fiche-technique-1182924-capteur-de-pression-nxp-semiconductors-mpxv5004dp-0-kpa-a-392-kpa-smd-1-pcs.pdf)

[Circuit entre le capteur de l’arduino](https://github.com/mgallois/Robot-Poisson/blob/master/capteur%20de%20vitesse%20d%C3%A9placement/Amplificateur.pdf)


Montage :

![alt tag](https://user-images.githubusercontent.com/64842540/83362285-5f6fc500-a390-11ea-8e57-aa5a8e797a2e.jpg)
![alt tag](https://user-images.githubusercontent.com/64842540/83362286-61d21f00-a390-11ea-9c4e-660227b97cc3.jpg)
![alt tag](https://user-images.githubusercontent.com/64842540/83362287-63034c00-a390-11ea-944c-120a73290bbd.jpg)
![alt tag](https://user-images.githubusercontent.com/64842540/83362288-64cd0f80-a390-11ea-9b76-2372990698cc.jpg)

Les premiers tests semblent bien renvoyer un résultat linéaire lorque la variation de pression est due à une variation de la profondeur sous l'eau. Les tests à venir devraient permettre de déterminer une loi entre la vitesse de déplacement de la capsule et la différence de pression mesurée.
