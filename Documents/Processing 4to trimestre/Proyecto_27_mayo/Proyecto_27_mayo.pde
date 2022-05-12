int r = 225;
int g = 150;
int b = 255;
pelotas bola = new pelotas(0,200,40);
UMA uma = new UMA(100,100,27);
Player player = new Player(50,50,50,50);

void setup(){
  
  size(1080,720); 
  //imprimir de bola
  bola.imprimir();
  //separacion
  println(" ");
  println("-------------------------------------------------");
  //imprimir de uma
  uma.imprimir();
   println(" ");
  println("-------------------------------------------------");
  //imprimir de player
  player.imprimir();
  
}

void draw(){
  background(r,g,b);
  //cosas de bola
  bola.update();
  bola.mover();
  //cosas de uma
  uma.dibuja();
  uma.mover();
  //cosas de player
  player.dibuja();
  player.keyPressed();
  player.keyReleased();
}
