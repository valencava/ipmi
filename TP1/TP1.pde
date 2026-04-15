//Temptation of St. Anthony 1505 - 1506 El Bosco (Jheronimus van Aken)
PImage Bosco;

void setup(){
 size (800,400);
 Bosco = loadImage ("foto.jpg");
}

void draw(){
 background(200);
 
 //fondo
 fill(#f3aa5d);
 rect(400,0,400,400);
 
 
 fill(34.9,14.5,10.1);
 rect(400,163,400,400);
 
fill(168,180,174);
beginShape();
vertex(614,500);
vertex(870,217);
vertex(614,30);
vertex(108,166);
endShape();

 fill(#f3aa5d);
 rect(400,0,400,167);
 
 fill(#2d2e29);
 rect(400+0,24,120,150);
 
// vigas 
 fill(43,33,22);
 rect(400+102,-25,50,220);
 
 fill(43,33,22);
 rect(400+0,0,190,28);
 
 fill(#b57e44);
 rect(400+0,-5,190,28);
 
 fill(#b57e44);
 rect(420+102,-25,30,220);
 
 //personaje
 //piernas
 fill(#d98f50);
 triangle(554,326,654,327,648,334);
 
 fill(#d98f50);
 triangle(645,361,722,322,715,341);
 
 fill(#202123);
 beginShape();
 vertex(580,321);
 vertex(581,326);
 vertex(649,324);
 vertex(643,302);
 vertex(645,269);
 vertex(632,269);
 vertex(625,303);
 endShape();
 
 
 fill(#202123);
 beginShape();
 vertex(672,343);
 vertex(716,322);
 vertex(710,319);
 vertex(710,286);
 vertex(700,264);
 vertex(686,266);
 vertex(701,312);
 vertex(670,335);
 endShape();
 
//cuerpo
noStroke();
fill(#ac3136);
ellipse(400+297,185,80,80);

noStroke();
fill(#ac3136);
ellipse(400+271,274,50,50);


fill(#1f1a14);
triangle(400+197,254,400+234,254,400+210,282);
fill(#1f1a14);
triangle(400+197,254,400+234,254,400+227,164);



noStroke();
fill(#ac3136);
beginShape();
vertex(400+224,289);
vertex(400+248,300);
vertex(400+265,303);
vertex(400+294,296);
vertex(760,220);
vertex(726,158);
vertex(658,156);
vertex(400+272,166);
vertex(622,179);
vertex(618,201);
vertex(622,212);
endShape();

fill(#e8aa7b);
rect(400+284,178,20,20,1,1,70,70);

//cabeza

fill(#e68b5c);
ellipse(400+238,170,70,70);

fill(#62453d);
beginShape();
vertex(400+211,154);
vertex(400+183,159);
vertex(400+163,165);
vertex(400+150,173);
vertex(400+132,199);
vertex(400+153,176);
vertex(400+158,172);
vertex(400+170,167);
vertex(400+211,170);
endShape();

fill(#62453d);
beginShape();
vertex(400+217,167);
vertex(400+169,171);
vertex(400+106,150);
vertex(400+168,174);
vertex(400+221,179);
endShape();


fill(#fff6da);
beginShape();
vertex(400+131,146);
vertex(400+156,151);
vertex(400+124,188);
vertex(400+102,176);
endShape();

fill(#322419);
triangle(400+223,158,400+235,154,400+234,160);

fill(#212117);
triangle(400+246,248,400+294,227,400+274,281);
fill(#212117);
triangle(400+246,248,400+246,146,400+294,227);

fill(#738ea3);
triangle(400+203,146,400+243,101,400+281,149);

fill(#738ea3);
rect(400+239,82,10,35);

fill(#7d4b26);
beginShape();
vertex(400+243,84);
vertex(400+252,53);
vertex(400+246,16);
vertex(400+255,51);
vertex(400+250,70);
vertex(400+260,64);
vertex(400+270,57);
vertex(400+290,62);
vertex(400+303,64);
vertex(400+291,62);
vertex(400+264,62);
vertex(400+262,66);
vertex(400+247,74);
vertex(400+245,83);
endShape();

fill(0);
rect(400+290,65,1,60);

fill(#71302e);
ellipse(400+290,134,10,10);

fill(#4f322e);
ellipse(400+230,159,7,7);


// Pintura y texto de mouse
 image(Bosco, 0, 0, 400, 400);
fill(255);
textSize(30);
 text(mouseX + " - " + mouseY, mouseX, mouseY);
}
