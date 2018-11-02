Spaceship nasa = new Spaceship();
Star[] bunch = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < bunch.length; i++)
  {
    bunch[i] = new Star();
    
  }
}
public void draw() 
{
  background(0);
  nasa.show();
  nasa.move();
 for(int i = 0; i < bunch.length; i++)
 {
   bunch[i].show();
 }
 fill(255);
 textSize(20);
 text("myCenterX: "+ nasa.getX() ,20,30);
 text("myCenterY: "+ nasa.getY(), 20,50);
 text("myPointDirection: "+ nasa.getPointDirection(),20,70);
 text("myDirectionX: " + nasa.getDirectionX(), 20,90);
 text("myDirectionY: " + nasa.getDirectionY(), 20, 110);
}

public void keyPressed()
{
  if(key == 'f'){nasa.turn(-15);}
  else if(key == 'h'){nasa.turn(15);}
  if(key == 't'){nasa.accelerate(0.1);}
  else if(key == 'g'){
  nasa.setX((int)(Math.random()*500));
  nasa.setY((int)(Math.random()*500));
  nasa.setDirectionX(0);
  nasa.setDirectionY(0);
  nasa.setPointDirection((int)(Math.random()*360));
  }
}
  
  
  
