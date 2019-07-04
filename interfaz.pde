import controlP5.*;

import processing.serial.*;
Serial port;
ControlP5 cp5;

int on=0;
int con=0;
int conversor1=0;
int conversor2=0;
String envio,dato;


void setup(){
size (1200,900);
background (0);
//port=new Serial(this, "/dev/cu.usbmodem14201",9600);
cp5 = new ControlP5(this);
cp5.addButton("CONEXION")
.setPosition(50,50)
.setSize(200,100);

cp5.addButton("LED_ON")
.setPosition(300,50)
.setSize(200,100)
.setColorBackground(color(180,13,12))
.setColorForeground(color(250,0,0))
;

cp5.addSlider("CONTENEDOR1")
.setPosition(500,300)
.setSize(50,400)
.setColorBackground(color(255))
.setNumberOfTickMarks(50);

cp5.addSlider("CONTENEDOR2")
.setPosition(600,300)
.setSize(50,400)
.setColorBackground(color(255))
.setNumberOfTickMarks(50);
}
void draw(){
  if(con==1){
    if(port.available()>0){
    dato=port.readString();
    conversor1=int(dato);
    conversor2=int(dato);
    cp5.getController("CONTENEDOR1").setValue(conversor1/2);
    cp5.getController("CONTENEDOR2").setValue(conversor2/2);
    
    //metodo para slider 1
   if(conversor1>=75){
      cp5.getController("CONTENEDOR1").setColorForeground(color(180,13,70));
      
    }
   if(conversor1>=40 && conversor1<75){
      cp5.getController("CONTENEDOR1").setColorForeground(color(0,255,0));
    }
    
   if(conversor1>0 && conversor1<40){
      cp5.getController("CONTENEDOR1").setColorForeground(color(243,246,22));
    }
    
    //metodo para slider 2
    if(conversor2>=75){
      cp5.getController("CONTENEDOR2").setColorForeground(color(180,13,70));
      
    }
   if(conversor2>=40 && conversor2<75){
      cp5.getController("CONTENEDOR2").setColorForeground(color(0,255,0));
    }
    
   if(conversor2>0 && conversor2<40){
      cp5.getController("CONTENEDOR2").setColorForeground(color(243,246,22));
    }
    
    
    println(conversor1);
    }
  }
  
  conversor1= int(cp5.getController("CONTENEDOR1").getValue());
  conversor2= int(cp5.getController("CONTENEDOR2").getValue());
  
}

void CONEXION(){
con=1-con;
  if(con==1){
    port=new Serial(this, "/dev/cu.usbmodem14201",9600);
    cp5.getController("CONEXION").setLabel("CONECTADO");
       
  }
  else{
    port.stop();
    cp5.getController("CONEXION").setLabel("DESCONECTADO");
  }
}

void LED_ON(){
  on=1-on;
  envio=str(on);
  println(envio);
  port.write(envio);
  if (on==1){
    cp5.getController("LED_ON").setColorBackground(color(0,150,33));
    cp5.getController("LED_ON").setColorForeground(color(0,220,0));
  }else{
    cp5.getController("LED_ON").setColorBackground(color(180,13,12));
    cp5.getController("LED_ON").setColorForeground(color(250,0,0));
  }

}
