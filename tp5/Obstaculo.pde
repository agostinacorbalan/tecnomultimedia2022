class Obstaculo { 
 float x, y, tam, vel;
 PImage obstaculo;

Obstaculo( int y_){
  tam= 100;
  x = random (400, 1030);
  y= y_;
  obstaculo= loadImage ("anillos.png");
  vel = random(10,15);  
}

void dibujar(){
 x = x -random(vel);
 image(obstaculo, x, y, tam, tam-20);
if (x < -100){
  x= random (800,1030);
  vel= random (10,15);
 }
}

float Px(){
return x;
}
float Py(){
  return y;
  } 
}
