  //WOOLLANDS TOMAS 85190/6
//  https://youtu.be/EgvfFllaAF4
int tamCelda;
int col;
int fila;
float angulo;
int preMouseX;
float uno;
float dos;
float tres;
PImage foto1;
boolean boton;
float valorAlpha;
void setup() {
  size(800, 400);
  boton = false;
  
  col=12;
  fila=7;
  tamCelda=width/col;
  foto1 = loadImage("03.jpg");
  angulo = 0;
}

void draw() {
 background(255);
 image(foto1,0,0,410,400);
 
 //boton
   if(boton==false){
uno = 0;
dos = 0;
tres = 0;

  }else{
    frameRate (15);
    uno = random(255); 
       }
       
 push();
 
 translate(-35,-35);  // mueve la grilla para no superponerse 
 translate(620, 223);      // cambia  el centro
rotate(radians(angulo));
 translate(-620, -223);    // la grilla no se desplaze
 
 grilla(tamCelda, col, fila);
 
 pop();
 
 translate(620, 223);       
rotate(radians(angulo));
translate(-620, -223);

 grilla(tamCelda, col, fila);
println(mouseX,mouseY);

}
 void grilla(int tamCelda, int cantColumnas, int cantFilas) {
  for (int i = cantColumnas/2; i<cantColumnas+1; i++) {
    for (int j = 0; j<cantFilas; j++) {
           
      if (esPar(i, j )) {
       
       strokeWeight(dos);
        
        circulosConcentricos(tamCelda*i+tamCelda/2 , tamCelda*j+tamCelda/2);
        
      } else {
        strokeWeight(tres);
        circulosConcentricos(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2);

      }
      
    }
  }
}

boolean esPar(int valor1, int valor2) {
  if ((valor1+valor2)%2==0) {

    return true;
  } else {
    return false;
  }
}





void circulosConcentricos (int posX, int posY) {
  
     float distan = dist(mouseX,mouseY,posX,posY);
      float tono= distan*255/dist(width,height,0,0);
       valorAlpha = map(tono,distan,150, 100, 255);
       
  for (int i=11; i>0; i--) {
    if (i%2==0) {
      
       if (boton==true){
     fill(255,valorAlpha);
     } else {
       fill(255);
     }
    } else {
      
      fill(random(uno));
    }
    
    int tamCir=i*6;
    push();
    translate(posX, posY);
    circle(0, 0, tamCir);

    pop();
  }
}
 


void mouseClicked(){
  boton = true;
  dos = random(0,3);
 
}
void mousePressed(){
  preMouseX=mouseX;
}
void mouseDragged(){
 
  
  if(mouseX>preMouseX){
angulo++;} else{
angulo--;}

}


void keyPressed(){
 boton = false;
 angulo = 0;
}
