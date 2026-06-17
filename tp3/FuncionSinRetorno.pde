void FuncionSinRetorno () {
  circuloNegro();
}

void circuloNegro() {

  fill(0);
  // i < == es la cantidad de circulos horizontales
  // ii < == cantidad de circulos verticales
  for (int i=0; i<14; i++) {
    for (int ii=0; ii<14; ii++) {
      circle(415 + i*28, 20 + ii*28, 28);
    }
  }
}
