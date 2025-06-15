// Lasarte Agustin 
// Comi 1

// Profeosor, no supe como recrear la imagen que me toco y antes que hacer un copy de una ia preferi decir con la verdad. Saludos

PImage obra;

void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
}

void draw() {
  background(250);
  image(obra, 0, 0, 400, 400);
  grillaGuia(414, 790, 0, 10);
  stroke(0);
  line(width / 2, 0, width / 2, height);
  
  circulosEnLinea(600, 350, 6, 62, 61);
  circulosEnLinea(600, 300, 9, 41, 41);
  circulosEnLinea(600, 265, 12, 31, 30);
  circulosEnLinea(600, 238, 15, 25, 24);
  circulosEnLinea(600, 215, 18, 21, 19);
  circulosEnLinea(600, 195, 21, 18, 15);
  circulosEnLinea(600, 180, 24, 16, 12);
  circulosEnLinea(600, 162, 27, 14, 10);
  
}

void circulosEnLinea(float centroX, float centroY, int numCirculos, float distancia, float diametro) {
  float inicio = centroX- ((numCirculos - 1) * distancia) / 2.0;

  for (int i = 0; i < numCirculos; i++) {
    float x = inicio + i * distancia;
    noStroke();
    fill(0);
    ellipse(x, centroY, diametro, diametro);
  }

  stroke(0);
  float x1 = inicio;
  float x2 = inicio + (numCirculos - 1) * distancia;
  line(x1, centroY, x2, centroY);
}
