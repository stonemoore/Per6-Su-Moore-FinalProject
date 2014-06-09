public class AmmoUp extends PowerUp {
  private int ammo;
  //weapon loadup
  public AmmoUp(float x, float y, int ammoGained) {
    super(x, y, "ammo.png");
    ammo = ammoGained;
  }

  public void givePlayer(Character hero){
     hero.addAmmo(ammo);
  }

}

