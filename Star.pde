public class Star //note that this class does NOT extend Floater
{
 private int starX;
 private int starY;
 private int starSize;
 public Star()
  {
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSize = (int)(Math.random()*5)+1;
  
  }
  
  public void show()
  {
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(starX,starY,starSize,starSize);
    
  }
}
