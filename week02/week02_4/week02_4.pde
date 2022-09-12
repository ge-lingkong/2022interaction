void setup(){
  size(500,500);
  PFont myfont=createFont("標楷體", 30);
  textFont(myfont);
}
int W=20;
void draw(){
  drawPokerCard(50,50, "黑桃4");
  drawPokerCard(90,90, "紅心3");
  drawPokerCard(130,130, "方塊5");
  drawPokerCard(170,170, "梅花J");
}
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 10);
  fill(#C7D2FC);
  rect(x,y, 150,250, 10);
  fill(0);
  textSize(30);
  text(face, x,y+25);
}
