void setup(){
  size(800,500);
  background(#D7E0F5);
}
void draw(){
  for(int i=0;i<52;i++){
    int x=(i%13)*60+10;
    int y=int(i/13)*120+10;
    rect(x,y, 60,120);
  }
}
