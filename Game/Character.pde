class Character{
   private PImage charIcon;
   private double x,y,power,speed;
   public String name;
   private boolean turnLeft,turnRight,turnUp,turnDown,moving;
   
   public Character(String name){
      this.name = name;
      charIcon = loadImage("yami_yugi.jpg");
      turnLeft=turnRight=turnUp=turnDown=moving=false;
   }
   
   public PImage getImage(){
      return charIcon;
   }
   
}
