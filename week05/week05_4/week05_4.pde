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
