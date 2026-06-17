void circuloBlanco (color relleno) {

  float centro = DiagonalMouse();
  // i < == es la cantidad de circulos horizontales
  // ii < == cantidad de circulos verticales
  for (int i=0; i<14; i++) {
    for (int ii=0; ii<14; ii++) {

      int posX = 415 + i*28;
      int posY = 20 + ii*28;

      float diagonal = abs((i - ii) - centro);

      float tam = map(diagonal, 0, 18.4, 8, 28);

      float intensidad = map(diagonal, 0, 18.4, 1.0, 0.2);

      float rojo = red(relleno) / intensidad;
      float verde = green(relleno) / intensidad;
      float azul = blue(relleno) / intensidad;

      fill(rojo, verde, azul);
      circle(posX, posY, tam);
    }
  }
}
void keyPressed() {

  if (key == ' ') {

    relleno = color(255);
    seguimiento = false;
    rotar = false;
    angulo = 0;
  }
}
