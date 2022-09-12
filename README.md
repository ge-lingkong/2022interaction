# Week01
## 畫兩個四邊形（靜態）
```C
size(500, 500);
background(#FCFFB4);
fill(#B4EFFF);
rect(100,100, 100,150);
rect(300,100, 100,150);
```
## 畫兩個四邊形（動態）
```C
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
```C
void setup(){
  size(500, 500);
}
void draw(){
  if(mousePressed)
    line(mouseX,mouseY, pmouseX,pmouseY);
}
```
## 滑鼠畫線，鍵盤換色
```C
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
```C
size(500,500);
int W=20;
rect(100-W/2,100-W/2, 150+W,250+W, 10);
fill(#C7D2FC);
rect(100,100, 150,250, 10);
```
## 畫多張卡片
```C
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
## 
```C

```
