public class PowerUp {
  private PImage icon;
  private float x, y;

  private boolean alive;

  public PowerUp(float x, float y, String filename) {
    icon = loadImage(filename);
    this.x = x;
    this.y = y;
    alive = true;
  }
  
  public void givePlayer(Character hero){
    //skeleton
  }
  
  public boolean getAlive(){
    return alive; 
  }
  
  public float getX(){
    return x; 
  }
  
  public float getY(){
    return y; 
  }
  
  public void setAlive(boolean alive){
    this.alive = alive; 
  }
  
}

