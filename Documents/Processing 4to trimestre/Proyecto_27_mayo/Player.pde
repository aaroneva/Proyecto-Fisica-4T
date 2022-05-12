class Player{
  PVector posicion;
  PVector velocidad;
  float distancia = 720/2 ;
  float tiempo= 10;
  int width;
  int height;
  int r = 127;
  int g = 255;
  int b = 121;
  
  Player(float x, float y, int w, int h){
    posicion = new PVector(x,y);
    velocidad =PVector.random2D();
    width = w;
    height = h;
    
  }
  
  
  void dibuja(){
    
    rect(posicion.x, posicion.y, width, height);
    fill(r, g, b);
    
    velocidad.x = distancia/tiempo;
    velocidad.y = distancia/tiempo;
    
    
   
    
    
  }
  
  void keyPressed(){
    
    if(keyCode == 87){
      posicion.y-=velocidad.y;
    }
    if(keyCode == 83){
      posicion.y+= velocidad.y;
    }
    
  }
  void keyReleased(){
    
    if(keyCode == 87 || keyCode == 83){
      velocidad.y=0;
    }  
    
    
    
    }
  
  
  void imprimir(){
    
    println("La velocidad de player en y es ", velocidad.y);
    println("La posicion de player en y es ", posicion.y);
  }
  
  
  
}
