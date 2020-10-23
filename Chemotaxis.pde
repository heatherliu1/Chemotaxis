Antart[] ghost = new Antart [100]; //creating array
void setup()
{
  background (255);
  size (400,400);
  for (int i = 0; i < ghost.length; i++)
  {
    ghost[i] = new Antart(); //creating instance
  }
}
void draw()
{
  for (int i = 0; i < ghost.length; i++)
  {
  ghost[i].move();
  ghost[i].show();
  }
}
class Antart
{
  int myColor;
  int myX;
  int mySize;
  float myY;
  Antart () //constructor: initialize member variables
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    mySize = 2;
    myX= (int)(Math.random()*400);
    myY= (int)(Math.random()*400);
}

  void move()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}

//i used "ghost" because i think ghost ants look cool
