class Asteroid extends Floater
{
  private int rotation;
  public Asteroid()
  {
     rotation = (int)(Math.random()*7)-3;
     corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 20;
      yCorners[0] = 0;
      xCorners[1] = 14;
      yCorners[1] = 14;
      xCorners[2] = 0;
      yCorners[2] = 20;
      xCorners[3] = -14;
      yCorners[3] = 14;
      xCorners[4] = -20;
      yCorners[4] = 0;
      xCorners[5] = -14;
      yCorners[5] = -14;
      xCorners[6] = 0;
      yCorners[6] = -20;
      xCorners[7] = 14;
      yCorners[7] = -14;
      myColor = (150);
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myDirectionX = (double)(Math.random()*1)-.5;
      myDirectionY = (double)(Math.random()*1)-.5;
      myPointDirection = (int)(Math.random()*360);
      
    
  }
  public void move ()   //move the floater in the current direction of travel
  {      
   super.move();
   this.turn(rotation);
  }   
  public void setX(int x)      
      {
        myCenterX = x;
      }
      public int getX()
      {
        return (int)myCenterX;
      }
      public void setY(int y)
      {
        myCenterY = y; 
      }
      public int getY()
      {
        return (int)myCenterY;
      }
      public void setDirectionX(double x)
      {
        myDirectionX = x;
      }
      public double getDirectionX()
      {
        return (double)myDirectionX;
      }
      public void setDirectionY(double y)
      {
        myDirectionY = y;
      }
      public double getDirectionY()
      {
        return (double)myDirectionY;
      }
      public void setPointDirection(int degrees)
      {
        myPointDirection = degrees;
      }
      public double getPointDirection()
      {
        return (double)myPointDirection;
      }
    
   
  
}
