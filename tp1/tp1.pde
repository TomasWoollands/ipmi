//Woollands Tomas 85190/6
PImage casa;
void setup(){
 casa = loadImage("casa.jpg");
 size(800,400);
 background(39,223,242);
 
 //cesped
 noStroke();
 fill(50,170,85);
 rect(400,296,800,120);
 
 //casa
 fill(216,70,70);
 rect(650,219,100,100);
 
 //ventanas
 fill(255);
 rect(723,268,15,20);
 rect(663,268,15,20);
 
 //puerta
 fill(77,52,0);
 rect(688,276,20,43);
 fill(0);
 ellipse(704,298,5,5);
 
 //techo
 fill(77,52,0);
 triangle(630,240,700,165,770,240);
 
 //arbol 1
 fill(67,42,0);
 noStroke();
 rect(472,244,20,60);
 fill(60,170,40);
 ellipse(482,214,50,70);
 
 //arbol 2
 fill(67,42,0);
 noStroke();
 rect(422,244,20,60);
 fill(60,170,40);
 ellipse(432,214,50,80);
 
 //nubes
 noStroke();
 fill(255);
 ellipse(664,116,40,50);
 ellipse(694,116,40,45);
 ellipse(724,116,49,50);
 ellipse(442,52,40,50);
 ellipse(476,52,40,45);
 ellipse(514,52,49,50);
 

 image(casa,0,0,400,400);
}
