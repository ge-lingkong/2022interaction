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
