int posY;
float x;
float y;
int posy, posx;
boolean enELBoton (int px, int py, int ancho, int alto){
  boolean estoyEn = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoyEn;
}
