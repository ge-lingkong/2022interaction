# Week01
## 畫兩個四邊形（靜態）
```processing
size(500, 500);
background(#FCFFB4);
fill(#B4EFFF);
rect(100,100, 100,150);
rect(300,100, 100,150);
```
## 畫兩個四邊形（動態）
```processing
void setup(){
  size(500, 500);
}
void draw(){
  background(#FCFFB4);
  fill(#B4EFFF);
  rect(100,100, 100,150);
  rect(mouseX,mouseY, 100,150);
}
```
## 滑鼠畫線
```processing
void setup(){
  size(500, 500);
}
void draw(){
  if(mousePressed)
    line(mouseX,mouseY, pmouseX,pmouseY);
}
```
## 滑鼠畫線，鍵盤換色
```processing
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
```
# Week02
## 畫一張卡片
```processing
size(500,500);
int W=20;
rect(100-W/2,100-W/2, 150+W,250+W, 10);
fill(#C7D2FC);
rect(100,100, 150,250, 10);
```
## 畫多張卡片
```processing
void setup(){
  size(500,500);
}
int W=20;
void draw(){
  drawCard(100,100);
  drawCard(130,130);
  drawCard(160,160);
}
void drawCard(int x,int y){
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 10);
  fill(#C7D2FC);
  rect(x,y, 150,250, 10);
}
```
## 幫卡片加上文字
```processing
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
```
## 幫卡片加上中文字
```processing
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
```
## 讓不同卡片上的字有不同顏色
```processing
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
  if(face.indexOf("黑桃")==-1 && face.indexOf("梅花")==-1) fill(255,0,0);
  else fill(0);
  textSize(30);
  text(face, x,y+25);
}
```
## 隨機花色的牌
```processing
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
```
# Week03
## 滑鼠點擊時洗牌，可能同時出現兩張一樣的
```processing
void setup(){
  size(500,500);
  PFont myfont=createFont("標楷體", 30);
  textFont(myfont);
  myShuffle();
}
void myShuffle(){
  String [] flower={"黑桃","紅心","方塊","梅花"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
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
```
## 列出52個格子
```processing
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
```
## 列出52個花色
```processing
void setup(){
  size(800,500);
  background(#D7E0F5);
  PFont myfont=createFont("標楷體", 20);
  textFont(myfont);
}
String [] flower={"黑桃","紅心","方塊","梅花"};
String [] ID={"A","2","3","4","5","6","7","8","9","10","J","Q","K"};
void draw(){
  for(int i=0;i<52;i++){
    int x=(i%13)*60+10;
    int y=int(i/13)*120+10;
    fill(255); rect(x,y, 60,120);
    fill(0); text(flower[int(i/13)]+ID[i%13], x+2,y+60);
  }
}
```
## 列出52個花色，不同顏色
```processing
void setup(){
  size(800,500);
  background(#D7E0F5);
  PFont myfont=createFont("標楷體", 20);
  textFont(myfont);
}
String [] flower={"黑桃","紅心","方塊","梅花"};
String [] ID={"A","2","3","4","5","6","7","8","9","10","J","Q","K"};
void draw(){
  for(int i=0;i<52;i++){
    int x=(i%13)*60+10;
    int y=int(i/13)*120+10;
    fill(255); rect(x,y, 60,120);
    if(flower[int(i/13)].indexOf("紅心")==-1 && flower[int(i/13)].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(flower[int(i/13)]+ID[i%13], x+2,y+60);
  }
}
```
## 滑鼠拖動時洗牌
```processing
void setup(){
  size(800,500);
  background(#D7E0F5);
  PFont myfont=createFont("標楷體", 20);
  textFont(myfont);
}
String [] faces={
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"};
void draw(){
  for(int i=0;i<52;i++){
    int x=(i%13)*60+10;
    int y=int(i/13)*120+10;
    fill(255); rect(x,y, 60,120);
    if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(faces[i], x+2,y+60);
  }
}
void mouseDragged(){
  int a=int(random(52));
  int b=int(random(52));
  String t=faces[a];
  faces[a]=faces[b];
  faces[b]=t;
}
```
## 滑鼠點擊時洗牌，不會同時出現兩張一樣的
```processing
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
```
