public class Bullet{
  private PImage bulletIcon;
  private double angle;
  private float x,y,speed;
 
  public Bullet(double angle, float x, float y){
    this.angle = angle;
    bulletIcon = loadImage("Bullet.png");
    this.x = x;
    this.y = y;
    speed = 10;
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
    switch((int)angle){
      case 0:
        y -= speed;
        break;
      case 90:
        x += speed;
        break;
      case 180:
        y += speed;
        break;
      case 270:
        x -= speed;
        break;
    }
   }
}

