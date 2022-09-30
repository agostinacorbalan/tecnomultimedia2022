class Auto {
  
   PImage im2;
   float x, y, t;
   Boolean moviz, movde;

   Auto (){
   im2 = loadImage("azul.png");
   x = 10;
   y = 300;
   t = 120;
   }

 void actualizar (){
   if (mousePressed){
     moviz = true;
   } else {
     moviz = false;
   }
   
   float d = dist (x, y, mouseX, mouseY);
   if (d < t/2)
    movde = true;
    else
    movde = false;
   
   println ( "moviz:" + moviz);
   println ("movde:" + movde);
  }
 void dibujar (){
  image(im2, x, y);
 }
 
 void moverAuto(){
   if (moviz && movde){
     x = mouseX;
     y = mouseY;
  }
 }
}
