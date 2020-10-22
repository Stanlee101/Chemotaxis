Bacteria[] blob;

void setup() {
  size(500, 500);
  frameRate(10);
  blob = new Bacteria[100];
  for (int i = 0; i < blob.length; i++) {
    blob[i] = new Bacteria();
  }
}

void draw() {
  background(150);
  for (int i = 0; i < blob.length; i++) {
    blob[i].show();
    blob[i].move();
  }
}

class Bacteria {
  int myX;
  int myY; 
  int mySize;
  int myColor;
  
  Bacteria(){
    myX = x;
    myY = y;
    mySize = 25;
    myColor = color((int)(Math.random()*27) + 72, (int)(Math.random()*30) + 162, (int)(Math.random()*55) + 16);
    //popped = false;
  }

  int x;
  int y;

  void move(){
    int direction = (int)(Math.random()*4);
    if (direction == 0){
      x = x + 20;
    } 
    else if (direction == 1){
      x = x - 20;
    } 
    else if (direction == 2){
      y = y + 20;
    } 
    else{
      y = y - 20;
    }
    if (x < 0 || x > 500){
      x = 250;
      y = 250;
    }
    if (y < 0 || y > 500){
      x = 250;
      y = 250;
    }
  }

  void show(){
    noStroke();
    fill(myColor);
    ellipse(x, y, mySize, mySize);
  }   
}
