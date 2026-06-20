//WOOLLANDS TOMAS 85190/6
//https://youtu.be/ddEzMbVFQ7A
int tamCelda;
int col;
int fila;
int angulo;
int preMouseX;
float uno;
float dos;
float tres;
PImage foto1;
boolean boton;
void setup() {
  size(800, 400);
  boton = false;
  
  col=12;
  fila=20;
  tamCelda=width/col;
  foto1 = loadImage("03.jpg");
 
}

void draw() {
 background(255);
 image(foto1,0,0,410,400);
 
 
   if(boton==false){
uno = 0;
dos = 0;
tres = 0;
  }else{
    frameRate (15);
    uno = random(255); 
       }
       
 push();
 translate(35,-35);    
 grilla(tamCelda, col, fila);
 pop();

 grilla(tamCelda, col, fila);
 

}
 void grilla(int tamCelda, int cantColumnas, int cantFilas) {
  for (int i = cantColumnas/2; i<cantColumnas; i++) {
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

  for (int i=11; i>0; i--) {
    if (i%2==0) {
       
     fill(255);
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
//frameRate ++;
}

void mouseDragged(){
  tres = random(0,3);
}

void keyPressed(){
 boton = false;
}
