public static class GarbageCleanUp {
  public static void BulletCleanUp(ArrayList<Bullet> list) {
    for (Bullet bullet : list) {
      if (!(bullet.getAlive()))
        bullet = null;
    }
  }
  public static void PowerUpCleanUp(ArrayList<PowerUp> list) {
    for (PowerUp powerUp : list) {
      if (!(powerUp.getAlive()))
        powerUp = null;
    }
  }
}

