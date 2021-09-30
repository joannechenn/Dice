Die bob;
void setup()
  {
      noLoop();
      size(400, 400);
      bob = new Die(0, 0, 50, 50);
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
      int r;
      int g;
      int b;
      int num;
      
      Die(int x, int y, int w, int h) //constructor
      {
          //variable initializations here
          posX = x;
          posY = y;
          Width = w;
          Height = h;
          r = (int)(Math.random() * 256);
          g = (int)(Math.random() * 256);
          b = (int)(Math.random() * 256);
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
          fill(color(r, g, b));
          strokeWeight(2);
          rect(posX, posY, Width, Height);
          
          //drawing the circles
          fill(0);
          if(num == 1){
            ellipse(posX + (Width/2), posY + (Height/2), 5, 5);
          }
          else if (num == 2){
            ellipse(posX + (Width/3), + posY + (Height/3), 5, 5);
            ellipse(posX + (2*Width/3), posY + (2*Height/3), 5, 5);
          }
          else if (num == 3){
            ellipse(posX + (Width/2), posY + (Height/2), 5, 5);
            ellipse(posX + (Width/3), + posY + (Height/3), 5, 5);
            ellipse(posX + (2*Width/3), posY + (2*Height/3), 5, 5);
          }
          else if (num == 4){
            ellipse(posX + (Width/4), + posY + (Height/4), 5, 5);
            ellipse(posX + (Width/4), + posY + (3*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (3*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (Height/4), 5, 5);
          }
          else if (num == 5){
            ellipse(posX + (Width/2), posY + (Height/2), 5, 5);
            ellipse(posX + (Width/4), + posY + (Height/4), 5, 5);
            ellipse(posX + (Width/4), + posY + (3*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (3*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (Height/4), 5, 5);
          }
          else if (num == 6){
            ellipse(posX + (Width/4), + posY + (Height/4), 5, 5);
            ellipse(posX + (Width/4), + posY + (2*Height/4), 5, 5);
            ellipse(posX + (Width/4), + posY + (3*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (2*Height/4), 5, 5);
            ellipse(posX + (3*Width/4), + posY + (3*Height/4), 5, 5);
          }
      }
  }
