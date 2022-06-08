//https://youtu.be/iGPMbcPy8uk
void setup() {
  size(550, 550); 
   
  posx= width-450;
  posy= height-450;
}
void draw() {
  background(250);
  
  text ( "Centralizar con tecla 'R'.", 10, 30, 20);
   
  println (enELBoton (50, height-100, 100, 50));

   //boton izquierdo
  fill (0, 250, 100); 
  noStroke();
  rect (0, 500, 70, 80); 
  
  //boton derecho
  fill (0, 100, 200);
  noStroke();
  rect (480, 500, 100, 80);
  
  
  misFiguras ();
 
} 
  void misFiguras (){
  float relleno = map(0, posY, width, 255, 400);
  posY++;
  for (int cir= width/1-50; cir > 0; cir-=15)
  if (cir%2 == 0){
  stroke (relleno);
  fill (random (20));
  ellipse (width/2, height/2,cir,cir);
 } else {
  stroke(100, relleno , 100);
  strokeWeight (7);
  noFill ();
  rect (posx, posy, 350, 350);
  }
 }
 
 void mousePressed (){
   if ( enELBoton (0, 500, 70, 80)) { //boton verde
     posy += 20;
 }
   if (enELBoton (480, 500, 100, 80)) { //boton azul
     posx += 20;
   }
 }
 
 void keyPressed (){
   if (key == 'r' || key == 'R');
   posx= width-450;
   posy= height-450;
   rect (posx, posy, 350, 350);
 }
 
