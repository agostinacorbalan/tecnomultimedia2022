
void setup (){
size (970, 500);
 imageuno = loadImage ("fondo.png");  
}

void draw (){
  image (imageuno, 0, 0, 1000, 520);
  strokeWeight (0);
  font = loadFont ("textb.vlw");
  textFont (font);
  textSize (50);
  fill (255);
  text ("         ANIMALES FÁNTASTICOS  \n                    y dónde encontrarlos", texts, posY);
  posY--;
  velx = 4;
 
//Dirección
 textSize (30); 
 fill (255);
 text ("Dirigido por \n     DAVID YATES", textA, posYs);
 posYs--;
 text ("Escrito por  \n     J.K ROWLING",  textA, posY2);
 posY2--;
 text ("Producido por \n    DAVID HEYMAN, p.g.a.", textA, posY3);
 posY3--;
 text ("Productor ejecutivo \n    TIM LEWIS", textA, posY10);
 posY10--;
 text ("Musica por\n     JAMES NEWTON HOWARD", textA, posY11);
 posY11--;
  text ("Una presentacion de WARNER BROS. PICTURES", 190, posY9);
 posY9--;
 text ("Una producción de HEYDAY FILMS", 270, posY12);
 posY12--;

 
 //CAST
 text ("EDDIE REDMAYNE como Newt", textx, posY4);
 posY4--;
 text ("KATHERINE WATERSTON como Tina", textx, posY5);
 posY5--;
 text ("DAN FOGLER como Jacob", textx, posY6);
 posY6--;
 text ("ALISON SUDOL como Queenie", textx, posY7);
 posY7--;
 text ("EZRA MILLER como Credence", textx, posY8);
 posY8--;
 text ("ZOE KRAVITZ como Lestrange", textx, posY14);
 posY14--;
 text ("JOHNNY DEPP como Grindelwald", textx, posY13);
 posY13--;

 
 //Boton 
 fill(random(30));
 circle (45, 480, 100);
 textSize (15);
 fill (255);
 text ("REINICIAR", 10, 475);

}
 void mousePressed (){
 if (mouseY> 45 && mouseX<480);
 if (d < r);
 texts = 87;
 textx = 260;
 textA = 350;
 posY = 400;
 posYs = 840;
 posY2 = 920;
 posY3 = 1000;
 posY4 = 1600;
 posY5 = 1630;
 posY6 = 1660;
 posY7 = 1690;
 posY8 = 1720;
 posY9 = 2250;
 posY10 = 1080;
 posY11 = 1160;
 posY12 = 2500;
 posY13 = 1750;
 posY14 = 1780;
}
