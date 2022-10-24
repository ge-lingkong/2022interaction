void setup(){
  size(200,200);
}
int stage=1;
void draw(){
  background(255);
  fill(255,0,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("stage"+stage, 100,100);
}
void mousePressed(){
  if(stage==1) stage=2;
  else if(stage==2) stage=1;
}
