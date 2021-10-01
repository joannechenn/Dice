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
      background(190);
      int sum = 0;
      for(int j = 0; j < 390; j += 65){
        for(int i = 0; i < 390; i += 65){
          bob = new Die(10 + i, 10 + j, 50, 50);
          bob.show();
          bob.roll((int)(Math.random() * 6) + 1);
          sum = sum + bob.num;
        }
      }
      fill(50);
      text("Total: " + sum, 181, 202);
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
          r = (int)(Math.random() * 206) + 50;
          g = (int)(Math.random() * 206) + 50;
          b = (int)(Math.random() * 206) + 50;
          num = ((int)(Math.random() * 6) + 1);
          
      }
      
      void roll(int n)
      {
          //your code here
          num = n;
      }
      
      void show()
      {
          //your code here
          fill(r, g, b);
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
