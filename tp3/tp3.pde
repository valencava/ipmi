
//https://www.youtube.com/watch?v=2418onDTeFU

PImage og;
color relleno;
float angulo = 0;
boolean rotar = false;
boolean seguimiento = false;
// click izquierdo cambia color
// click derecho rota todo el proyecto
// click del medio logra que la linea del medio se mueva junto al mouse
// espacio devuelve todo a la normalidad

void setup () {
  size (800, 400);
  og = loadImage("22.jpg");
  relleno = color(255);
}


void draw () {
  background(250);
  image(og, 0, 0, 400, 400);


  pushMatrix();

  translate(width/2, height/2);
  rotate(angulo);
  translate(-width/2, -height/2);

  FuncionSinRetorno();
  circuloBlanco(relleno);

  popMatrix();

  if (rotar == true) {
    angulo = angulo += 0.1;

    if (angulo >= 2*PI) {
      angulo = 0;
      rotar = false;
    }
  }
}

void mouseClicked() {
  relleno = color(random(255), random(255), random(255));
}

void mousePressed() {

  if (mouseButton == RIGHT) {
    angulo = 0;
    rotar = true;
  }

  if (mouseButton == CENTER) {
    seguimiento = true;
  }
}

float DiagonalMouse() {

  if (seguimiento == true) {
    return map(mouseX, 415, 779, -13, 13);
  }
  return 0;
}
