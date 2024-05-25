//WOOLLANDS TOMAS 85190/6
PFont fuente;
PImage kratos1;
PImage kratos2;
PImage kratos3;
PImage kratos4;
PImage kratos5;
int marcaEnElTiempo;
int estado;
int x;
float vel;
float posX;
float posY;
float tono, cuenta;
boolean izquierda;

void setup(){
  size( 640, 480 );
  fuente = loadFont("Ebrima-Bold-42.vlw");
  kratos1 = loadImage("kratos1.jpeg");
  kratos2 = loadImage("kratos2.jpg");
  kratos3 = loadImage("kratos3.jpg");
  kratos4 = loadImage("kratos4.jpg");
  kratos5 = loadImage("kratos5.jpeg");
  estado = 0;
  x = 10;
  vel = 3;
  posY = 600;
  posX = width;
  tono = 1;
  cuenta = 3;
  izquierda = true;
}

void draw(){
  
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  //maquina de estados
  if( estado == 0 ){  //ESTADO
    image(kratos1,0,0,640,480);
    textFont(fuente);
    textSize(60);    
    fill(0);    
    text("5 DATOS CURIOSOS \n SOBRE God of War ",x,200);
    if( x >= 70 ){  //borde derecha
    izquierda = true;
    if( vel < 10 ){        
    }
  }
  if( x <= 5 ){  //borde izquierda
    izquierda = false;
    if( vel < 10 ){      
    }
  }
  //
  if( izquierda ){
    x -= vel;
    
  } else {
    x += vel;   
  }
    
    //
    if( diferenciaTemporal >= 3000 ){  //3 segundos  //EVENTO
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //pantalla 2
  }else if (estado == 1 ){
     image(kratos2,0,0,640,480);  //fondo
     textFont(fuente);
     textSize(40);
     fill(0);
     text("Kratos pasó por muchos diseños.\n En un primer momento llevaba\n armadura como en el inicio de \nGod Of War 2.\n También se pensó en la idea de\n ponerle un acompañante algo\n como un perro o una bestia. ",5,posY);
     posY -= vel;
     if (posY < -300) { // que vuelva el texto a su posicion 
    posY = 600;
     }
    //
    if( diferenciaTemporal >= 5*1000 ){  //5 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //pantalla 3
  }else if (estado == 2 ){
   image(kratos3,0,0,640,480);  //fondo
   textFont(fuente);
     textSize(35);
     fill(0);
     text("El diseño original de Kratos también iba a\n llevar los tatuajes en color azul, en vez del rojo\n que conocemos actualmente. El cambio de \ncolor simple, un programador le enseñó\n una imagen del bárbaro de Diablo II\n al creador David Jaffe ",posX,200);
     posX -= vel;
     if (posX < -420) { // si el texto se salió de la ventana
    posX = width; // vuelve a la posición inicial
  }

     
    //
    if( diferenciaTemporal >= 7*1000 ){  //7 segundos
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 3 ){
    image(kratos4,0,0,640,480);  //fondo
    textFont(fuente);
     textSize(35);
     fill(0);
     if (tono>255||tono<1) {
       cuenta *= -1;
   }
      tono += cuenta;
     fill(252, 175, 55, tono);
     text("La idea de crear este juego nació por\n inspiración de Onimusha. El juego de\n rol/hack and slash encantó a David\n Jaffe y quiso crear su propio\n videojuego parecido a lo que había\n jugado.",10,200);
    //
    if( diferenciaTemporal >= 10000 ){  //10 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   
  
    //
  }else{
   image(kratos5,0,0,640,480);
   textFont(fuente);
     textSize(60);
     fill(random(255),random(255),random(255));
     text("FIN",300,300,200,200);
     stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("reiniciar",50,445);
  }
}


void mouseClicked(){
   if (mouseX > 30 && mouseY > 420 && mouseX < 130 && mouseY < 460) {
    estado = 0;
   }
}
