void setup(){
  size(500,500);
  PFont myfont=createFont("標楷體", 30);
  textFont(myfont);
  myShuffle();
}
String [] faces={
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"};
void myShuffle(){
  for(int i=0;i<10000;i++){
    int a=int(random(52));
    int b=int(random(52));
    String t=faces[a];
    faces[a]=faces[b];
    faces[b]=t;
  }
  face1=faces[0];
  face2=faces[1];
  face3=faces[2];
  face4=faces[3];
}
void mousePressed(){
  myShuffle();
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
