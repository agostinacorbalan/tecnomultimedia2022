//Agostina Corbalan 91301/2 - Comision 2

//¡PROBLEMA CON LAS BURBUJAS (solo se muestra una y se carga diferentes cada vez)!
//Lo mismo con los "enemigos", solo carga una imagen.

import ddf.minim.*;
Minim minim;
AudioPlayer player;
Contenedor game;

void setup (){
  minim = new Minim (this);
  player = minim.loadFile ("a.mp3");
  game = new Contenedor();
  size (600, 400);
  player.play();
  player.loop();
}

void draw (){
 game.dibujar(); 
 game.actualizar();
 game.movimiento();
 game.pressed();
}
