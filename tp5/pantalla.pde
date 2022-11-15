class Pantalla { //¡¡QUEDA UN VERSION ESTATICA DEL PEZ!!
 Portada inicio, instruciones, creditos;
 Juego juego; 
 int portada;
 PFont fuente;
 
 Pantalla(){
 juego = new Juego();
  inicio = new Portada ( "AQUAR.IUM", 60, 150, 90 , "Presiona P para jugar\n\nPresiona I para saber como jugar\n\nPresiona C para ver los creditos", 150, 268, 15);
  creditos = new Portada ("Hecho por", 200, 150, 40, "Agostina Corbalan, N°91301/2", 90, 190, 30);
  instruciones = new Portada ( "AQUAR.IUM", 200, 110, 30, "Presionando el mouse, te moves de arriba hacia abajo.\nNo dejes que la contaminacion te toque.\nNo permitas que te alcance.", 40, 150, 20);
  fuente = createFont ("fuente.vlw", 10);
}
  
 void dibujar(){
  textFont(fuente);
  textSize (15);
   if (portada == 0){
     background(0);
     inicio.dibujar();
   } 
   if (portada == 1){
     background(0);
     instruciones.dibujar();
   }
   if (portada == 2){
     background (0);
     creditos.dibujar();
   }
   if (portada == 3){
     juego.dibujar();
     juego.movimiento();
   } 
   if (portada != 0){
     fill(250);
     text ("Presiona A para volver", 2, 390);
   }
 }
  
  void pressed(){
    if (portada == 0){
      if (key == 'p' || key == 'P'){
        portada = 3;
      }
      if (key == 'i' || key == 'I'){
        portada = 1;
      }
      if (key == 'c' || key == 'C'){
        portada = 2;
      }
    } else if (portada != 0){
      if (key == 'a' || key == 'A'){
        portada = 0;
      }
     }
   }
 }
