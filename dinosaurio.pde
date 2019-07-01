

int p = 3;
int desp = 0;
int heightW = 600;
int widthW = 600;
void setup(){
  size(600,600);
}
void draw(){
  dinosaurio();
}
void dinosaurio(){
  background(0);
  fill(255);
  beginShape();
  vertex(12*p+desp,2*p+heightW/2);
  vertex(12*p+desp,3*p+heightW/2);
  vertex(11*p+desp,3*p+heightW/2);
  vertex(11*p+desp,8*p+heightW/2);
  vertex(10*p+desp,8*p+heightW/2);
  vertex(10*p+desp,9*p+heightW/2);
  vertex(8*p+desp,9*p+heightW/2);
  vertex(8*p+desp,10*p+heightW/2);
  vertex(6*p+desp,10*p+heightW/2);
  vertex(6*p+desp,11*p+heightW/2);
  vertex(5*p+desp,11*p+heightW/2);
  vertex(5*p+desp,12*p+heightW/2);
  vertex(3*p+desp,12*p+heightW/2);
  vertex(3*p+desp,11*p+heightW/2);
  vertex(2*p+desp,11*p+heightW/2);
  vertex(2*p+desp,10*p+heightW/2);
  vertex(1*p+desp,10*p+heightW/2);
  vertex(1*p+desp,8*p+heightW/2);
  vertex(0*p+desp,8*p+heightW/2);//COLA DEL DINOSAURIO
  vertex(0*p+desp,14*p+heightW/2);
  vertex(1*p+desp,14*p+heightW/2);
  vertex(1*p+desp,15*p+heightW/2);
  vertex(2*p+desp,15*p+heightW/2);
  vertex(2*p+desp,16*p+heightW/2);
  vertex(3*p+desp,16*p+heightW/2);
  vertex(3*p+desp,17*p+heightW/2);
  vertex(5*p+desp,17*p+heightW/2);
  vertex(5*p+desp,21*p+heightW/2);
  vertex(8*p+desp,21*p+heightW/2);
  vertex(8*p+desp,20*p+heightW/2);
  vertex(7*p+desp,20*p+heightW/2);
  vertex(7*p+desp,19*p+heightW/2);
  vertex(8*p+desp,19*p+heightW/2);
  vertex(8*p+desp,18*p+heightW/2);
  vertex(9*p+desp,18*p+heightW/2);
  vertex(9*p+desp,17*p+heightW/2);
  vertex(10*p+desp,17*p+heightW/2);
  vertex(10*p+desp,18*p+heightW/2);
  vertex(11*p+desp,18*p+heightW/2);
  vertex(11*p+desp,21*p+heightW/2);// PIE DEL DINOSAURIO
  vertex(14*p+desp,21*p+heightW/2);
  vertex(14*p+desp,20*p+heightW/2);
  vertex(13*p+desp,20*p+heightW/2);
  vertex(13*p+desp,16*p+heightW/2);
  vertex(14*p+desp,16*p+heightW/2);
  vertex(14*p+desp,15*p+heightW/2);
  vertex(15*p+desp,15*p+heightW/2);
  vertex(15*p+desp,14*p+heightW/2);
  vertex(16*p+desp,14*p+heightW/2);
  vertex(16*p+desp,11*p+heightW/2);
  vertex(17*p+desp,11*p+heightW/2);
  vertex(17*p+desp,12*p+heightW/2);
  vertex(18*p+desp,12*p+heightW/2);
  vertex(18*p+desp,10*p+heightW/2);
  vertex(16*p+desp,10*p+heightW/2);
  vertex(16*p+desp,8*p+heightW/2);
  vertex(20*p+desp,8*p+heightW/2);
  vertex(20*p+desp,7*p+heightW/2);
  vertex(17*p+desp,7*p+heightW/2);
  vertex(17*p+desp,6*p+heightW/2);
  vertex(21*p+desp,6*p+heightW/2);
  vertex(21*p+desp,3*p+heightW/2);
  vertex(20*p+desp,3*p+heightW/2);
  vertex(20*p+desp,2*p+heightW/2);
  vertex(12*p+desp,2*p+heightW/2);
  endShape();
  fill(0);
  rect(13*p+desp,3*p+heightW/2,p,p);
  desp+=p;
  if(desp>480){
    desp=0;
  }
}

