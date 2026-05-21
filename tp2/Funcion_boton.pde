boolean mostrarInicio = true;
boolean mostrarFinal = true;


void boton( int rectX, int rectY, int rectAncho, int rectAlto, int tipo) {

  if (tipo == 1) {

    if (mostrarInicio == true) {
      image (behelit, rectX, rectY, rectAncho, rectAlto);
    }

    if (mouseX > rectX && mouseX < rectX + rectAncho &&
      mouseY > rectY && mouseY < rectY + rectAlto) {

      if (mousePressed) {
        contadorAhora = true;

        mostrarInicio = false;
        mostrarFinal = true;
      }
    }

    if (contadorAhora ) {
      contador++;
    }
  }


  if (tipo == 2) {

    if (mostrarFinal == true) {
      image (behelit, rectX, rectY, rectAncho, rectAlto);
    }

    if (mouseX > rectX && mouseX < rectX + rectAncho &&
      mouseY > rectY && mouseY < rectY + rectAlto) {

      if (mousePressed) {

        contador = 1;
        contadorAhora = false;

        guts2contador = 0;
        cascacontador = 0;
        grifcontador = 0;

        transp = 0;

        posX = 0;
        posY = 0;

        cascaX = 242;
        cascaY = -400;

        grifX = 0;
        grifY = 10;
        grifAncho = 0;
        grifAlto = 0;

        mostrarInicio = true;
        mostrarFinal = false;
      }
    }
  }
}
