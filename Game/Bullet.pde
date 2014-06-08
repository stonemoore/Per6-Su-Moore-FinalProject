public class Bullet {
  private PImage Icon;
  private double angle;
  private int power;
  private float x, y, speed;
  private boolean alive;

  public Bullet(double angle, float x, float y) {
    this.angle = angle;
    if (hero.getCurrent().getFile() == "Trap")
      Icon = loadImage("Trap.png");
    else{
      switch((int) angle) {
        case 0:
          Icon = loadImage(hero.getCurrent().getFile()+"_up.png");
          break;
        case 90:
          Icon = loadImage(hero.getCurrent().getFile()+"_right.png");
          break;
        case 180:
          Icon = loadImage(hero.getCurrent().getFile()+"_down.png");
          break;
        case 270:
          Icon = loadImage(hero.getCurrent().getFile()+"_left.png");
          break;
      }
    }   
    this.x = x;
    this.y = y;
    speed = hero.getCurrent().getSpeed();
    power = hero.getCurrent().getPower();
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
      if ((samePlace(getX(), monster.getX(), 50)) && ((samePlace(getY(), monster.getY(), 50))) && alive == true && !(monster.isDead())) {
        monster.minusHP(power);
        Icon = loadImage("blank.png");
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

