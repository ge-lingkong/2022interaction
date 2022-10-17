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
  for(int k=0;k<1000;k++){
    shuffle();
  }
}
void shuffle(){
  int i1=int(random(4)),j1=int(random(8));
  int i2=int(random(4)),j2=int(random(8));
  int t=board[i1][j1];
  board[i1][j1]=board[i2][j2];
  board[i2][j2]=t;
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
  if(moving){
    fill(0,255,0, 128);
    ellipse(50+moveJ*50+25,50+moveI*50+25, 40,40);
    drawChess(moveID, mouseX,mouseY);
  }
}
int moveI=-1,moveJ=-1,moveID=0;
boolean moving=false;
void mousePressed(){
  for(int i=0;i<4;i++)
    for(int j=0;j<8;j++){
      if(dist(mouseX,mouseY, 50+j*50+25,50+i*50+25)<20){
        if(show[i][j]==0) show[i][j]=1;
        else{
          moveI=i;
          moveJ=j;
          moveID=board[i][j];
          moving=true;
        }
      }
    }
}
void mouseReleased(){
  for(int i=0;i<4;i++)
    for(int j=0;j<8;j++){
      if(dist(mouseX,mouseY, 50+j*50+25,50+i*50+25)<20){
        if(moving){
          board[moveI][moveJ]=0;
          board[i][j]=moveID;
          moving=false;
        }
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
