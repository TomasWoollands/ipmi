float contador;
float tono;
float cuenta;
PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
PFont Got;
int pantalla;
int posYBoton;
int posXBoton;
int tamYBoton;
int tamXBoton;
int posX;
int posY;
int tam;
int tamT;
int posXT;
String text1;
int textoX;
int textoAmpliar;


void setup(){
  
size(640,480);
tono = 1;
cuenta = 3;
contador = 0;
posXBoton = 260;
posYBoton = 372;
tamYBoton= 40;
tamXBoton = 120;
posX = 0;
posY = 0;
tam = 25;
text1="El primer episodio piloto que se filmó \nfue un absoluto desastre que\n jamás salió a la luz.\n De hecho, era tan malo que los productores\n tuvieron que cambiar a varios \nactores clave\n y volver a grabar casi todo desde cero.\n Por ejemplo, Daenerys Targaryen no\n iba a ser Emilia Clarke,\n sino la actriz Tamzin Merchant, y Catelyn Stark\n iba a ser interpretada por Jennifer Ehle.";
textoX=width;
textoAmpliar=10;


contador = 0;
foto1 = loadImage("inicio.jpg");
foto2 = loadImage("pantalla 1.jpg");
foto3 = loadImage("pantalla 2.jpg");
foto4 = loadImage("pantalla 3.jpg");
foto5 = loadImage("pantalla 4.jpeg");
Got = createFont("Medieval.ttf",50);
textFont(Got,60);
textAlign(CENTER);

}

void draw(){
  
 if(contador<=0){
 image(foto1,0,0,640,480);
 
 // efecto respiracion
 if (tono>255||tono<1) {
cuenta *= -1;
}
tono += cuenta;
  
 //TITULO
 fill(217, 139, 20,tono);
 textSize(70);
 text("Game  Of  Throne\ncuriosidades",width/2,height/4);
  
  //boton
  fill(180,139,20);
  stroke(255,0,0);
  rect(posXBoton,posYBoton,tamXBoton,tamYBoton);
  textSize(20);
  fill(255,4,4);
  text("Iniciar",width/2,400);
 }
  

  
  
  
   if(mouseX > posXBoton && mouseY > posYBoton && mouseX < posXBoton+tamXBoton && mouseY < posYBoton+tamYBoton){
      
  //boton efecto al pasar por encima
  fill(217,139,20);
  stroke(255,0,0);
  rect(posXBoton,posYBoton,tamXBoton,tamYBoton);
  textSize(15);
  fill(255,4,4);
  text("Iniciar",width/2,400);       
    } else {
    fill(217,139,20);
  }
  
  
  if(contador>=1){
    contador++;
  }
  
  
  //pantallas
 if (contador>=1 && contador<500 ) {
    
   
   image(foto2,0,0,640,480);
   textSize(20);
  fill(255,4,4);
  textAlign(CENTER);
  text("El famoso e imponente Trono de Hierro fue forjado con\n cientos de espadas de utilería. Si te fijás bien en su estructura,\n una de las empuñaduras soldadas al asiento es una réplica\n exacta de Glamdring, la mítica espada que usa Gandalf en\n las películas de El Señor de los Anillos. Un gran guiño de los\n diseñadores a la obra de Tolkien, que fue la mayor\n influencia de George R.R. Martin.",320,posX);
  
  
  if (posX <= 80) {  // le digo donde frenarse y suma hasta llegar a 150
     posX+=2;
    }
   
   
 }else if (contador>=500 && contador<1000 ){
   

   
   image(foto3,0,0,640,480);    
   textSize(textoAmpliar);
   fill(251, 255, 0);
   textAlign(CENTER);
   text(text1,width/2,height/4);
   if(textoAmpliar < 20){
   textoAmpliar++;
   
   
     
   }
   
   
 }else if (contador>=1000 && contador<1500 ){
   image(foto4,0,0,640,480);
   
    textSize(20);
  fill(255,4,4);
  textAlign(CENTER);
  text("Los idiomas Dothraki y Alto Valyrio no son balbuceos al azar.\n HBO contrató al lingüista David J. Peterson para que creara\nlenguas completamente funcionales a partir de las pocas palabras\n que Martin había puesto en las novelas. Desarrolló una gramática\nestricta y más de 3,000 palabras por idioma. De hecho, el impacto\nfue tan masivo que hoy en día podés aprender Alto Valyrio\n de forma real en aplicaciones como Duolingo.",posY,100);
  
  
  if (posY <= width/2) {  // le digo donde frenarse y suma hasta llegar a 150
     posY+=5;
    }   
  
 
  }else if (contador>=1500  ){
   image(foto5,0,0,640,480);
   if (tono>255||tono<1) {
cuenta *= -1;
}
tono += cuenta;
   
   
   textSize(50);
  fill(255,4,4,tono);
  textAlign(CENTER);
  text("FIN",width/2,height/2);
  
     
   //boton
   fill(217,139,20);
  stroke(255,0,0);
  rect(posXBoton,posYBoton,tamXBoton,tamYBoton);
  textSize(15);
  fill(255,4,4);
  textAlign(CENTER);
  text("REINICIAR",width/2,400);
  
  if(mouseX > posXBoton && mouseY > posYBoton && mouseX < posXBoton+tamXBoton && mouseY < posYBoton+tamYBoton){
      
  //boton efecto al pasar por encima
  fill(217,139,20);
  stroke(255,0,0);
  rect(posXBoton,posYBoton,tamXBoton,tamYBoton);
  textSize(15);
  fill(255,4,4);
  text("reiniciar",width/2,400);       
    } else {
    fill(217,139,20);
  }
 
    
  
  
 }


 
  
}
void mouseClicked(){
  
  if(mouseX > posXBoton && mouseY > posYBoton && mouseX < posXBoton+tamXBoton && mouseY < posYBoton+tamYBoton){
    
    contador++;
    posX = -265;
    posY = -265;
       
  reiniciar();
  }
}

void reiniciar(){
  if (contador>=1500 ){
    contador = 0;
    textoAmpliar=0;
   } 
}
