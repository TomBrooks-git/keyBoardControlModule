boolean left, right, up, down;
Knight c;
String s;
Enemy e;
Enemy e2;
Tile t = new Tile(500, 400, 100, 100, 1);


PImage bg;

void setup()
{
 size(1200, 800);
 
 
 e = new Enemy();
 c = new Knight();
 s = "";
 
 
 left = false;
 right = false;
 up = false;
 down = false;
}

void draw()
{
  background(0);
  t.show();
  
  c.update();
  c.isCollided(t);
  c.display();
  
 
  
  //e.chase(c.x, c.y);
  //e.update();
  //e.display();
  
  System.out.println("tile left: " + t.tileLeft);
  System.out.println("tile right: " + t.tileRight);
  System.out.println("tileTop: " + t.tileTop);
  System.out.println("tile bottom: " + t.tileBottom);
  
  System.out.println("player x: " + c.x);
  System.out.println("player y: " + c.y);
  System.out.println("player w: " + c.w);
  System.out.println("player h: " + c.h);
  fill(0);
  textSize(24);
  text(s, 100, 50);
}

//void checkBounds()
//{
//  if(c.x < t.tileRight)
  
  
//  //if(c.x < t.tileLeft) //eliminate right side collision
//  //{
//  //  if(!(c.y + c.h < t.tileTop) && !(c.y > t.tileBottom))
//  //  {
//  //   if((c.x + c.w > t.tileLeft && c.x + c.w < t.tileRight)) //player left side tile collision && (c.y >= t.tileTop && c.y + c.h  <= t.tileBottom)
//  //   {
//  //    c.x = t.tileLeft - c.w; 
//  //   }
//  //  }
//  //  else if(c.y + c.h > t.tileTop && c.y + c.h < t.tileBottom)   //!(c.x + c.w < t.tileLeft) && !(c.x > t.tileRight)
//  //  {
//  //    c.y = t.tileTop - c.h;
//  //  }
//  //}
  
//  //if(c.y < t.tileTop)  //never true for bottom collision
//  //{
//  //  if(!(c.x + c.w < t.tileLeft) && !(c.x > t.tileRight))
//  //  {
//  //    if(c.y + c.h > t.tileTop && c.y + c.h < t.tileBottom)
//  //    {
//  //      c.y = t.tileTop - c.h;
//  //    }
//  //  }
//  //}
  
  
  
  
  
//  //if((c.x + c.w > t.tileLeft && c.x + c.w < t.tileRight && c.x < t.tileLeft) ) //player left side tile collision && (c.y >= t.tileTop && c.y + c.h  <= t.tileBottom)
//  //{
//  //  if((c.y + c.h > t.tileTop && c.y + c.h < t.tileBottom) || (c.y > t.tileTop && c.y < t.tileBottom))
//  //  {
//  //    c.x = t.tileLeft - c.w;
//  //  }
    
//  //}
//  //else if(c.x < t.tileRight && c.x > t.tileLeft && (c.y >= t.tileTop && c.y + c.h  <= t.tileBottom)) // will it? lets see && 
//  //{
//  //  if((c.y + c.h > t.tileTop && c.y + c.h < t.tileBottom) || (c.y > t.tileTop && c.y < t.tileBottom))
//  //  {
//  //    c.x = t.tileRight; 
//  //  }
//  //}
  
  
//  //else if((c.y + c.h > t.tileTop && c.y + c.h < t.tileBottom))   //check top&& (c.x >= t.tileLeft && c.x + c.w <= t.tileRight)
//  //{
//  //  if((c.x + c.w > t.tileLeft && c.x + c.w < t.tileRight) || (c.x < t.tileRight && c.x > t.tileLeft))
//  //  {
//  //    c.y = t.tileTop - c.h; 
//  //  }
//  //}
  
//  //else if((c.y < t.tileBottom && c.y > t.tileTop && (c.x >= t.tileLeft && c.x + c.w <= t.tileRight)))
//  //{
//  //  if((c.x + c.w > t.tileLeft && c.x + c.w < t.tileRight) || (c.x < t.tileRight && c.x > t.tileLeft))
//  //  {
//  //   c.y = t.tileBottom; 
//  //  }
//  //}
//  //else
//  //{
//  // System.out.println("Error in checkBounds function"); 
//  //}
  
//}


void keyPressed()
{
  s = "key: " + keyCode;
  
  switch(keyCode)
  {
    case 65:    //left
      left = true;
      break;
    case 87:
      up = true;  //up
      break;
    case 68:
      right = true;  //right
      break;
    case 83:
      down = true;   //down
      break;
  }
  
}

void keyReleased()
{
  switch(keyCode)
  {
    case 65:    //left
      left = false;
      break;
    case 87:
      up = false;  //up
      break;
    case 68:
      right = false;  //right
      break;
    case 83:
      down = false;   //down
      break;
  }
}
