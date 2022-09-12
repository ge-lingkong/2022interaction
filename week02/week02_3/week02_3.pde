void setup(){
  size(500,500);
}
int W=20;
void draw(){
  drawPokerCard(50,50, "S4");
  drawPokerCard(90,90, "H3");
  drawPokerCard(130,130, "D5");
  drawPokerCard(170,170, "CJ");
}
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 10);
  fill(#C7D2FC);
  rect(x,y, 150,250, 10);
  fill(0);
  textSize(40);
  text(face, x,y+30);
}
