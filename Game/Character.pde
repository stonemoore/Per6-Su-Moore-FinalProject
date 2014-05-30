class Character{
   private PImage charIcon;
   private double power,speed;
   private float x,y;
   public String name;
   private boolean turnLeft,turnRight,turnUp,turnDown,moving;
   
   public Character(String name){
      this.name = name;
      charIcon = loadImage("link.png");
      x = y = 200.0f;
      turnLeft=turnRight=turnUp=turnDown=moving=false;
   }
   
   public float getX(){
      return x; 
   }
   
   public float getY(){
      return y; 
   }
   
   public PImage getImage(){
      return charIcon;
   }
   
   
   
}
