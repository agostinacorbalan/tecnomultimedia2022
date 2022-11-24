class Basura{ //comportamiento del los anillos, donde cargan 5 imagenes de la misma, un arreglo
 Obstaculo [] trash;
 int i;
  Basura(){
 trash = new Obstaculo[5];  
 for (i=0; i<5; i++)
  trash[i] = new Obstaculo ((i*115)+60);
  }
    
void dibujar (){
  for (i=0; i<5; i++)
   trash[i].dibujar();
  }
  
 float posXb (int i){
  return trash[i].Px();  
 }
 
 float posYb (int i){
  return trash[i].Py(); 
 }  
}
