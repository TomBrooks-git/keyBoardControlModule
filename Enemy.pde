class Enemy
{
 int x, y, w, h, vx, vy;
 
 //constructor
 Enemy()
 {
  x = (int)random(width-200) + 100;
  y = (int)random(height-200) + 100;
  w = 32;
  h = 32;
  vx = 0;
  vy = 0;
 }
 void update()
 {
   x += vx;
   y += vy;
 }
 void display()
 {
   fill(0, 255, 0);
   rect(x, y, w, h);
 }
 void chase(int px, int py)   //playerx and playery
 {
   if(dist(x, y, px, py) > 200)
   {
     vx = 0;
     vy = 0;
     return;
   }
   
   if(abs(x - px) < abs (y - py))
   {
     //vertical separation is bigger
     if(y < py)
     {
      vy = 2; 
      vx = 0;
     }
     else
     {
      vy = -2;
      vx = 0;
     }
   }
   else
   {
     //horizontal separation is bigger
     if(x < px)
     {
       vx = 2;
       vy = 0;
     }
     else
     {
      vx = -2;
      vy = 0;
     }
   }
 }
  
}
