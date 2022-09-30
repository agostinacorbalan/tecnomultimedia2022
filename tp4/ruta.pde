class Ruta {
  Obstaculo obs1, obs2;
  Auto auto1;
  Lugar lugar1;
   Ruta() {
  //inicializo los objetos, es decir, llamo a los constructores   
  obs1 = new Obstaculo();
  obs2 = new Obstaculo();
  auto1 = new Auto();
  lugar1 = new Lugar();
   }
    
 void actualizar (){
  lugar1.moverLugar();
  auto1.actualizar();
  auto1.moverAuto ();
}
 void dibujar (){
 obs1.dibujar ();
 obs2.dibujar ();
 auto1.dibujar ();
 }
}
