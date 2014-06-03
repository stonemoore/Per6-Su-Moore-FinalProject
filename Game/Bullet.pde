public class Bullet{

  private PImage bulletIcon;
  private int angle;
  private float x,y;
 
  public Bullet(int a, float xa, float ya){
    angle = a;
    bulletIcon=loadImage("Bullet.png");
    x = xa;
    y = ya;
  }
  
  public move(){
    if (angle == 0)
        y += 10.0;      
    if (angle == 90)
        x += 10.0;    
    if (angle == 180)
        y -= 10.0; 
    if (angle == 270)
        x -= 10.0;
     }
   }

