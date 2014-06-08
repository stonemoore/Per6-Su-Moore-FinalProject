public class HealthUp extends PowerUp{
  private int hp;
  public HealthUp(float x, float y, int hpGained){
     super(x,y,"health.png");
     hp = hpGained;
  }
  
  public void givePlayer(Character hero){
     hero.addHP(hp);
  }
  
}
