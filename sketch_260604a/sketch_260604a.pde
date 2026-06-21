//Sabrina Cardo Perez//
//https://youtu.be/2fh7B7pOWkU
//Tp 3 - Ciclo For//
//Legajo: 125542/7 //



PImage referencia;
boolean animar = false;
boolean degradado = false;
float movimiento = 0;

void setup(){
  
  colorMode(HSB,360,100,100);
  size(800,400);
  referencia = loadImage("15 sin marca de agua.png");
  FondoYReferencia(referencia); 

}
  
//---------------------------------------------------------------
void keyPressed(){

  if(key == ' '){
     animar = true;
    movimiento = 20;
  }
  if ( reiniciar() == true ) {
    animar = false;
    movimiento = 0;
    degradado = false;
  }
}


//---------------------------------------------------------------
void draw(){
  
  color fondo = color(90,8,9);
  color circulos = color(30,4,79);
  
  background(fondo);
  image(referencia,0,0,400,400);


 //movimiento hacia arriba 
  
          if(animar){
           movimiento --;
        }
        
        if(movimiento < -28){
          movimiento = 0;
        }
  
  
// estiramiento 

  float estiramiento;
  
  if(mouseX > 300){
  estiramiento = map(mouseX, 0, width, 0, 10);
  }
  else{
    estiramiento = 1;
  }
  
  
// Lado derecho

push();
translate(estiramiento, 0);
  
      
      for( int y = 1000; y > 0; y -=27){
      noStroke();
      
// degradado de colores en los circulos 
        int segundos = (millis()/1000)%10;
            println(segundos);
     
       
      if( segundos > 5){
      color r = color(random (0,360),100,100);
      fill (r);
      }
      else if(degradado){
        float m = map ( y , 0, 800 , 0, 360 );
        color c = color( m, 100, 100 );
        fill(c);
      }
    
       else{
      fill(circulos);
      }
      
      
      
         circle(613 - estiramiento * 1.2,y - movimiento ,27);//circulos del medio 2 derec
         circle(642 - estiramiento * 1.0,y + movimiento ,25); //circulos del costado derecho 1
         circle(670 - estiramiento * 0.8,y - movimiento,23); //circulos del costado derecho 2
         circle(699 - estiramiento * 0.6,y + movimiento,21); //circulos del costado derecho 3
         circle(726 - estiramiento * 0.4,y - movimiento,19); //circulos del costado derecho 4
         circle(756 - estiramiento * 0.2,y + movimiento ,16); //circulos del costado derecho 5
}
    pop();
    
  
    
// Lado izquierdo  

    push();
    translate(- estiramiento, 0); 
    
        //circulos del costado izquierdo 
        for( int alto = 1000; alto > 0; alto -=27){
          
          int segundos = (millis()/1000)%10;
                 println(segundos);
                 
              if( segundos > 5){
              color r = color(random (0,360),100,100);
              fill (r);
              }
              
              else if(degradado){
               float m = map ( alto, 0, 800, 0, 360 );
               color c = color( m, 100, 100 );
                fill(c);
              }
              else{
              fill(circulos);
              }
              
             
              
            circle(585 + estiramiento * 0.1 ,alto + movimiento ,27); //circulos del medio 1 izqu
            circle(556 - estiramiento * 0.4,alto - movimiento,25); //1
            circle(526 - estiramiento * 0.6,alto + movimiento,23); //2
            circle(497 - estiramiento * 0.8,alto - movimiento ,21); //3
            circle(467 - estiramiento * 1.0,alto + movimiento,19); //4
            circle(439 - estiramiento * 1.2,alto - movimiento,16); //3


}
  pop();
 
}


//--------------------------------------------------------------- 
void mouseClicked(){
degradado = !degradado;

}
  
//--------------------------------------------------------------- 
  void FondoYReferencia(PImage img) {
  color fondo = color(90,8,9);
  background(fondo);
  image(img, 0, 0, 400, 400);
}
  
//--------------------------------------------------------------- 
  
 boolean reiniciar() {
  if (key == 'r' || key == 'R') {
    return true;  
  } else {
    return false; 
  }
}
  
  
  
 
