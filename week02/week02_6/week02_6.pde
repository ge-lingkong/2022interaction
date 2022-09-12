void setup(){
  size(500,500);
  PFont myfont=createFont("標楷體", 30);
  textFont(myfont);
  String [] flower={"黑桃","紅心","方塊","梅花"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}
String face1,face2,face3,face4;
void draw(){
  drawPokerCard(50,50, face1);
  drawPokerCard(90,90, face2);
  drawPokerCard(130,130, face3);
  drawPokerCard(170,170, face4);
}
void drawPokerCard(int x,int y,String face){
  int W=20;
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 10);
  fill(#C7D2FC);
  rect(x,y, 150,250, 10);
  if(face.indexOf("黑桃")==-1 && face.indexOf("梅花")==-1) fill(255,0,0);
  else fill(0);
  textSize(30);
  text(face, x,y+25);
}
