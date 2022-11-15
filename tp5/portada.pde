class Portada { // 
 int posX1, posY1, posX2, posY2, tam1, tam2;
 String texto1, texto2;
 Portada ( String texto1_, int posX1_, int posY1_, int tam1_, String texto2_, int posX2_, int posY2_, int tam2_){
  texto1 = texto1_;
  posX1 = posX1_;
  posY1= posY1_;
  tam1 = tam1_;
  texto2 = texto2_;
  posX2 = posX2_;
  posY2= posY2_;
  tam2=tam2_;
  }
 
 void dibujar(){
   fill(250);
   textSize (tam1);
   text (texto1, posX1, posY1);
   textSize (tam2);
   text (texto2, posX2, posY2);
 }
} 
