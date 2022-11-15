class Juego{ //Falta colision y perdida de vida (1)
  int x, y;
  int cantEnemigos = 10;
  int cantFilaEnemigos = 2;
  int espacioEnemigos = 100;
  int espacioFilas = 60;
  int xFila = 50;
  boolean direccion = true;
  Pez pez;
  Enemigo enemigo;

  Juego(){
  
 pez = new Pez();
 enemigo = new Enemigo();
  }
    
 void dibujar(){
  pez.dibujar();
  enemigo.dibujar(1,2);
  dibujarEnemigos();
 }
 
 void movimiento(){
  if (mousePressed){
      x = mouseX;
      y = mouseY;
  }
 }  
 void colision(){
     
   }
 void dibujarFila (int posX, int posY){
   for (int i = 0; i < cantEnemigos; i++){
     if (direccion){xFila ++;} else {xFila--;}
     enemigo.dibujar(posX + i * espacioEnemigos, posY);
   }
 }
   void dibujarEnemigos() {
    for (int i = 0; i < cantFilaEnemigos; i++) {
      dibujarFila(50, 50+espacioFilas*i);
    }
  }
 }
