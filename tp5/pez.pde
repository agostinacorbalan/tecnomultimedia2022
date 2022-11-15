class Pez{ //Movimiento y colision del pez

 PImage verde; 
 float  x, y, t; 
 boolean moviz, movde;
 int vida;
 Enemigo [] enemigo;
  Pez(){
 verde = loadImage ("pez.png"); 
 x = 100;
 y = width/2; 
 t = 60; 
 vida = 1; 
  }

void dibujar(){
 image (verde, x, y, 110, 60);
 this.dibujarVida(); 
 }
 
void dibujarVida(){ 
   fill(0);
   rect(0, 0, 90, height/20);
   fill(0, 100, 0);
   rect (0, 0, 90, height/20);
   fill(255, 255, 0);
   text("Vida: " + vida, height/20, height/25);
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
  }  
}

 void moverPez(){
  if (moviz && movde) {
    x = mouseX;
    y = mouseY;
  }
 }
}
