PImage obra;

int filas = 30;
int cantidadBase = 6;
boolean modoOscuro = false; 

void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
  stroke(255);
}

void draw() {
  if (modoOscuro) {
    background(0);
    fill(255); 
    noStroke();
  } else {
    background(255);
    fill(0); 
    stroke(255);
  }

  image(obra, 0, 0, 400, 400); 

  float posY = 400;

  for (int fila = 0; fila < filas; fila++) {
    int cantidad = cantidadBase + fila * 3;

    float espaciado = 400.0 / cantidad;
    float diametroBase = espaciado;

    posY -= diametroBase;

    float anchoTotal = cantidad * espaciado;
    float posX = 400 + (400 - anchoTotal) / 2 + espaciado / 2;

    filaDeCirculos(posX, posY, diametroBase, cantidad, espaciado);
  }
}


void filaDeCirculos(float xInicial, float y, float diametroBase, int cantidad, float espaciado) {
  for (int i = 0; i < cantidad; i++) {
    float x = xInicial + i * espaciado;

    float diametro;

   
    if (mouseX > 400) {
      float aumento = map(mouseX, 400, 800, 0, 10);
      diametro = diametroBase + aumento;
    } else {
      diametro = diametroBase;
    }

    circle(x, y, diametro);
  }
}


void mousePressed() {
  modoOscuro = !modoOscuro; 
}
