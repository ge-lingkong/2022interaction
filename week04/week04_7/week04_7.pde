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