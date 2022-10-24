import processing.sound.*;
SoundFile sound1,sound2,sound3;
void setup(){
  size(200,200);
  sound1=new SoundFile(this, "In Game Music.mp3");
  sound2=new SoundFile(this, "Intro Song_Final.mp3");
  sound1.play();
}
int stage=1;
void draw(){
  background(255);
  fill(255,0,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("stage"+stage, 100,100);
}
void mousePressed(){
  if(stage==1){
    sound1.stop();
    sound2.play();
    stage=2;
  }else if(stage==2){
    sound2.stop();
    sound1.play();
    stage=1;
  }
}
