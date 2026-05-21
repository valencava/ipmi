PImage guts_1;
PImage guts_2;
PImage griffith_1;
PImage griffith_2;
PImage casca_1;
PImage titulo;
PImage fondo_inicio;
PImage fondo;
PImage alcon;
PImage naso;
PImage behelit;

//int de boton
color rectColor;
color rectSeleccion;

//int contador
int contador;
boolean contadorAhora;
int guts2contador;
int cascacontador;
int grifcontador;

//int de funciones de imagenes
int transp;
int tamX;
int tamY;
int posX;
int posY;

//casca
int cascaX;
int cascaY;

//gifith
int grifX;
int grifY;
int grifAncho;
int grifAlto;

//texto
PFont mifuente;
int textoAlpha;
int textoX;
int textoY;

void setup() {

  size (640, 480);
  guts_1 = loadImage("guts_1.png");
  guts_2 = loadImage("guts_2.png");
  griffith_1 = loadImage("griffith_1.png");
  griffith_2 = loadImage("griffith_2.png");
  casca_1 = loadImage("casca_1.png");
  titulo = loadImage("titulo_berserk.png");
  fondo_inicio = loadImage("fondo_inicio.jpg");
  alcon = loadImage("alcon.png");
  naso = loadImage("naso.png");
  behelit = loadImage ("behelit.png");

  // boton
  rectColor = color(0);
  rectSeleccion = color(255);

  //contadores
  contador = 1;
  contadorAhora = false;
  guts2contador = 0;
  cascacontador = 0;

  //casca
  cascaX = 242;
  cascaY = -400;

  //grif
  grifX = 0;
  grifY = 10;
  grifAncho = 0;
  grifAlto = 0;
  grifcontador = 0;


  //transparencia
  transp = 0;

  //texto
  mifuente = loadFont ("H2mkpB-18.vlw");
  textFont (mifuente);
  textoX = 700;
  textoY = 600;
}

void draw() {

  image (fondo_inicio, 0, 0, 640, 480);

  boton(245, 165, 150, 150, 1);

  //armado y preparado de la caja y el texto
  if (contador > 1 && contador < 4800) {

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);
    textSize(13);
  }

  //primera diapositiva
  if (contador > 1 && contador < 800) {

    image(titulo, 114, 40, 400, 250);

    if (textoAlpha < 255) {
      textoAlpha += 3;
    }

    fill(255, textoAlpha);
    text("Berserk es un manga de fantasia oscura creado por Kentaro Miura. La historia mezcla guerra, violencia, tragedia, filosofia y elementos sobrenaturales en un mundo medieval brutal donde la ambicion, el destino y la supervivencia son temas centrales.", 20, 360, 600, 100);
  }


  //segunda diapositiva
  if (contador > 800 && contador < 1600) {

    if (contador == 801) {
      textoX = 700;
    }

    transp ++;
    tint(255, transp);
    image(guts_1, 300, 10, 400, 500);

    if (textoX > 20) {
      textoX -= 4;
    }

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);
    text("La historia comienza mostrando a Guts como un guerrero solitario que recorre el mundo cazando monstruos y enfrentandose a personas corruptas. Poco a poco el manga retrocede en el tiempo y explica como llego a convertirse en alguien tan violento y desconfiado.", textoX, 360, 600, 100);
  }


  //tercera diapositiva
  //tercera diapositiva
  if (contador > 1600 && contador < 2400) {

    if (contador == 1601) {
      textoX = -600;
    }

    image(guts_2, posX, posY, 250, 350);

    if (posX < 200) {
      posX++;
    } else {
      guts2contador++;

      if (guts2contador > 250) {
        posY++;
      }
    }

    if (textoX < 20) {
      textoX += 4;
    }

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);
    text("GUTS: Es el protagonista. Un guerrero enorme, extremadamente fuerte y experto con la espada. Aunque parece frío y agresivo, en realidad es alguien marcado por años de trauma y violencia. Gran parte de la historia gira alrededor de cómo intenta encontrar un motivo para vivir y conectar con otras personas.", textoX, 360, 600, 100);
  }
  //cuarta diapositiva
  if (contador > 2400 && contador < 3200 ) {
    image(casca_1, cascaX, cascaY, 250, 350);

    if (cascaY < 30) {
      cascaY+=2;
    } else {
      cascacontador ++;
    }

    if (cascacontador > 300) {
      cascaX+=2;
    }

    if (contador == 2401) {
      textoX = 700;
    }

    if (textoX > 20) {
      textoX -= 4;
    }

    fill(0);
    rect(0, 340, 680, 140);
    fill(255);
    text("Casca es una de las comandantes de la Banda del Halcon. Es inteligente, fuerte y muy respetada dentro del grupo. Al principio tiene una relacion complicada con Guts, pero poco a poco ambos empiezan a entenderse mejor. Es un personaje importante porque muestra el lado mas humano y emocional de la historia, ademas de estar atrapada entre los ideales de Griffith y la personalidad de Guts.", textoX, 360, 600, 100);
  }

  // quinta diapositiva
  if (contador > 3200 && contador < 4000 ) {
    image(griffith_2, grifX, grifY, grifAncho, grifAlto);

    if (grifAncho < 250) {
      grifAncho +=2;
    }

    if (grifAlto < 350) {
      grifAlto += 2;
    } else {
      grifcontador++;
    }


    if (contador == 3201) {
      textoX = -600;
    }

    if (textoX < 20) {
      textoX += 4;
    }


    fill(0);
    rect(0, 340, 680, 140);
    fill(255);
    text("Griffith es el lider de la Banda del Halcon. Tiene muchisimo carisma, inteligencia y talento militar. Inspira a todos los que lo rodean y parece capaz de lograr cualquier cosa. Sin embargo, detras de su apariencia elegante y tranquila existe una ambicion gigantesca. Griffith es uno de los personajes mas complejos del manga porque constantemente se cuestiona cuanto esta dispuesto a sacrificar para alcanzar su sueño.", textoX, 360, 600, 100);
  }

  //sexta diapositiva
  if (contador > 4000 && contador < 4800 ) {
    image(alcon, 200, 0, 320, 340);

    if (contador == 4001) {
      textoY = 600;
    }

    if (textoY > 360) {
      textoY -= 3;
    }

    fill(0);
    rect(0, 340, 680, 140);
    fill(255);
    text("Con el tiempo, la historia deja de ser una simple fantasia medieval y se convierte en un mundo mucho mas oscuro y sobrenatural, donde el sufrimiento, la ambicion y la traicion cambian para siempre a sus personajes. Mientras intentan conservar su humanidad en medio de un mundo cruel, surge una gran pregunta: ¿que sera de Guts, Casca y Griffith cuando sus destinos finalmente choquen entre si?.", 20, textoY, 600, 100);
  }


  //fin :)
  if (contador > 4800) {

    boton(245, 165, 150, 150, 2);


    fill(255);
    textSize(40);
    text("FIN", 255, 120);
    image(naso, 389, 244, 300, 300);
  }

}
