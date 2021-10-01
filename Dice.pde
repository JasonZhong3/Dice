Die die1;
void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  background(255, 255, 255);
  int sum = 0;
  for (int x = 0; x < 300; x+=20) {
    for (int y = 20; y < 300; y+=20) {
      die1 = new Die(x, y);
      die1.roll();
      die1.show();
      sum += die1.number;
    }
  }
  fill(0, 0, 0);
  text("Total: "+sum, 115, 15);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, number;
  Die(int x, int y) {
    //constructor
    {
      //variable initializations here
      myX = x;
      myY = y;
    }
  }
  void roll()
  {
    number = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    fill(255, 255, 255);
    strokeWeight(2);
    rect(myX, myY, 20, 20);
    if (number == 1) {
      stroke((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
      ellipse(myX+10, myY+10, 2, 2);
    }
    if (number == 2) {
      ellipse(myX+6, myY+6, 2, 2); 
      ellipse(myX+14, myY+14, 2, 2);
    }
    if (number == 3) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2); 
      ellipse(myX+10, myY+10, 2, 2);
    }
    if (number == 4) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2);
    }
    if (number == 5) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2); 
      ellipse(myX+10, myY+10, 2, 2);
    }
    if (number == 6) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2);
      ellipse(myX+6, myY+10, 2, 2);  
      ellipse(myX+14, myY+10, 2, 2);
    }
  }
}
