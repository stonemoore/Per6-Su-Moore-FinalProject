public class Bullet{

  private PImage bulletIcon;
  private int angle;
  private float x,y,speed;
 
  public Bullet(int angle, float x, float y){
    this.angle = angle;
    bulletIcon = loadImage("Bullet.png");
    this.x = x;
    this.y = y;
  }
  
  public PImage getIcon(){
     return bulletIcon;
  }
  
  public float getX(){
     return x; 
  }
  
  public float getY(){
     return y; 
  }
  
  public void move(){
    switch(angle){
      case 0:
        y = y-speed;
        break;
      case 90:
        x = x+speed;
        break;
      case 180:
        y = y+speed;
        break;
      case 279:
        x = x-speed;
        break;
    }
   }
}

