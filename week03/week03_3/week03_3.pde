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
