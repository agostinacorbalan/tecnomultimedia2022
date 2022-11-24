class Juego{ //clase contenedora 
String estado;
PImage inicio, perder, ganar, fondo;
int i, vida;
int x, y;
 Personaje personaje;
 Basura basura;
 Mar mar;
Juego(){ 
  personaje = new Personaje();
  basura = new Basura();
  mar = new Mar(1);
  vida = 1;
  fondo = loadImage ("mar.png");
  inicio = loadImage ("inicio.jpg");
  perder = loadImage ("perder.jpg");
  ganar = loadImage ("ganar.jpg");
  estado = "inicio";
  x= width;
  y= height;
}
  void colision(){
    for (i=0; i<5; i++){
      if(dist(personaje.Px(), personaje.Py(), basura.posXb(i), basura.posYb(i)) < 90){
       estado = "perdiste"; 
    }
   }
  }  
  void ganaste(){
    if (personaje.Px() > 690) 
    estado = "ganaste";
  }
   
   void dibujar(){
   if(estado == "inicio"){
     player.play();
     image (inicio, 0, 0, width, height);
    if (keyPressed)
      estado = "nivell";
   }else
     if ( estado =="nivell"){
     dibujarFondo();
     mar.dibujar();
     mar.actualizar();
     personaje.dibujar();
     basura.dibujar();
     colision();
     ganaste();
   } else
     if (estado == "perdiste"){
       player.pause();
     image (perder, 0, 0, width, height);
     if (mousePressed){
       estado = "inicio";
       personaje = new Personaje();
       basura = new Basura();  
     } 
   } else if (estado == "ganaste"){
       player.pause();
      image (ganar, 0, 0, width, height);  
   }
 }
 void teclado(){
  personaje.teclado(); 
   }  
   
  void dibujarFondo(){
   image(fondo, 0, 0, x, y); 
  }
  
  void actualizar(){
    mar.actualizar();
 }
}
