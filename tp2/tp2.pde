// Agustin Lasarte
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagenf;
String texto1;
String texto2;
String texto3;
String texto4;
String textoBot;
int posX;
int posY;
PFont t;
int alphaValue = 0;
float tamanoTexto = 5;
color botonColor;
color botonResaltado;
boolean botonPresionado = false;

void setup() {
  size(640, 480);
  // IMAGENES
  imagen1 = loadImage("diapo1.png");
  imagen2 = loadImage("imagen2.png");
  imagen3 = loadImage("imagen3.png");
  imagen4 = loadImage("imagen4.png");
  imagenf = loadImage("imagenf.png");


  // FUENTE
  t = loadFont("centurygothic.vlw");
  textFont(t, 32);

  // TEXTO
  texto1 = "Un grupo de científicos se \nembarcan en un viaje \nespacial para encontrar un \nlugar con las condiciones \nnecesarias para reemplazar \na la Tierra y comenzar una \nnueva vida allí.";
  texto2 = "El elenco está encabezado por Matthew McConaughey \ncomo Cooper, Anne Hathaway como Brand, \nJessica Chastain como Murph \ny Michael Caine como el profesor Brand.";
  texto3 = "La película Interstellar se estrenó el \n5 de noviembre de 2014 en los Estados Unidos. \nSu director fue el aclamado Christopher Nolan.";
  texto4 = "La película Interstellar ganó el Óscar a \nlos Mejores Efectos Visuales y también \nfue reconocida con el Premio Empire a \nla Mejor Película y el Premio BAFTA \na los Mejores Efectos Visuales.";
  textoBot = "REINICIAR";

  posX = 700;
  posY = 0;
  botonColor = color(100);
  botonResaltado = color(150);
}

void draw() {
  posY = -frameCount ;

  println(frameCount);
  background(255);
  if (frameCount / 3 < 150) {
    image(imagen1, 0, 0, width, height);
    textSize(21);
    text(texto1, 350, posY+450);

  }
  posY = frameCount;
  if (frameCount / 3 >= 150 && frameCount / 3 < 300) {
    image(imagen2, 0, 0, width, height);
    fill(237, 114, 43);
    text(texto2, 60, 900 - posY , width, height);


  }
  posX = frameCount;
  if (frameCount / 3 >= 300 && frameCount / 3 < 450) {
    image(imagen3, 0, 0, width, height);
    textSize(23);
    fill(20, 65, 130, alphaValue);
    text(texto3, 1250 - posX, 220);


    if (alphaValue < 255) {
      alphaValue += 5;
    }
  } else {

    alphaValue = 0;
  }

  if (frameCount / 3 >= 450 && frameCount / 3 < 600) {
    image(imagen4, 0, 0, width, height);
    fill(206, 21, 194);
    textSize(tamanoTexto);
    textAlign(CENTER, CENTER);
    text(texto4, width / 2, height / 2);


    if (tamanoTexto < 23) {
      tamanoTexto += 0.2;
    }
  } else {
    tamanoTexto = 5;
    textAlign(LEFT, TOP);
  }

  if (frameCount / 3 >= 600 && frameCount / 3 < 750) {
    image(imagenf, 0, 0, width, height);

   
    fill(botonPresionado ? botonResaltado : botonColor);
    rectMode(CENTER);
    rect(width / 2, 380, 150, 50, 10); // Rectángulo del botón

   
    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    text(textoBot, width / 2, 380);
    textAlign(LEFT, TOP);
    rectMode(CORNER); 
  }
}

void mousePressed() {
  if (frameCount / 3 >= 600 && frameCount / 3 < 750) {
    float botonX = width / 2;
    float botonY = 380;
    float botonAncho = 150;
    float botonAlto = 50;

    if (mouseX > botonX - botonAncho / 2 && mouseX < botonX + botonAncho / 2 &&
        mouseY > botonY - botonAlto / 2 && mouseY < botonY + botonAlto / 2) {
      botonPresionado = true;
    }
  }
}

void mouseReleased() {
  if (botonPresionado) {
    frameCount = 0;
    alphaValue = 0;
    tamanoTexto = 5;
    botonPresionado = false;
  }
}


  
  
  
  
  
  
 
