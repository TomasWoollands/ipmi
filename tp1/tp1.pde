//Woollands Tomas 85190/6
PImage foto;

void setup(){
 size(800,400);
 background(7, 17, 115);
 foto = loadImage("arte.jpg");

}

void draw(){
  
  image(foto,0,0,400,400);
  
  //circulo rosa
  
  fill(234,123,129);
  noStroke();
  rect(400,0,50,169);  
  
  //rectsngulo verde
  
  fill(2,128,117);
  rect(452,101,90,50);
  
  //triangulo azul
  
  fill(2,44,120);
  triangle(450,20,493,106,450,101);
  
  //cuadrado rojo
  
  fill(228,13,21);
  quad(440,0,488,109,555,73,555,0);
  
  //triangulo azul oscuro
  
  fill(8,1,79);
  triangle(555,73,505,101,604,105);
  
  //rectangulo azul
  
  fill(6,41,161);
  quad(548,0,554,72,604,104,604,0);
  
  //rectangulo marron
  
  fill(37,1,29);
  rect(603,0,47,15);
  
  //rectangulo naranja
  
  fill(230,79,26);
  rect(630,2,8,13);
  
  //rectangulo rojo opaco
  
  fill(197,34,39);
  rect(650,0,38,15);
  
  //cuadrado amarillo
  
  fill(202,164,1);
  rect(688,0,18,15);
  
  //cuadrado verde
  
  fill(1,95,105);
  rect(706,0,12,15);
  
  //rectangulo verde agua
  
  fill(186,220,187);
  rect(718,0,33,15);
  
  //rectangulo azul
  
  fill(1,54,184);
  rect(751,0,55,160);
  
  //quad verde marino
  
  fill(1,172,153);
  quad(604,27,603,13,687,15,677,47);
  
  //quad amarillo 
  
  fill(224, 219, 31);
  quad(668,44,673,24,684,16,683,49);
  
  //triangulo amarrillo opaco
  
  fill(224, 238, 141);
  triangle(604,29,604,77,636,37);
  
  //quad amarilla al lado del triangulo
  fill(225, 213, 53);
  quad(637,37,604,79,659,69,671,46);
  
  //naranja abajo del quad amarillo
  fill(247, 111, 73);
  quad(604,81,604,73,657,70,647,82);
  
  //figuras al lado derecho del triangulo azul cielo
  fill(63, 11, 75);
  rect(642,64,40,23); 
  rect(642,85,5,140);
  fill(234, 202, 3);
  rect(647,85,20,140);
  fill(235, 39, 13);
  rect(671,46,30,20);
  fill(217, 113, 18);
  triangle(662,64,671,48,671,65);
  fill(119, 184, 164);
  rect(681,66,12,150);
  fill(209, 78, 70);
  rect(675,66,7,150);
  fill(4, 1, 93);
  rect(658,157,18,65);
  fill(255, 101, 63);
  rect(658,133,10,15);
  fill(39, 152, 160);
  rect(665,69,7,15);
  fill(248, 104, 95);
  rect(665,84,7,50);
  fill(94, 83, 102);
  rect(653,65,1,25);
  fill(245, 143, 105);
  rect(655,82,10,20);
  fill(231, 29, 51);
  rect(655,102,10,20);
  fill(9, 31, 133);
  rect(655,122,10,12);
  fill(229, 161, 2);
  rect(675,186,7,22);
  
 
  //quad rojo
  fill(213, 33, 44);
  quad(751,159,800,159,800,226,777,223);
  
  //traingulo bordo
  fill(99, 0, 20);
  triangle(751,159,750,221,777,223);
  
  //quad negro
  fill(15, 3, 15);
  quad(687,229,750,221,800,226,800,242);
  
  //quad naranja
  fill(241, 100, 46);
  quad(689,230,800,243,800,269,687,251);
  
  //continuacion naranja
  fill(241, 100, 46);
  quad(620,241,689,237,686,273,620,266);
  
  //quad negro largo
  fill(15, 3, 15);
  quad(630,242,800,270,800,293,630,264);
  
  //quad rojo grande
  fill(192, 13, 32);
  quad(631,263,775,289,775,800,632,800);
  
  //quad rectangulo negro 
  fill(15, 3, 15);
  quad(725,299,800,285,800,800,725,800);
  
  //quad salmon
  fill(243, 73, 74);
  quad(743,299,800,286,800,800,743,398);
  
  //quad amarillo boca
  fill(236, 176, 0);
  quad(594,372,631,383,631,400,594,400);
  
  //traingulo naranja 
  fill(228, 76, 0);
  triangle(631,315,631,366,509,336);
  
  //quad amarillo abajo 
  fill(212, 216, 67);
  quad(508,352,592,372,592,400,508,398);
  
  //rectangulo amarillo grande izq
  fill(218, 207, 37);
  rect(439,156,60,245);
  
  //quad naranja inferior izq
  fill(229, 58, 28);
  quad(400,266,429,274,429,322,400,311);
  
  //rect naranja 
  fill(229, 58, 28);
  rect(400,306,12,110);
  
  // quad naranja superior izq
  fill(230, 86, 25);
  quad(410,215,429,215,429,266,410,261);
  
  //rect rosa izq
  fill(205, 127, 141);
  quad(410,169,429,169,428,215,410,215);
  
  //amarillo claro 
  fill(214, 225, 94);
  quad(602,271,631,277,631,315,602,319);
  
  //lila claro
  fill(198, 114, 147);
  quad(713,16,751,16,750,46,713,50);
  
  //cian quad
  fill(84, 161, 151);
  quad(731,34,751,35,751,47,730,49);
  
  //quad amarillo grande
  fill(237, 225, 3);
  quad(693,53,750,47,750,170,693,201);
  
  // cian continuacion
  fill(176, 218, 178);
  quad(730,49,751,46,751,171,717,175);
  
  //azul rectangulos
  fill(3, 11, 109);
  rect(699,75,10,113);
  rect(700,174,49,47);
  
  //piso cian
  fill(157, 186, 164);
  stroke(199, 223, 210);
  quad(702,173,750,170,750,180,740,183);
  
  //rect amarillo raro
  fill(239, 247, 161);
  noStroke();
  quad(708,183,740,189,740,213,708,213);
  
  //piel quad
  fill(242, 110, 87);
  quad(699,189,709,182,709,201,699,201);
  
  //rectsngulo mesa
  fill(216, 86, 52);
  quad(517,224,674,209,751,216,591,235);
  
  //continuacion mesa negro
  fill(3, 0, 13);
  quad(685,225,749,216,749,224,687,229);
  quad(591,236,686,225,688,230,592,242);
  triangle(685,228,687,236,619,238);
  quad(591,236,591,261,601,262,600,235);
  stroke(0);
  strokeWeight(2);
  line(517,224,591,236);
  
  //patas
  fill(221, 98, 64);
  noStroke();
  quad(516,225,591,237,591,240,518,230);
  stroke(195, 62, 45);
  line(517,225,517,332);
  noStroke();
  fill(9, 8, 26);
  quad(518,231,525,231,522,332,517,333);
  fill(45, 7, 48);
  quad(524,251,559,255,560,261,524,254);
  fill(9, 8, 26);
  rect(592,255,10,20);
  
  //abajo de la mesa
  fill(206, 56, 3);
  quad(601,242,619,240,620,266,601,263);
  
  //continuacion
  fill(225, 160, 4);
  quad(539,234,589,240,590,260,539,251);
  
  //otra parte
  fill(226, 73, 6);
  quad(525,231,539,234,538,252,525,250);
  
  // mas abajo en la mesa
  fill(226, 181, 2);
  quad(525,256,570,265,565,325,523,333);
  
  //rect azul chico
  fill(18, 9, 62);
  rect(545,264,5,37);

  
  //amarillo raro mesa
  fill(226, 231, 85);
  quad(559,262,591,269,591,321,535,331);
  
  //al lado del rect azul
  fill(226, 181, 2);
  triangle(549,285,564,290,565,262);
  triangle(556,261,565,263,553,279);
  
  //rectangulo largo fino amarillo
  fill(223, 212, 60);
  quad(512,156,532,156,532,222,510,223);
  quad(510,223,515,223,515,333,507,334);
  
  // verde adentro de amarillo
  fill(1, 112, 79);
  rect(444,243,55,100);
  
  //tapar cuadro verde
  fill(222, 208, 47);
  quad(473,241,499,239,499,259,491,259);
  triangle(482,345,499,344,499,320);
  
  //
  fill(235, 147, 49);
  rect(544,103,15,118);
  triangle(643,211,557,219,557,192);
  
  //triangulo celeste marino
  fill(1, 115, 201);
  triangle(643,209,643,81,560,191);
  
  //traingle rosa
  fill(242, 122, 108);
  triangle(642,82,604,81,604,131);
  quad(559,103,603,104,604,131,559,191);
  
  //celeste dentro de rosa\
  fill(22, 206, 198);
  rect(555,103,5,88);
  
  //azul dentro de rosa
  fill(12, 4, 90);
  rect(563,103,5,77);
  
  //detalles de triangulo rosa
  fill(129, 177, 153);
  rect(604,81,6,15);
  fill(9, 1, 110);
  rect(604,96,6,13);
  rect(595,104,15,9);
  fill(160, 169, 200);
  rect(597,107,3,5);
  
  //rect rojo arriba
  fill(205, 28, 36);
  rect(687,16,27,35);
  fill(231, 139, 100);
  rect(700,37,2,15);
  
  //naranja al lado del rojo
  fill(238, 130, 65);
  rect(683,17,4,33);
  
  //minis rect amarillo claro
  fill(215, 224, 133);
  quad(682,211,682,195,739,208,739,215);
  fill(223, 231, 109);
  rect(659,238,7,7);
  
  //quad naranja inferior
  fill(200, 60, 7);
  quad(508,374,564,365,592,370,592,399);
  rect(508,374,84,30);
  
  //azul detras del rect amarillo grande
  fill(7, 17, 115);
  rect(429,152,10,25);
  rect(429,152,30,4);
 
  
   println("mouseX: "+ mouseX + " / mouseY "+ mouseY); 
}
