//Sabrina Cardo Perez 
//Legajo 125542/7
//Comision 2
//TP 1 - Casa Curutchet


PImage foto;
 void setup(){
   size(800,400);
   foto = loadImage("casa_curutchet.jpg"); 
 }
 
 void draw(){
  background (50,60,70);
   image (foto,0,0,400,400); 

   
  
 fill( 144,144,140);
quad(410,302,400,385,799,385,779,297); // piso de cemento
    
    
  fill(169);
  rect(400,342,900,200); //vereda
  
    
    
    fill(240, 240, 235);
     quad(773,0,749,33,799,26, 799,0); //pared de arriba chiquita
    rect(405,102,10,241); //columna que da inicio a la casa
  
  
     fill(190, 210, 225);
         quad(784,0, 400,0, 400,92,649,125);  //cielo
  
     
         fill(98,98,93);
         rect(432,258,130,44); //fondo detras de la puerta
         
       
           
            fill(170,170,165);
  quad(800,26,800,340,651,310,649,84); //pared de al lado
  quad(571,253,571,321,540,302,541,254); //pared detras de la columna
  quad(571,253,571,321,651,310,651,257); //pared de la puerta del garaje
 quad(416,258,435,258,435,316,416,331); //pared al lado de la puerta
  
  
  fill(198,198,188);
   quad(651,268,578,271,578,320,651,309); //garaje puerta
  

  
       fill(240, 240, 235); 
  rect(415,153,32,105); //modulo izquierdo
  rect(773,153,32,105); //modulo derecho
  
  
 fill(124,124,120);
 quad(795,36,654,102,515,80,570,36); //techo
 
 

  fill (205,205,200);
     rect(590,44,8,299); //columna interior izquierda
      rect(763,40,8,303); //columna interior derecha
      rect(532,74,8,250); //columna de atras izquierda
   

      
 fill(240, 240, 235); //blanco
quad(447,97,461,110,529,110,529,97); // planta alta parte tridimencional de atras 1


fill(175,175,168); //sombra
quad(447,97,447,162,461,162, 461,110); //planta alta parte tridimencional del costado izquierdo
quad( 529,97,523,110,523,142,529,142); //planta alta parte tridimencional del costado derecho


 fill(240, 240, 235); //blanco
quad(529,97,529,110,611,110,611,97); // planta alta parte tridimencional de atras 2


fill(175,175,168); //sombra
quad(534,97,540,110,540,142,534,142); //planta alta parte tridimencional del costado izquierdo 2
quad(611,97,604,110,604,142,611,142); //planta alta parte tridimencional del costado derecho 2


 fill(240, 240, 235); //blanco
quad(611,97,611,110,693,110,693,97); //planta alta parte tridimencional de atras 3


fill(175,175,168); //sombra
quad(616,97,622,110,622,142,616,142); //planta alta parte tridimencional del costado izquierdo 3
quad(693,97,682,110,682,142,693,142); //planta alta parte tridimencional del costado derecho 3


 fill(240, 240, 235); //blanco
quad(693,97,693,110,773,110,773,97); //planta alta parte tridimencional de atras 4


fill(175,175,168); //sombra
quad(698,97,703,110,703,142,698,142); //planta alta parte tridimencional de atras izquierda 4
quad(773,97,764,110,764,142,773,142); //planta alta parte tridimenncional de atras derecha 4
 


noFill();
      rect(447,97,326,45);     //plata alta
      
      
          fill (60, 60, 60); //color de las rejas
      rect(447,142,326,30); //rejas planta alta
      rect(417,153,30,20); //rejas del modulo izquierdo
 rect(773,153,23,20); //rejas modulo derecho
 
 
 
      fill(240, 240, 235);
      rect(447,164,326,20);   //separacion entre planta media y planta 
      
      
    
      noFill();
      rect(447,184,326,67); //planta media
      
    
  
          fill(180, 195, 195);
      rect (447,223,326,35); //ventana de vidrio
      rect(418,223,29,25); //ventana de vidrio modulo izquierdo
      rect(773,223,19,25); //ventana de vidrio modulo derecho
      
      
      fill(240,240,235);
       rect(456,189,2,60); //linea que atraviesa la ventana 1
       rect(548,184,3,74); //linea que atraviesa la ventana 2
       rect(575,184,3,74); //linea que atraviesa la ventana 3
       rect(672,184,3,74); //linea que atraviesa la ventana 4
       rect(708,184,3,74); //linea que atraviesa la ventana 5
       
      
      line(418,213,447,213); //separacion de ventana con vidrio y sin vidrio - modulo izquierdo
     line(773,213,791,213); //separacion de ventana con vidrio y sin vidrio - modulo derecho
     line(791,213,791,189); //ventana sin vidrio, larga
     line(791,189,772,189); //ventana sin vidrio, larga
     
      
      fill(220,220,215);
          rect(447,213,326,10); // separacion de ventana sin vidrio y con vidrio
      rect(447,248,326,10);  //pequeña separacion de la planta media y planta baja
  
  
      line(416,180, 446,180); //division entre rejas y ventana sin vidrio - modulo izquierdo
      line(772,180,799,180); //division entre rejas y ventana sin vidrio - modulo derecho
      
      
        rect(418,189,40,2); //ventana con linea parte de arriba - modulo izquierdo
          line(418,213,418,189); //ventana sin vidrio 1 - modulo izquierdo
     
     
      fill(240, 240, 235);
  rect (529,97,5,161);     //division de la ventana
  rect (611,97, 5, 161);   //division de la ventana 2
rect (693,97, 5, 161);    //division de la ventana 3


          rect(447,97,4,161); //inicio de las ventanas - despues de los modulos
          rect(769,97,4,161); //final de las ventanas - antes del modulo derecho
          
          
          
          rect(449,209,323,4); //separacion entre ventana y planta media
       
          
          
      fill(255);
      rect (570,26,228,10); //techo de adelante
      quad(570,26,570,36,515,80,515,73); //costado del techo
      
      
      noFill();
      rect(415,307,384, 36); //rejas de abajo
      
      
      fill(255);
      rect(453,274,67,69); //pared de la puerta
      
      
      fill(205, 127, 60);
      rect(469,274,35,69); //puerta
      
      
      fill(255);
      rect(515,275,5,68); //marco lateral derecho
          rect(449,275,5,68); //marco lateral izquierdo
      rect(449,274,71,5); //marco parte de arriba
  
      
      
    println("x:");
    println(mouseX);
    println("y:");
    println(mouseY);
     
 }
 
