class Lugar {
  PImage im1;
  int px;
  int py;
  
   Lugar(){
   im1 = loadImage("ruta.png");  
   }
  
  void dibujar (){
   image (im1, px, py);
 }
  void moverLugar (){
    image (im1, px + im1.width, py);
    px = px -4;
    if(px < -im1.width)
    {
      px = 0;
    }
 }
}
