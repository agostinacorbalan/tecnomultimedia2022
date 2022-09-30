class Obstaculo {
  
  Obstaculo() {
  
 }  
 
 void dibujar (){
   
  pushStyle();
  rect(170, 151, 70, 80);
  fill(0, 10, 150);
  
  pushStyle();
  rect(370, 280, 70, 100);
  fill(100, 0, 130);
  popStyle();

  pushStyle();
  rect(530, 70, 71, 100);
  fill(0, 0, 0);
  popStyle();

  popStyle();
 }
}
