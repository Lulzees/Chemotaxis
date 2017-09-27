Bacteria[] gidgets;
void setup()   
{     
  size(600, 600);
  gidgets = new Bacteria[100];
  for (int i=0; i < gidgets.length; i++)
  {
    gidgets[i] = new Bacteria();
  }
}   
void draw()   
{ 
  background(0);
  for (int i=0; i<gidgets.length; i++) 
  {   
    gidgets[i].show();
    gidgets[i].move();
  }
}  
class Bacteria
{
  int myX, myY;     
  Bacteria()
  {
    myX = 300;
    myY = 300;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*41)-20;
    myY = myY + (int)(Math.random()*41)-20;
    if (mouseX > myX) 
    {
      myX = myX + (int)(Math.random()*21)-5;
    } 
    else if (mouseX < myX)
    {
      myX = myX + (int)(Math.random()*21)-15;
    }
    if (mouseY > myY) 
    {
      myY = myY + (int)(Math.random()*21)-5;
    } 
    else if (mouseY < myY)
    {
      myY = myY + (int)(Math.random()*21)-15;
    }
    }
    void show()
  {
    noStroke();
    fill(myX/2.35, 255-myY/2.35, (myX + myY)/4.71, myX);
    ellipse(myX, myY, 10, 10);
  }
}    