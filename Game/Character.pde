class Character{
   private PImage charPlaceholder;
   private double x,y,power,speed;
   public String name;
   private boolean turnLeft,turnRight,turnUp,turnDown,moving;
   
   Character(String name){
      this.name = name;
      charPlaceholder = loadImage("yami_yugi.jpg");
      turnLeft=turnRight=turnUp=turnDown=moving=false;
   }
   
   
}
