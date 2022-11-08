//Agostina Corbalan 91301/2 - Comision 2

//¡PROBLEMA CON LAS BURBUJAS (solo se muestra una y se carga diferentes cada vez)!
//Lo mismo con los "enemigos", solo carga una imagen.

/* import processing.sound.*;
SoundFile musica; */
Game g;

void setup (){
  g = new Game();
  size (600, 400);
/*  musica = new SoundFile (this, "mar.mp3");
  musica.loop();  */
}

void draw (){
 g.dibujar(); 
 g.actualizar();
 g.movimiento();
}
