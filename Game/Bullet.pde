public class Bullet {
  private PImage bulletIcon;
  private double angle;
  private int power;
  private float x, y, speed;

  public Bullet(double angle, float x, float y) {
    this.angle = angle;
    bulletIcon = loadImage("Bullet.png");
    this.x = x;
    this.y = y;
    speed = power = 10;
  }

  public PImage getIcon() {
    return bulletIcon;
  }

  public void checkCollision(ArrayList<Monster> list) {
    for (Monster monster : list) {
      if ((samePlace(getX(),monster.getX(),100)) && ((samePlace(getY(),monster.getY(),100))))
        monster.minusHP(power);
       // this = null;
      }
    }

  public boolean samePlace(float bulletValue, float monsterValue, int tolerance) {
    return tolerance > (Math.abs(bulletValue - monsterValue));
  }

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }

  public void move() {
    switch((int)angle) {
    case 0:
      y -= speed;
      break;
    case 90:
      x += speed;
      break;
    case 180:
      y += speed;
      break;
    case 270:
      x -= speed;
      break;
    }
  }
}

