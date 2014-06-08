public class Bullet {
  private PImage Icon;
  private double angle;
  private int power;
  private float x, y, speed;
  private boolean alive;

  public Bullet(double angle, float x, float y) {
    this.angle = angle;
    Icon = loadImage("Bullet.png");
    this.x = x;
    this.y = y;
    speed = power = 10;
    alive = true;
  }

  public PImage getIcon() {
    return Icon;
  }

  public Boolean getAlive() {
    return alive;
  }

  public void checkCollision(ArrayList<Monster> list) {
    for (Monster monster : list) {
      if ((samePlace(getX(), monster.getX(), 100)) && ((samePlace(getY(), monster.getY(), 100)))) {
        monster.minusHP(power);
        alive = false;
      }
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

