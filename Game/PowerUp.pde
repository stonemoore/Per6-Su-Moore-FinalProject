public class PowerUp {
  private PImage icon;
  private float x, y;
  private String type;

  public PowerUp(float x, float y, String filename) {
    icon = loadImage(filename);
    this.x = x;
    this.y = y;
  }
  
  public void setType(String type){
    this.type = type;
  }
  
}

