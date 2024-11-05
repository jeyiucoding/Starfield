class Particle{
  double myX, myY, mySpeed, myAngle;
  int colour;
  Particle(){
    myX = 200;
    myY = 200;
    mySpeed = (Math.random()*2)+2;
    myAngle = (Math.random()*2*Math.PI);
    colour = color(255,(int)(Math.random()*200),(int)(Math.random()*100));
  }
  void show(){
    noStroke();
    fill(colour);
    ellipse((float)myX,(float)myY,10,10);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
}
class floatingRocks extends Particle{
  floatingRocks(){
    super();
    //myX = 190;
    //myY = 190;
    //mySpeed = Math.random()*1.5;
    //myAngle = (Math.random()*2*Math.PI);
  }
  void show(){
    fill(color(77,72,72));
    rect((float)myX,(float)myY, 20,20);
  }
  //void move(){
  //  myX = myX + Math.cos(myAngle)*mySpeed;
  //  myY = myY + Math.sin(myAngle)*mySpeed;
  //}
}
Particle[] c = new Particle[1000];
Particle[] k = new Particle[500];
floatingRocks[] fr = new floatingRocks[50];
int value = 0;
int revalue = 0;
void setup(){
 
  size(400,400);
  for(int i = 0; i < c.length;i++){
    c[i] = new Particle();
  }
   for(int i = 0; i < fr.length;i++){
    fr[i] = new floatingRocks();
  }
  for(int i = 0; i < k.length;i++){
    k[i] = new Particle();
  }
}
void draw(){
 if(revalue == 0){
   background(255);
   fill(color(77,72,72));
   ellipse(200,200,100,100);
 }
  if(value == 10){
     background(255);
    for(int i = 0; i < c.length; i++){
      c[i].show();
      c[i].move();
     
    }
     for(int i = 0; i < fr.length; i++){
      fr[i].show();
      fr[i].move();
    }
   
  }
  if(value == 20){
    background(255);
    for(int i = 0; i < fr.length; i++){
      fr[i].show();
      fr[i].move();
    }
       for(int j = 0; j < k.length; j++){
      k[j].show();
      k[j].move();
     
    }
  }
}
void mouseClicked(){
  if(value == 0){
    value = 10;
  }
  else if (value == 10){
    value = 20;
     for(int j = 0; j < k.length; j++){
      k[j].mySpeed = (Math.random()*7)+7;
      k[j].myAngle = (Math.random()*2)*Math.PI;
     
    }
    for(int i = 0; i < fr.length; i++){
      fr[i].mySpeed = (Math.random()*6)+6;
      fr[i].myAngle = (Math.random()*2)*Math.PI;
    }
   
  }
  else{
    revalue = 0;
  }
}

