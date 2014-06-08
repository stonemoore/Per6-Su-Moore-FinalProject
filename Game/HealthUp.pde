public class HealthUp extends PowerUp{
  private int hp;
  public HealthUp(float x, float y, int hpGained){
     super(x,y,"health.png");
     setType("health");
     hp = hpGained;
  }
  
}
