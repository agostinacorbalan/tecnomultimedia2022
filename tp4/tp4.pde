//Corbalan Agostina 91301/2
//llevar el auto en la ruta sin tocar los obstaculos

Ruta ruta;

void setup (){
 ruta = new Ruta ();
 size (900, 400);
}

void draw (){
ruta.actualizar();
ruta.dibujar();
}
