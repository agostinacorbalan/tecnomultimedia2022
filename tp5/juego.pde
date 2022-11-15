class Juego{
  int x, y;
  int time;
 Pez pez;
 Enemigo enemigo;

  Juego(){
  
 pez = new Pez();
 enemigo = new Enemigo();
 time = 0;
  }
    
 void dibujar(){
  pez.dibujar();
  enemigo.dibujar();
 }
 
 void movimiento(){
  if (mousePressed){
      x = mouseX;
      y = mouseY;
  }
 }  
 void colision(){
     
   }
 }
