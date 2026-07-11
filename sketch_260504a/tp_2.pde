PFont buycat;

PImage logo, fondo, ayano, yandere;
PImage escuela, cocina, drama;
PImage corazones, sempai, osana, osanaFondo;

color cFondo = color(252, 139, 255);
color cTitulo = color(254, 152, 255);
color botones = color(10, 10, 10);
color textoCol = color(255);

int estado, segundos;
float Alpha, y = 0, x = 0;

//clubes
float anX = -14, anY = 322; // drama
float posX = 620, posY = 43;
// cocina

//yandere
float pX = 5, pY = 18;

//sempai
float ejey = 700;

//textos animados
float ejeX = 620;
// pantalla 2
float textoX = -400; // osana
float textoY = -250; //sempai

//opacidad general
float opacidad = 0;

//transiciones entre pantallas
int sigEstado = 0;
boolean transPros = false;
float opacidadTrans = 0;

void setup() {
  size(640, 480);
  background(cFondo);

  buycat = createFont("Buycat", 75);
  textFont(buycat);
  estado = 0;

  logo = loadImage("yandere-logo.png");
  fondo = loadImage("home.png");
  ayano = loadImage("ayano-normal.png");
  escuela = loadImage("escuela.png");
  cocina = loadImage("club de cocina.jpg");
  drama = loadImage("club de drama.jpg");
  corazones = loadImage("corazones-fondo.png");
  sempai = loadImage("senpai.png");
  osana = loadImage("osana.png");
  yandere = loadImage("ayano-yandere.png");

  Alpha = 255;
}

void draw() {
  segundos = millis()/1000;
  println("Estado: " + estado + " | Seg: " + segundos);
  //------------------------ transicion entre pantallas

  if (!transPros) {
    if (estado == 2 && segundos >= 20) {
      transPros = true;
      sigEstado = 3;
    } else if (estado == 3 && segundos >= 33) {
      transPros= true;
      sigEstado = 4;
    } else if (estado == 4 && segundos >= 43) {
      transPros= true;
      sigEstado = 5;
    } else if (estado == 5 && segundos >= 58) {
      transPros = true;
      sigEstado = 6;
    }
  }

  //------------------------ pantalla inicial

  if (estado == 0) {
    background(cFondo);
    image(fondo, x, y, 700, 640);
    image(logo, 80, 10, 450, 170);

    fill(0);
    textSize(40);
    text("Press E", 240, 450);
  }

  //------------------------ ayano

  if (estado == 2) {

    background(cFondo);

    tint(255, opacidad);
    image(ayano, 30, 18, 190, 470);

    if (opacidad < 255) {
      opacidad += 5;
    }
    noTint();

    if (ejeX > 279) {
      ejeX -= 10;
    }

    noStroke();
    fill(229, 51, 114, 160);
    rect(250, 65, 355, 355, 10);

    fill(255);
    textSize(20);
    text("Ayano Aishi es la protagonista.", ejeX, 90);
    text("Ayano padece una enfermedad", ejeX, 135);
    text("inexplicable e incurable.", ejeX, 155);
    text("En resumen, esta condicion", ejeX, 195);
    text("la deja con una perpetua sensacion", ejeX, 220);
    text("de estar vacia, hueca e incompleta.", ejeX, 245);

    text("Nunca ha podido experimentar", ejeX, 288);
    text("satisfaccion, placer o felicidad.", ejeX, 310);
    text("A medida que crecia, aprendio a", ejeX, 350);
    text("hacerse pasar por una", ejeX, 375);
    text("persona normal.", ejeX, 400);
  }

  //------------------------ academia

  if (estado == 3) {

    background(cFondo);

    image(escuela, 0, 0, 640, 480);

    noStroke();
    fill(botones, 200);
    rect(90, 120, 465, 255, 10);



    fill(255);
    textSize(20);
    text("Ayano asiste a una academia pos-secundario", 100, 164);
    text("llamada High Scholl Akademi.", 100, 184);

    text("Es una de las escuelas mas prestigiosas", 100, 220);
    text("de la ciudad.", 100, 240);
    text("Al estar inspirada en las escuelas japonesas", 100, 280);
    text("esta divido en diferentes clubs de actividades", 100, 300);
    text("como puede ser, arte, cocina, drama, etc.", 100, 320);


    image(cocina, posX, posY, 100, 130);
    if (posX > 531) {
      posX -= 5;
    }

    image(drama, anX, anY, 100, 130);
    if (anX < 24) {
      anX += 5;
    }
  }

  //------------------------ sempai

  if (estado == 4) {
    background(cFondo);

    tint(255, 70);
    image(corazones, 0, 0, 640, 480);
    noTint();

    fill(botones, opacidad);
    rect(254, 65, 360, 350, 10);
    if (opacidad < 160) {
      opacidad += 5;
    }

    if (ejey > 19) {
      ejey -= 12;
    }
    if (ejey < 19) {
      ejey = 19;
    }
    
    image(sempai, 25, ejey, 190, 470);


    if (textoY < 0) {
      textoY += 12;
    }
    if (textoY > 0) {
      textoY = 0;
    }

    fill(255);
    textSize(20);
    text("Su nombre es Taro Yamada o Senpai.", 267, 96 + textoY);
    text("Es un estudiante mas avanzado.", 267, 135 + textoY);

    text("Luego de un contacto fisico con el", 267, 180 + textoY);
    text("por primera vez, Ayano logro", 267, 199 + textoY);
    text("sentir emociones muy fuertes", 267, 220 + textoY);
    text("que desaparecieron tan pronto", 267, 240 + textoY);
    text("se separaron.", 267, 260 + textoY);

    text("Desde ese momento, Ayano se", 267, 300 + textoY);
    text("volvio irremediablemente", 267, 320 + textoY);
    text("adicta a la presencia de Taro.", 267, 340 + textoY);

    text("Pero no todo era color de rosa...", 267, 390 + textoY);
  }

  //------------------------ osana
  if (estado == 5) {

    background(255, 112, 113);
    image(osana, posX, 18, 190, 470);

    if (posX > 410) {
      posX -= 5;
    }

    noStroke();
    fill(253, 251, 239, opacidad);
    rect(31, 76, 350, 350, 10);
    if (opacidad < 255) {
      opacidad += 5;
    }

    fill(0);
    textSize(19);
    text("Osana y Senpai han sido amigos", textoX, 111);
    text("muy cercanos desde que eran chicos.", textoX, 131);
    text("Siempre van juntos caminando hacia", textoX, 181);
    text("la escuela", textoX, 201);

    text("Suele tratar muy rudo y grosero con", textoX, 239);
    text("Senpai, pero lo hace porque no quiere", textoX, 259);
    text("que sepa sus sentimientos hacia el", textoX, 279);
    text("Hay una teoria en la escuela, que", textoX, 319);
    text("dice que si te confesas en el ", textoX, 339);
    text("cerezo detras de la escuela, un,", textoX, 359);
    text("viernes, los dos se amaran para", textoX, 379);
    text("siempre...", textoX, 399);
    if (textoX < 25) {
      textoX += 20;
    }
  }

  //------------------------ yandere

  if (estado == 6) {

    background(23, 22, 22);
    if (segundos > 65) {

      tint(255, opacidad);
      image(yandere, 30, 18, 190, 470);
      if (opacidad < 255) {
        opacidad += 5;
      }

      noTint();
    } else {

      tint(255, opacidad);
      image(ayano, 30, 18, 190, 470);

      if (opacidad < 255) {
        opacidad += 5;
      }
      noTint();
    }

    fill(225);
    rect(268, 65, 325, 220, 10);

    fill(160, 16, 16);
    textSize(19);
    text("Si Osana se le confiesa a Senpai", 280, 90);

    text("Ayano perderia a Senpai", 280, 110);
    text("para siempre", 280, 130);
    text("Y Ayano esta no va a dejar", 280, 170);
    text("que eso no pase.", 280, 190);
    text("Va a hacer hasta lo imposible  ", 280, 230);
    text("para evitarlo, incluso si eso  ", 280, 250);
    text("significa lastimarla o aun peor...", 280, 270);

    fill(225);
    rect(310, 339, 200, 50, 10);

    fill(0);
    textSize(26);
    text("VOLVER", 362, 375);
  }


  //------------------------ transicion entre pantallas, efecto

  if (transPros) {
    fill(0, opacidadTrans );
    rect(0, 0, width, height);

    if (opacidadTrans < 255 && estado != sigEstado) {
      opacidadTrans += 15;
    } else {
      estado = sigEstado;
      opacidad = 0;
      opacidadTrans -= 15;
      if (opacidadTrans <= 0) {
        opacidadTrans = 0;
        transPros = false;
      }
    }
  }
}


void keyPressed() {
  if (key == 'e' || key == 'E') {
    if (estado == 0) {
      estado = 2;
      opacidad = 0;
    }
  }
}

void mousePressed() {
  if (estado == 6) {
    if (mouseX >= 310 && mouseX <= 510 && mouseY >= 339 && mouseY <= 389) {
      estado = 0;
      ejeX = 620;
      posX = 620;
      anX = -14;
      ejey = 700;
      opacidad = 0;
      textoX= -400;
      textoY = -250;
      transPros= false;
      opacidadTrans = 0;
    }
  }
}
