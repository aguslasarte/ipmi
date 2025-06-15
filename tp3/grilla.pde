void grillaGuia(float xInicio, float xFinal, float yInicio, float tam) {
  rectMode(CENTER);
  stroke(180);
  noFill();

  int columnas = int((xFinal - xInicio) / tam);
  int filas = int(height / tam);

  for (int y = 0; y < filas; y++) {
    for (int x = 0; x < columnas; x++) {
      float posX = xInicio + x * tam + tam / 2;
      float posY = yInicio + y * tam + tam / 2;
      rect(posX, posY, tam, tam);
    }
  }
}
