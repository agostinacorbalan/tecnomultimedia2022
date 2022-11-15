class Enemigo{ //BUSCAR MANERA DE QUE LOS OBSTACULOS SEAN VARIOS Y SE REINICIEN O REBOTEN EN LA PANTALLA 
  PImage obstaculos;
  float x, y, tamX, tamY, moveX, moveY;
  int vel, direccion;
 Enemigo (){

 x = random (0, width);
  y = random (-height, -5);
  vel = 2;
  obstaculos = loadImage ("../data/ob-" + int(random(3))+ ".png");
 }  
  void dibujar(){
   push();
   image (obstaculos, x, y);
   pop();
   this.actualizar();
  }
 
 void actualizar(){      //De este manera no cargan las imagenes ni se reinician
   x--;
   y = y--; 
   if (x > width){
    x = 0; 
   }
   if (y <=5){
     y = 11;
   } else if (y >= width){ //-5
     y = width; //-11
   }
   reiniciar();
 }
  void reiniciar(){
    if ( x > width-100){
    y = random (height);
    x= -100;
    vel= 2; 
    }
 }
}
