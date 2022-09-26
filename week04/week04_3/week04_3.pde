void setup(){
  size(500,500);
}
float x=250, y=250;
float vx=2.0, vy=-1.5;
void draw(){
  background(#FFFFF2);
  int boardX=mouseX;
  rect(boardX,470, 100,20, 5);
  ellipse(x,y, 10,10);
  x+=vx;
  y+=vy;
  if(x<0 || x>500) vx*=-1;
  if(y<0 || (y>470 && x>boardX && x<boardX+100)) vy*=-1;
}
