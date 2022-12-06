class Tile
{
 int tileX;
 int tileY;
 int tileW;
 int tileH;
 int tileType;
 
 int tileLeft;
 int tileRight;
 int tileTop;
 int tileBottom;
  
 Tile(int tX, int tY, int W, int H, int type)
 {
   this.tileX = tX;
   this.tileY = tY;
   this.tileW = W;
   this.tileH = H;
   this.tileType = type;
   
   this.tileLeft = this.tileX;
   this.tileRight = this.tileX + this.tileW;
   this.tileTop = this.tileY;
   this.tileBottom = this.tileY + this.tileH;
 }
 
 void show()
 {
  if(this.tileType == 1)
  {
    
    fill(255);
    rect(tileX, tileY, tileW, tileH);
  }
  else
  {
    fill(0, 255, 0);
    rect(tileX, tileY, tileW, tileH);
  } 
 }
 
}
