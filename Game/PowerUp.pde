public class PowerUp {
  private PImage icon;
  private float x, y;
  private String type;
  private boolean alive;

  public PowerUp(float x, float y, String filename) {
    icon = loadImage(filename);
    this.x = x;
    this.y = y;
    alive = true;
  }
  
  public void setType(String type){
    this.type = type;
  }
  
  public boolean getAlive(){
    return alive; 
  }
  
}

