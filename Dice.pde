Die die1;
void setup()
{
  noLoop();
  size(300, 300);
  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;
  int five = 0;
  int six = 0;
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
      one += die1.one;
      two += die1.two;
      three += die1.three;
      four += die1.four;
      five += die1.five;
      six += die1.six;
    }
  }
  fill(0, 0, 0);
  text("Total: "+sum, 115, 15);
  text("# of 1's:" +one, 5,15);
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
      one++;
    }
    if (number == 2) {
      ellipse(myX+6, myY+6, 2, 2); 
      ellipse(myX+14, myY+14, 2, 2);
      two++;
    }
    if (number == 3) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2); 
      ellipse(myX+10, myY+10, 2, 2);
      three++;
    }
    if (number == 4) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2);
      four++;
    }
    if (number == 5) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2); 
      ellipse(myX+10, myY+10, 2, 2);
      five++;
    }
    if (number == 6) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);  
      ellipse(myX+6, myY+14, 2, 2);  
      ellipse(myX+14, myY+6, 2, 2);
      ellipse(myX+6, myY+10, 2, 2);  
      ellipse(myX+14, myY+10, 2, 2);
      six++;
    }
  }
}
