class Personaje{ //movimiento, ubicacion del personaje pez
 PImage pez;
 int posX, posY; 
 int vida;
  
 Personaje(){
  pez = loadImage ("pez.png"); 
  posX= 100;
  posY= 90; 
  vida = 1;
  }
  
 void dibujar(){
  image (pez, posX, posY);
  dibujarVida();
  teclado(); 
 }
 
 void dibujarVida(){ 
   fill(0);
   rect(0, 0, 90, height/20);
   fill(0, 100, 0);
   rect (0, 0, 90, height/20);
   fill(255, 255, 0);
   text("Vida: " + vida, height/20, height/25);
 }
 void moverIzquierda(){
   posX -=5;
 }
 
 void moverDerecha(){  
   posX +=5;
 }
 
 void moverArriba(){
   posY -=5;
 }
 
  void moverAbajo(){
   posY +=5;
 }
 
 void teclado(){
  if (key ==  'a' || key == 'A') {
      moverIzquierda();
    }
    if (key == 'd' || key == 'D') {
      moverDerecha();
    }
     if (key ==  'w' || key == 'W') {
      moverArriba();
     }
     if (key ==  's' || key == 'S') {
      moverAbajo();
     }
  }
 
 int Px (){
  return posX;
 }
 
 int Py(){
  return posY;
 }
}
