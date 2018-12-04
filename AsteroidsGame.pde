
Spaceship nasa = new Spaceship();
ArrayList <Asteroid> hello = new ArrayList<Asteroid>();
ArrayList <Bullet> hola = new ArrayList<Bullet>();
Bullet bob;
Star[] bunch = new Star[200];
int death = 0;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < bunch.length; i++)
  {
    bunch[i] = new Star();
    
  }
 for(int i = 0; i < 15 ; i++){
   hello.add( 0 , new Asteroid());
  
}

}
public void draw() 
{
  background(0);
  for(int i = 0; i < bunch.length; i++)
 {
   bunch[i].show();
 }
  
  nasa.show();
  nasa.move();
   for(int i = 0; i<hello.size() ; i++){
   hello.get(i).show();
   hello.get(i).move();
   }
   for(int i = 0; i< hola.size() ; i++)
{
   hola.get(i).show();
   hola.get(i).move();
  
}
   for(int i = 0; i<hello.size() ; i++){
     for(int q = 0; q <hola.size(); q++)
     {
   if (dist(hola.get(q).getX(), hola.get(q).getY(), hello.get(i).getX(), hello.get(i).getY())<=27 ){
   hello.remove(i);   
   hola.remove(q);
   break;
   }
   }
   }

  for(int i = 0; i<hello.size() ; i++){
     if ( 28>= dist(nasa.getX(),nasa.getY(), hello.get(i).getX(), hello.get(i).getY()) ||dist(nasa.getX(),nasa.getY(), hello.get(i).getX(), hello.get(i).getY())<=30 ){
     death = death+1;
     text("YOU DIED", 200,250);
     }
    
    
  }

  
  

 
 fill(255);
 textSize(20);
 text("myCenterX: "+ nasa.getX() ,20,30);
 text("myCenterY: "+ nasa.getY(), 20,50);
 text("myPointDirection: "+ nasa.getPointDirection(),20,70);
 text("myDirectionX: " + (int)nasa.getDirectionX(), 20,90);
 text("myDirectionY: " + (int)nasa.getDirectionY(), 20, 110);
 text("Death: " + death, 20, 130);
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
  if(key == 'r'){hola.add(new Bullet(nasa));}
}
  
  
  
