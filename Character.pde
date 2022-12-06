class Knight
{
 //properties 
  int x, y, w, h;
  
  int pRight = x + w;
  int pLeft = x;
  int pTop = y;
  int pBottom = y + h;
  
  int speedX, speedY, maxSpeed;
  boolean isCollided;
  //constructor
  Knight()
  {
    x = width/2;
    y = height/2;
    w = 32;
    h = 32;
    maxSpeed = 5;
    speedX = 0;
    speedY = 0;
    isCollided = false;
  }
  
  //methods
  void update()
  {
    //HORIZONTAL MOVEMENT
    if(left)
    {
      //speedY = 0;
      speedX = -maxSpeed;
    }
    if(right)
    {
      //speedY = 0;
      speedX = maxSpeed;
    }
    if(!left && !right || left && right)
    {
      speedX = 0;
    }
    //VERTICAL MOVEMENT
    if(up)
    {
      //speedX = 0;
      speedY = -maxSpeed;
    }
    if(down)
    {
      //speedX = 0;
      speedY = maxSpeed;
    }
    if(!up && !down || up && down)
    {
      speedY = 0;
    }
    checkBounds();
    
    x+= speedX;
    y+= speedY;
  }
  void display()
  {
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
  
  void checkBounds()
  {
   if(x >= width - w)
   {
    x = width - w; 
   }
   if(x <= 0)
   {
    x = 0; 
   }
   if(y <= 0)
   {
    y = 0; 
   }
   if(y >= height - h)
   {
     y = height - h;
   }
  }
  
  void isCollided(Tile t)
  {
    if(pRight > t.tileLeft && pLeft < t.tileLeft)
    {
      if(pBottom <= t.tileBottom && pTop >= t.tileTop)
      {
       x = t.tileLeft - w; 
      }
    }
  }
   //if((x <= t.tileLeft && x + w > t.tileLeft) || (x >= t.tileLeft && x + w < t.tileRight) || (x <= t.tileRight && x + w > t.tileRight))
   //{
   // if((y < t.tileTop && y + h >= t.tileTop) || (y >= t.tileTop && y + h < t.tileBottom) || (y <= t.tileBottom && y + h > t.tileBottom))
   // {
   //   if((up || (y < t.tileBottom && y + h > t.tileBottom)))
   //   {
   //    y = t.tileBottom; 
   //   }
   //   else if(down || (y < t.tileTop && y + h > t.tileTop))
   //   {
   //     y = t.tileTop - h;
   //   }
   //   else if(left || (x > t.tileLeft && x + w < t.tileRight))
   //   {
   //     x = t.tileRight;
   //   }
   //   else if(right || (x < t.tileLeft && x + w > t.tileLeft))
   //   {
   //     x = t.tileLeft - w;
   //   }
   //   else
   //   {
   //    return; 
   //   }
      
   // }
   //}
   //  if(x > width)
   //{
   // x = -w; 
   //}
   //if(x < -w)
   //{
   // x = width; 
   //}
   //if(y > height)
   //{
   // y = -h; 
   //}
   //if(y < -h)
   //{
   //  y = height;
   //}
  
  
}
