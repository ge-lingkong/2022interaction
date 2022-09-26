void setup(){
  size(500,500);
}
float x=250, y=250;
float vx=1.0, vy=-0.5;
void draw(){
  ellipse(x,y, 10,10);
  x+=vx;
  y+=vy;
  if(x<0 || x>500) vx*=-1;
  if(y<0 || y>500) vy*=-1;
}
