class UMA{
  PVector posicion;
  PVector velocidad;
  float distanciaHorizontal =1080.0;
  float distanciaVertical = 1080;
  float tiempo= 1.0;
  int radio;
  float deltaTime = 1.0/60.0;
  int r;
  int g;
  int b;
  
  UMA(float x, float y, int r){
    posicion = new PVector(x,y);
    velocidad = PVector.random2D();
    radio = r;
    
  }
  
  void dibuja(){
    circle(posicion.x, posicion.y, radio);
    fill(105,29,63);
    
    
    
    velocidad.x = distanciaHorizontal/tiempo;
    velocidad.y = distanciaVertical/tiempo;
    
    
    
    if(posicion.x-radio >= width){
      velocidad.x *= -100;
    }
    
  }
  
  
  void mover(){
    posicion.x+=velocidad.x*deltaTime;
    //posicion.y+=velocidad.y*deltaTime;
    
  }
  
  void imprimir(){
    println("La posicion de uma en x es ", posicion.x);
    println("La posicion de uma en y es ", posicion.y);
    println("La velocidad de uma en x es ", velocidad.x);
    println("La velocidad de uma en y es ", velocidad.y);
    println("La velocidad de deltaTime es ", deltaTime);
  }
  
  
  
}
