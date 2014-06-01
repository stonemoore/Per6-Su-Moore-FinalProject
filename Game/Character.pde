class Character{
   private PImage charIcon;
   private double power,speed,angle;
   private float x,y;//floats because they dont take doubles for the paitning for images at x,y.
   private String name;
   private boolean moving;
   
   public Character(String name){
      this.name = name;
      charIcon = loadImage("link.png");
      x = y = 200.0f;
      moving = false;
      angle = 0;
   }
   
   public float getX(){
      return x; 
   }
   
   public float getY(){
      return y; 
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
   
   public void move(){
      switch((int)angle){
         case 0:
           y = y-5;
           break;
         case 90:
           x = x+5;
           break;
         case 180:
           y = y+5;
           break;
         case 270:
           x = x-5;
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

