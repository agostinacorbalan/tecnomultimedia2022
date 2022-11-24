class Mar{ // esta clase contiene el arreglo de burbujas
  int cant;
  int x, y;
  int[] max;
  Burbuja[] burbujas;
  
 Mar (int n){ //setup de la clase
  cant= n;
  max = new int [cant];
  burbujas = new Burbuja [cant];
 
  for (int i = 0; i <max.length; i++){ //llamar al constructor/dar valor inicial
   max[i]  = int(random(10));
   }
  for (int i = 0; i < burbujas.length; i++){
   burbujas[i] = new Burbuja( 1, 2, 3); 
  }
 }
 void actualizar(){
  for (int i = 0; i < burbujas.length; i++){
   burbujas[i].actualizar();
  } 
 }
 void dibujar(){
  for (int i = 0; i < burbujas.length; i++){
   burbujas[i].dibujar();
  }  
 } 







}
