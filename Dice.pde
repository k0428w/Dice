void setup()
  {
    size(1300, 1500);  
    noLoop();
    textAlign(CENTER);
  }
  
  void draw()
  {
      background(161, 122, 186); //purple-colored background
      int sum = 0;
      for (int y = 10; y < 1250; y += 70)
      {
        for (int x = 25; x < 1250; x += 70)
        {
          Die a = new Die(x, y);
          a.show();
          sum += a.dots;
        }
      }
      fill(0, 0, 0);
      textSize(20);
      text("You rolled a " + sum + ".", 650, 1300); //coordinates of text location
  }
  
  void mousePressed()
  {
      redraw();
  }
  
  class Die
  {
      int myX, myY, dots;
      
      Die(int x, int y)
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          dots = (int)(Math.random()*6 + 1);
      }
      void show()
      {
          stroke(0); //black-colored dice outline
          fill(255); // white-colored dice faces
          rect(myX, myY, 50, 50, 10);
          fill(0);
          if (dots == 1){
            fill(38, 36, 36);
            ellipse(myX + 25, myY + 25, 10, 10);
      }
          else if (dots == 2){
            fill(38, 36, 36);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
      }
          else if (dots == 3){
            fill(38, 36, 36);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 25, myY + 25, 10, 10);
      }
          else if (dots == 4){
            fill(38, 36, 36);
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
      }
          else if (dots == 5){
            fill(38, 36, 36);
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 25, myY + 25, 10, 10);
      }
          else if (dots == 6){
            fill(38, 36, 36);
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 10, myY + 25, 10, 10);
            ellipse(myX + 40, myY + 25, 10, 10);
      }
      }
  }
