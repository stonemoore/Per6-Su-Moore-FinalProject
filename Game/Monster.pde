public class Monster {
  private PImage Icon;
  private int HP, power;
  private double angle;
  private float x, y, speed;
  private boolean moving; //uncheck if stun

  public Monster(int x, int y, int speed) {
    Icon = loadImage("zerg.png");
    HP = 100;
    power = 50;
    angle  = 0;
    this.x = x;
    this.y = y;
  }
  
  public float getX(){
    return x; 
  }
  
  public float getY(){
    return y; 
  }
  
  public void minusHP(int damage){
    HP -= damage;
  }
  
  public int getPower(){
    return power; 
  }
  
  public int getHP(){
    return HP; 
  }
  
   
}

