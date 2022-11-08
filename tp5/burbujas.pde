class Burbuja{
 float x, y, t; //coordenadas
 float vel;
 PImage imagen;
  Burbuja (float a, float b, float c){ 
   x = a;
   y = b;
   t = c;
   vel = 2;      
  imagen = loadImage ("../data/b-" + int(random(4))+ ".png");
  }
 void actualizar(){ //movimiento
    x+= vel;
    reutilizarBurbuja();  
  }
  
 void dibujar (){
    image( imagen, x, y);
  }

 void reutilizarBurbuja(){
   if ( x > width+100){
    y= random (height);
    x= -100;
    vel= 1.5; 
   }
  }
}
