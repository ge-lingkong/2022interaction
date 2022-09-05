void setup(){
  size(500, 500);
  background(#FFFFF2);
  stroke(255,0,0);
}
void draw(){
  if(mousePressed)
    line(mouseX,mouseY, pmouseX,pmouseY);
}
void keyPressed(){
  if(key=='1') stroke(0,255,0);
  if(key=='2') stroke(0,0,255);
}
