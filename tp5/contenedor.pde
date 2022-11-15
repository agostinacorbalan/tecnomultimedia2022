class Contenedor { //Clase contenedora
  Mar mar;
  Pez pez; 
  Enemigo enemigo;
  Pantalla pantalla;
 Contenedor (){
  mar = new Mar(1);   //llamo a los constructores
  pez = new Pez();
  enemigo = new Enemigo();
  pantalla = new Pantalla();
 }
 
void dibujar(){
  mar.dibujarFondo();
  mar.dibujar();
  pez.dibujar();
  enemigo.dibujar(1,2); 
  pantalla.dibujar();

 }
void actualizar(){
  mar.actualizar();
 }
 
void movimiento(){
  pez.moverPez(); 
  pez.movimiento();
  enemigo.movimiento();
 }
 void pressed(){
  pantalla.pressed(); 
 }
}
