/*********************************************************
                  Main Window! POISSON SILURE

Click the "Run" button to Run the simulation.

Change the geometry, flow conditions, numerical parameters
visualizations and measurements from this window.

This screen has an example. Other examples are found at 
the top of each tab. Copy/paste them here to run, but you 
can only have one setup & run at a time.

*********************************************************/
// Circle that can be dragged by the mouse
BDIM flow;
FlexNACA body;
FloodPlot flood;
PrintWriter output;
int n;
int i;
//float[] a={1,0};// réglage de l'enveloppe NORMéE du sinus, ordre croissant
float[] a={0.0005821541456522738, -0.1484772011437131, 6.626247372715663, -104.3013532744496, 747.6880622673832, -2815.940072924924, 6256.099815229328, -8512.531032218601, 6984.438434674183, -3176.753443722429, 615.702398115876};//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
float dt=1; //pas de calcul adimensionnel


void setup(){
  float longueur_poisson_unit = 0.2; //m
  float U_unit = 0.1; //m/s!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  float h_unit = 0.004; //m choix de la taille de la maille pour avoir une viscosité cinématique négligeable (cf. excel truc)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  float dimension_domaine_unit = 0.5; //m
  float dt=1; //pas de calcul adimensionnel
  float dt_unit=h_unit/U_unit;//pas de TEMPS en seconde
  //println(dt_unit);
  float frequence_unit=8;//Hz, fréquence de nage
   output = createWriter("Données/force pression.csv");
   output.println("t,Vx,Vy,vorticite,Fx,Fy,Fz");
   i=0;
  
  n = (int)(dimension_domaine_unit / h_unit);
  //println("n="+n);
  n = (int)pow(2, round(log(n)/log(2)));// prend la puissance de 2 la plus proche
  //println("n="+n);
  float c=longueur_poisson_unit/h_unit; 
  ///float lambda=1.5*c;//longueur d'onde
  float lambda=3.14156;
  
  float freq=dt_unit*frequence_unit;//adimensionnelle, fréquence du sinus
  float vp=freq*lambda;//célérité de l'onde pour le NACA
  //println(L);
  size(700,700);                             // display window size on screen
  //int n=(int)pow(2,7);                       // number of grid points
  //float L = n/8.;                            // length-scale in grid units
  Window view = new Window(n,n/2);              //maillage
//FlexNACA( x,  y,  c,   t=thickness, vp,_k,_a, window )
  ///body = new FlexNACA(n/5,n/4,c,0.12,vp,1,a,view);
  body = new FlexNACA(n/5,n/4,10,0.08,vp,0.2,a,view);     // define geom!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  flow = new BDIM(n,n,dt,body);             // solve for flow using BDIM
  flood = new FloodPlot(view);               // initialize a flood plot...
  flood.setLegend("vorticity",-.5,.5);       //    and its legend
}

void draw(){
  if (flow.t<600){                             // limite de temps de simu adimensionnelle 
    body.follow();                             // update the body
    body.update(flow.t);
    flow.update(body); flow.update2();         // 2-step fluid update
    flood.display(flow.u.curl());              // compute and display vorticity
    body.display();                            // display the body
    println(body.pressForce(flow.p));
    //println(flow.u.curl().quadratic(800,700)); //tentative d'affichage de vorticité - à comprendre
    //println(flow.u.x);
    //println(body.velocity(1,dt,2.0,5.0));//affiche la vitesse  du corps ?
    println('[',flow.u.x.quadratic(n/2,n/2),';',flow.u.y.quadratic(n/2,n/2),']',flow.u.curl().quadratic(n/2,n/2));
    i=i+1;
    output.print(flow.t);
    output.print(",");
    output.print(flow.u.x.quadratic(n/2,n/2));
    output.print(",");
    output.print(flow.u.y.quadratic(n/2,n/2));
    output.print(",");
    output.print(flow.u.curl().quadratic(n/2,n/2));
    output.print(",");
    output.print(body.pressForce(flow.p));
    output.print(",");
    output.println(body.Momentqueue(flow.p));
    //output.print(",");
    //output.println(body.pressForce(flow.p).y);
       
    //output.println('[',flow.u.x.quadratic(n/2,n/2),';',flow.u.y.quadratic(n/2,n/2),']',flow.u.curl().quadratic(n/2,n/2));
    //output.println(body.pressForce(flow.p));
    //output.println(flow.u.curl().quadratic(n/2,n/2));
    saveFrame("Données/écoulement cylindre-####.png");
    }
  else{
    println("Coucou cest fini et i=",i);
    output.close();
    exit();
  }  
}
void mousePressed(){body.mousePressed();}    // user mouse...
void mouseReleased(){body.mouseReleased();}  // interaction methods
void mouseWheel(MouseEvent event){body.mouseWheel(event);}
// CEST QUOI QUADRATIC
