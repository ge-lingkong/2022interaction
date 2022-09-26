void setup(){
  size(500,500);
}
float x=250, y=250;
float vx=2.0, vy=-1.5;
float boardX,boardY=470, boardW=100,boardH=20;
void draw(){
  background(#FFFFF2);
  boardX=mouseX-boardW/2;
  rect(boardX,boardY, boardW,boardH, 5);
  ellipse(x,y, 10,10);
  x+=vx;
  y+=vy;
  if(x<0 || x>500) vx*=-1;
  if(y<0) vy*=-1;
  if(y>boardY && y<boardY+boardH && x>boardX && x<boardX+boardW){
    vy*=-1;
    vx+=(mouseX-pmouseX)/2;
  }
  if(mousePressed && mouseButton==LEFT) boardW*=1.01;
  if(mousePressed && mouseButton==RIGHT) boardW*=0.99;
}
