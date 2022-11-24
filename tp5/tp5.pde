//Corbalan, Agostina -Comision 2, 91301/2
//Profesores: Matías Jauregui Lorda y Tobias Albirosa

Juego game;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup(){
  size(800,600);
  game = new Juego();
  minim = new Minim (this);
  player = minim.loadFile ("a.mp3");
}

void draw(){
 game.dibujar();
}

void keyPressed(){
  game.teclado();
}
