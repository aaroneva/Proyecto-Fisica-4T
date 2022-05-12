class pelotas{
  float rapidezAngularInicial = .1;
  float rapidezAngular = rapidezAngularInicial;
  float aceleracionAngular;
  PVector posicion;
  PVector velocidad;
  float distancia = 540;
  float tiempo = 100;
  float deltaTime = 1/60;
  float angulo = HALF_PI;
  float radioDeGiro = 100;
  int radio;
  int r = 103;
  int g = 0; 
  int b = 153;
  pelotas(float x, float y, int r){
    velocidad = PVector.random2D();
    posicion = new PVector(x,y);
   radio = r;
  }
  
  
  void imprimir(){
    println("El radio de bola es ", radio);
    println("La velocidad de bola en x es ",velocidad.x);
    println("La velocidad de bola en y es", velocidad.y);
    println("La rapidez de bola angular es ", rapidezAngular);
    println("El angulo de bola es ", angulo);
    println("La aceleracion de bola angular es ", aceleracionAngular);
    println("La posicion de bola en x es ", posicion.x);
    print("La posicion de bola en y es ", posicion.y);
    
  }
  void update(){
    
    //dibujo del circulo 
    circle(posicion.x,posicion.y,radio);
    fill(r,g,b);
    
    //colisiones que no funcionan 
    if(posicion.x >= width-radio || posicion.x-radio <= 0){
      velocidad.x *= -1;
      
    }
    if(posicion.y >= height || posicion.y-19 <=0){
      velocidad.y *= -1;
    }
    
  //calculamos la velocidad en las x, y 
    velocidad.x = distancia/tiempo;
    velocidad.y = distancia/tiempo;
    
  }
  
  void mover(){
    
  //formulas para que gire en círculos   
  posicion.x = width/2 + radioDeGiro*cos(angulo);
  posicion.y = height/2 + radioDeGiro*sin(angulo);
  angulo+=rapidezAngular;
  rapidezAngularInicial = aceleracionAngular;
    
    
    //velocidades para que avance 
    //posicion.x += velocidad.x;
    //posicion.y+=velocidad.y;
 
  }
  
  
}
