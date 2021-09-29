Die bob;
void setup()
  {
      noLoop();
      size(400, 400);
      bob = new Die(0, 0, 50, 50, 5, 204, 255, 255);
  }
  void draw()
  {
      //your code here
      background(150);
      bob.show();
      bob.roll((int)(Math.random() * 6) + 1);
  }


  void mousePressed()
  {
      redraw();
  }
  

  class Die //models one single dice cube
  {
      //member variable declarations here
      int posX;
      int posY;
      float Width = 0;
      float Height = 0;
      int num;
      int Color;
      int radius;
      
      Die(int x, int y, int w, int h, int dotR, int r, int g, int b) //constructor
      {
          //variable initializations here
          posX = x;
          posY = y;
          Width = w;
          Height = h;
          radius = dotR;
          r = (int)(Math.random() * 256);
          g = (int)(Math.random() * 256);
          b = (int)(Math.random() * 256);
          Color = color(r, g, b);
          num = ((int)(Math.random() * 6) + 1);
          
      }
      
      void roll(int n)
      {
          //your code here
          num = n;
          System.out.print(num);
      }
      
      void show()
      {
          //your code here
          fill(Color);
          rect(posX, posY, Width, Height);
          fill(0);
          ellipse(posX + (Width/2), posY + (Height/2), radius, radius);
      }
  }
