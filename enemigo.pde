class Enemigo{
  PImage obstaculos;
  float x, y, tamX, tamY;
  int vel;
 Enemigo (){
  this.tamX = height/5; 
  this.tamY = width/5;
  this.x = random (0, width);
  this.y = random (-height, -5);
  vel = 2;
  obstaculos = loadImage ("../data/ob-" + int(random(3))+ ".png");
 }
 
 void reiniciar(){
    if ( x > width+100){
    y= random (height);
    x= -100;
    vel= 2; 
    }
  // this.tamX = width/5;
  // this.tamY = height/5;
   // this.x = random (0, width);
   // this.y = random (-height, -5);
 }
 
 void actualizar(){
   this.x--;
   this.y = this.y--; 
   if (this.x > width){
    this.x = 0; 
   }
   if (this.y <=5){
     this.y = 11;
   } else if (this.y >= width){ //-5
     this.y = width; //-11
   }
   reiniciar();
 }

 void dibujar(){
   this.actualizar();
   push();
   image (obstaculos, this.x, this.y, this.tamX, this.tamY); 
   pop();
  }
}
