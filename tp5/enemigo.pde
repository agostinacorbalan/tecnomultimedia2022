class Enemigo{ //BUSCAR MANERA DE QUE LOS ANILLOS SE MUEVAN EN UNA DIRECCION VERTICAL
  PImage obstaculos;
  float x, y;
  int time1 = 3000;
  int time2 = 5000;
  float t = 0;
 Enemigo (){
   x = random (height);
   y =  -80;
   t = width/2;
  obstaculos = loadImage ("ob-3.png");
 }
   void movimiento(){
     int currentTime = millis();
     if(currentTime >time2){
       x -=1.2;
     } else if (currentTime >time1){
       x +=1.5;
     } 
   }
 void dibujar(int x, int y){
   image (obstaculos, t, x, y, 30);
   movimiento();
  }
 }
