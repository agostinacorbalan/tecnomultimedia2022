class Game {
  int estado;
  Mar mar;
  Pez pez; 
  Enemigo enemigo;
  //Portada portadaPrincipal, portadaMedio, portadaFinal;
  Pantalla pantalla;
 // Burbuja [] burbuja;
 // Portada [] portada;
 Game (){
  //llamo a los constructores
  mar = new Mar(1);
  pez = new Pez();
  enemigo = new Enemigo();
 /* this.portadaPrincipal = new Portada (this, width/2, height/2, width/10, "Principal");
  this.portadaFinal = new Portada (this, width - width/10, height - height/10, width/10, "Reiniciar");
  this.pantalla = new Pantalla(this.portadaPrincipal, this.portadaFinal , this.burbuja);
  this.burbuja = new Burbuja[3];
  this.estado = 0; */
 }
 
void dibujar(){
  mar.dibujarFondo();
  mar.dibujar();
  pez.dibujarPez();
  enemigo.dibujar();
 // this.pantalla.dibujar(this.estado);

 }
void actualizar(){
  mar.actualizar();
  enemigo.actualizar();
 }
 
void movimiento(){
  pez.moverPez(); 
  pez.movimiento();
 }
//void pressed(){
//  this.pantalla.pressed();
//}
}
