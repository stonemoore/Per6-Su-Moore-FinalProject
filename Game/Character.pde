class Character{
   private PImage charIcon;
   private double power, angle;
   private float x,y,speed;//floats because they dont take doubles for the paitning for images at x,y.
   private String name;
   private boolean moving;
   
   public Character(String name){
      this.name = name;
      charIcon = loadImage("arrow.png");
      x = y = 200.0f;
      moving = false;
      angle = 0;
      speed = 4.0f;
   }
   
   public float getX(){
      return x; 
   }
   
   public float getY(){
      return y; 
   }
   
   public double getAngle(){
     return angle; 
   }
   
   public void setMoving(boolean moving){
       this.moving = moving;
   }
   
   public boolean getMoving(){
       return moving; 
   }
   
   public void setAngleTurned(double angle){
       this.angle = angle;
   }
   
   public PImage getImage(){
       return charIcon;
   }
   
   public void setImage(String s){
       charIcon = loadImage(s);
   }
   
   public void move(){
      int width = 800;
      int length = 600;
      switch((int)angle){
         case 0:
             setImage("arrow4.png");
             if(y>0)
             y = y-speed;
             break;
         case 90:
             setImage("arrow.png");
             if(x<width-100)//-100 accounts for image size
             x = x+speed;
             break;
         case 180:
             setImage("arrow2.png");
             if(y<length-100)
             y = y+speed;
             break;
         case 270:
             setImage("arrow3.png");
             if(x>0)
             x = x-speed;
             break;
      }
   }

}
   
   
  /*
   0,0 - - - -
   |          |ASCII representation of x,y coordinates
   |          |
   |__________800,600
   */

