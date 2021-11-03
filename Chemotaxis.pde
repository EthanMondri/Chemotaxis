Bacteria[][] chemotaxisArray;
int i, j;

void setup()
{
  size(800, 800);
  background(255);
  chemotaxisArray = new Bacteria[4][4];
  for (i = 0; i < 4; i++)
  {
    for (j = 0; j < 4; j++)
    {
      chemotaxisArray[i][j] = new Bacteria(width/2, height/2);
    }
  }
}

void draw()
{
  background(255);
  for (i = 0; i < 4; i++)
  {
    for (j = 0; j < 4; j++)
    {
      chemotaxisArray[i][j].move();
      chemotaxisArray[i][j].show();
    }
  }
}

class Bacteria
{
  int x, y, colour;
  Bacteria(int xPos, int yPos)
  {
    x = xPos;
    y = yPos;
    colour = (int)(Math.random()*256);
  }
  void move()
  {
    x += (int)(Math.random()*6-3);
    y += (int)(Math.random()*6-3);
  }
  void show()
  {
    fill(colour);
    ellipse(x, y, 30, 30);
  }
}
