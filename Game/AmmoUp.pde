public class AmmoUp extends PowerUp {
  private int ammo;
  //weapon loadup
  public AmmoUp(float x, float y, int ammoGained, String filename) {
    super(x, y, "ammo.png");
    setType("ammo");
    ammo = ammoGained;
  }

  public int getAmmo() {
    return ammo;
  }
}

