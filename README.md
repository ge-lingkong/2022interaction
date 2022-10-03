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
# Week04
## 一個往右上角跑的球球
```processing
void setup(){
  size(500,500);
}
int x=250,y=250;
void draw(){
  ellipse(x,y, 10,10);
  x+=1;
  y-=1;
}
```
## 球球碰到邊界會反彈
```processing
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
```
## 背景蓋殘影，板子彈球球
```processing
void setup(){
  size(500,500);
}
float x=250, y=250;
float vx=2.0, vy=-1.5;
void draw(){
  background(#FFFFF2);
  int boardX=mouseX;
  rect(boardX,470, 100,20, 5);
  ellipse(x,y, 10,10);
  x+=vx;
  y+=vy;
  if(x<0 || x>500) vx*=-1;
  if(y<0 || (y>470 && x>boardX && x<boardX+100)) vy*=-1;
}
```
## 板子彈球、抽球、縮放
```processing
void setup(){
  size(500,500);
}
float x=250, y=250;
float vx=2.0, vy=-1.5;
float boardX,boardY=470, boardW=100,boardH=20;
void draw(){
  background(#FFFFF2);
  boardX=mouseX-boardW/2;
  rect(boardX,boardY, boardW,boardH, 5);
  ellipse(x,y, 10,10);
  x+=vx;
  y+=vy;
  if(x<0 || x>500) vx*=-1;
  if(y<0) vy*=-1;
  if(y>boardY && y<boardY+boardH && x>boardX && x<boardX+boardW){
    vy*=-1;
    vx+=(mouseX-pmouseX)/2;
  }
  if(mousePressed && mouseButton==LEFT) boardW*=1.01;
  if(mousePressed && mouseButton==RIGHT) boardW*=0.99;
}
```
## 九乘九顆白棋子
```processing
void setup(){
  size(500,500);
}
void draw(){
  for(int x=50;x<=450;x+=50)
    for(int y=50;y<=450;y+=50)
      ellipse(x,y, 50,50);
}
```
## 陣列記棋，0是白棋，1是黑棋
```processing
void setup(){
  size(500,500);
}
int [][] go ={
  {1,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,1,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
};
void draw(){
  for(int i=0;i<9;i++)
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1) fill(0);
      else fill(255);
      ellipse(50+j*50,50+i*50, 50,50);
    }
}
```
## 棋盤，0沒棋，1黑棋，2白棋
```processing
void setup(){
  size(500,500);
}
int [][] go ={
  {0,0,1,0,0,0,0,0,0},
  {0,0,0,0,0,2,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,2,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
};
void draw(){
  background(#F0BD50);
  for(int i=1;i<10;i++){
    line(50,i*50, 450,i*50);
    line(i*50,50, i*50,450);
  }
  for(int i=0;i<9;i++)
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1){
        fill(0);
        ellipse(50+j*50,50+i*50, 40,40);
      }
      else if(go[i][j]==2){
        fill(255);
        ellipse(50+j*50,50+i*50, 40,40);
      }
    }
}
```
## 滑鼠放棋子，白棋先手
```processing
void setup(){
  size(500,500);
}
int [][] go ={
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
};
int turn=1;
void mousePressed(){
  int i=(mouseY-25)/50,j=(mouseX-25)/50;
  if(go[i][j]==0){
    go[i][j]=(turn%2==1)? 2:1;
    turn++;
  }
}
void draw(){
  background(#F0BD50);
  for(int i=1;i<10;i++){
    line(50,i*50, 450,i*50);
    line(i*50,50, i*50,450);
  }
  for(int i=0;i<9;i++)
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1){
        fill(0);
        ellipse(50+j*50,50+i*50, 40,40);
      }
      else if(go[i][j]==2){
        fill(255);
        ellipse(50+j*50,50+i*50, 40,40);
      }
    }
}
```
# Week05
## 簡易象棋棋盤
```processing
size(500,550);
for(int i=50;i<=450;i+=50){
  line(i,50, i,250);
  line(i,300, i,500);
}
for(int i=50;i<=500;i+=50)
  line(50,i, 450,i);
```
## 象棋初始位置
```processing
void setup(){
  size(500,550);
}
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
void draw(){
  for(int i=50;i<=450;i+=50){
    line(i,50, i,250);
    line(i,300, i,500);
  }
  for(int i=50;i<=500;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<5;i++)
    for(int j=0;j<9;j++)
      text(board[i][j], 50+j*50, 50+i*50);
}
```
## 只有字的棋
```processing
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
String []name={"將","士","象","車","馬","包","卒"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  for(int i=50;i<=450;i+=50){
    line(i,50, i,250);
    line(i,300, i,500);
  }
  for(int i=50;i<=500;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<5;i++)
    for(int j=0;j<9;j++){
      int id=board[i][j];
      if(id!=0) text(name[id-1], 50+j*50, 50+i*50);
    }
}
```
## 把全部棋子擺出來
```processing
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};
String []name={"將","士","象","車","馬","包","卒"};
String []name2={"帥","仕","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#E5BC68);
  for(int i=50;i<=450;i+=50){
    line(i,50, i,250);
    line(i,300, i,500);
  }
  for(int i=50;i<=500;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      int id=board[i][j];
      if(id==0) continue;
      if(id>0){
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(0); text(name[id-1], 50+j*50, 50+i*50-3);
      }
      else{
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(255,0,0); text(name2[-id-1], 50+j*50, 50+i*50-3);
      }
    }
}
```
## 在滑鼠點到的位置放將
```processing
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};
String []name={"將","士","象","車","馬","包","卒"};
String []name2={"帥","仕","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#E5BC68);
  for(int i=50;i<=450;i+=50){
    line(i,50, i,250);
    line(i,300, i,500);
  }
  for(int i=50;i<=500;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      int id=board[i][j];
      if(id==0) continue;
      if(id>0){
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(0); text(name[id-1], 50+j*50, 50+i*50-3);
      }
      else{
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(255,0,0); text(name2[-id-1], 50+j*50, 50+i*50-3);
      }
    }
}
void mousePressed(){
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      if(dist(mouseX,mouseY, 50+j*50,50+i*50)<20){
        board[i][j]=1;
      }
    }
}
```
## 可亂移的棋子
```processing
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};
String []name={"將","士","象","車","馬","包","卒"};
String []name2={"帥","仕","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#E5BC68);
  for(int i=50;i<=450;i+=50){
    line(i,50, i,250);
    line(i,300, i,500);
  }
  for(int i=50;i<=500;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      int id=board[i][j];
      if(id==0) continue;
      if(id>0){
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(0); text(name[id-1], 50+j*50, 50+i*50-3);
      }
      else{
        fill(255); ellipse(50+j*50,50+i*50, 40,40);
        fill(255,0,0); text(name2[-id-1], 50+j*50, 50+i*50-3);
      }
    }
  if(handChess!=0) ellipse(mouseX,mouseY, 40,40);
}
int handChess=0;
void mousePressed(){
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      if(dist(mouseX,mouseY, 50+j*50,50+i*50)<20){
        handChess=board[i][j];
        board[i][j]=0;
      }
    }
}
void mouseReleased(){
  int i=(mouseY-25)/50;
  int j=(mouseX-25)/50;
  board[i][j]=handChess;
  handChess=0;
}
```
## 暗棋棋盤
```processing
int [][]board={
  {1,2,2,3,3,4,4,5},
  {5,6,6,7,7,7,7,7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};
String []name={"將","士","象","車","馬","包","卒"};
String []name2={"帥","仕","相","俥","傌","炮","兵"};
void setup(){
  size(500,300);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#E5BC68);
  for(int i=50;i<=450;i+=50)
    line(i,50, i,250);
  for(int i=50;i<=250;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<4;i++)
    for(int j=0;j<8;j++){
      int id=board[i][j];
      if(id==0) continue;
      drawChess(id,50+j*50+25,50+i*50+25);
    }
}
void drawChess(int id,int x,int y){
  fill(255); ellipse(x,y, 40,40);
  if(id>0){
    fill(0); text(name[id-1], x, y-3);
  }
  else{
    fill(255,0,0); text(name2[-id-1], x, y-3);
  }
}
```
## 暗棋翻棋
```processing
int [][]show={
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board={
  {1,2,2,3,3,4,4,5},
  {5,6,6,7,7,7,7,7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};
String []name={"將","士","象","車","馬","包","卒"};
String []name2={"帥","仕","相","俥","傌","炮","兵"};
void setup(){
  size(500,300);
  PFont font=createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
  background(#E5BC68);
  for(int i=50;i<=450;i+=50)
    line(i,50, i,250);
  for(int i=50;i<=250;i+=50)
    line(50,i, 450,i);
  for(int i=0;i<4;i++)
    for(int j=0;j<8;j++){
      int id=board[i][j];
      if(id==0) continue;
      if(show[i][j]==0){
        fill(#1C5A19); ellipse(50+j*50+25,50+i*50+25,40,40);
      }
      else drawChess(id,50+j*50+25,50+i*50+25);
    }
}
void mousePressed(){
  for(int i=0;i<10;i++)
    for(int j=0;j<9;j++){
      if(dist(mouseX,mouseY, 50+j*50+25,50+i*50+25)<20){
        if(show[i][j]==0) show[i][j]=1;
      }
    }
}
void drawChess(int id,int x,int y){
  fill(255); ellipse(x,y, 40,40);
  if(id>0){
    fill(0); text(name[id-1], x, y-3);
  }
  else{
    fill(255,0,0); text(name2[-id-1], x, y-3);
  }
}
```
