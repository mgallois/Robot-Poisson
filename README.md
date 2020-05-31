# Robot-Poisson

INTRODUCTION :

Plusieurs domaines d’applications sont touchés par la nécessité d’entreprendre des prises de vues sous-marines : infrastructures immergées, barrage, pipeline, expertise maritime de bateaux (coques), recherche sous-marine, aquaculture, etc. L’emploi de drones sous-marins a à la fois rendu l’inspection de ces milieux subaquatiques plus simple, rapide et moins coûteuse, et permet d'explorer des fonds marins fragiles sans endommager l'environnement et son écosystème.

Cependant certaines profondeurs sont difficiles d’accès, des engins de faible volume qui embarquent l’énergie nécessaire à la réalisation de leur mission sont alors indispensables. D’où le besoin de systèmes peu énergivore.

Il faut savoir que dans le milieu du XXième siècle, le biologiste Sir James Gray mis en évidence une singularité à qui il donna son nom . Son hypothèse, qui a formé la base de l'analyse énergétique de la nage des dauphins par Gray, était qu'un animal qui nage dépense essentiellement son énergie musculaire pour surmonter la traînée. Or il énonça que la puissance dépensée par un dauphin pour nager à une vitesse donnée peut être sept fois inférieure à celle utilisée par des moteurs pour propulser un corps rigide à la même vitesse, ce qui conduit au paradoxe. [Extrait de sa thèse](https://jeb.biologists.org/content/jexbio/13/2/192.full.pdf)

Ainsi sa conjecture doit être révisé :  la puissance de traînée peut être supérieure à la puissance musculaire sans enfreindre tout principe physique.

Pour expliquer ce phénomène, il faut s’intéresser à la nage du poisson qui fait se propager une onde le long de son corps. On peut associer au déplacement du poisson un nombre de Reynolds correspondant à une allée de tourbillons de Karman. L’action de la queue va déformer cette allée et déplacer les tourbillons de l’autre côté de l’axe de la queue. Cette allée de tourbillons de Karman inversée crée un excès de quantité de mouvement qui entraîne une force propulsive sur le poisson. (Voir [ici](https://github.com/mgallois/Robot-Poisson/blob/master/explication%20rapide%20ph%C3%A9nom%C3%A8ne.md) pour une explication un peu plus détaillé)

Cette démarche biomimétique apparaît prometteuse pour remplacer la traditionnelle hélice de propulsion. L’objet de la robotique biomimétique est de concevoir et fabriquer des machines inspirées de la faune sous-marine, qui ont l’avantage de ne pas effrayer la vie marine contrairement à nos réalisations actuelles. Les premiers prototypes de « robots poissons » sont en développement, voire prêt à la commercialisation tel SoFi conçu par des chercheurs du MIT. C’est un poisson robotique sous-marin non attaché qui peut exécuter de manière autonome des commandes reçues à distance d'un plongeur. Ce projet démontre la possibilité de propulser un drone en imitant la nage d’un poisson.

Notre objectif est de concevoir un robot poisson à la fois souple et adapté à l’immersion. Le poisson robotisé doit se mouvoir à l’aide d’une ondulation biomimétique développant une force de poussée. Il sera question de concevoir, à l’aide de Simon Querat de l’ENS Rennes, un actionneur qui mettra en mouvement une queue moulée en silicone.

Enfin, l’un des défis d’une telle conception est de définir la fonction de déformation de la queue idéale. Son obtention est d’autant plus complexe qu’il fait appel à des notions complexes de mécanique des fluides, dont l’équation de Navier-Stokes qui est non linéaire. Il est cependant possible d’utiliser des modèles informatiques. Ces outils permettent de calculer la résultante des forces s’exerçant sur un corps déformable plongé dans un fluide en écoulement. Le Code utilisé ici est [LilyPad](https://github.com/weymouth/lily-pad).



  
