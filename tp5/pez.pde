class Pez{
 PImage verde; 
 float x, y, t;
 boolean moviz, movde;
 int vida;
  Pez(){
 verde = loadImage ("pez.png"); 
 x = 10;
 y = 300;
 t = 120;
 vida = 100;
  }

void movimiento(){
 if (mousePressed){
   moviz = true;
 } else {
   moviz = false;
 }
 float d = dist (x, y, mouseX, mouseY);
   if (d < t/2){
    movde = true;
  } else {
    movde = false;
   
   println ( "moviz:" + moviz);
   println ("movde:" + movde);
  }  
}

void dibujarPez(){
 image (verde, x, y);
 this.dibujarVida(); 
 }
   
void moverPez(){
  if (moviz && movde) {
    x = mouseX;
    y = mouseY;
  }
 }
 
void dibujarVida(){ 
   fill(0);
   rect(0, 0, width, height/20);
   fill(0, 100, 0);
   rect(0, 0, map(vida, 0, 100, 0, width), height/20);
   fill(255, 255, 0);
   text("Vida: " + vida + "%", height/20, height/25);
  }
 }
