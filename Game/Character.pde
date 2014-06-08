public class Character {
  private Animation up, down, left, right;
  private PImage charIcon;
  private double power, angle;
  private float x, y, speed;//floats because they dont take doubles for the paitning for images at x,y.
  public int ammo,hp;
  private String name;
  private boolean moving;

  public Character(String name) {
    this.name = name;
    charIcon = loadImage("up_idle.png");
    x = y = 200.0f;
    moving = false;
    angle = 0;
    speed = 4.0f;
    frameRate(24);
    up = new Animation("up/up", 18);
    right = new Animation("right/right", 18);
    down = new Animation("down/down", 18);
    left = new Animation("left/left", 18);
  }

  public float getX() {
    return x;
  }

  public PImage getIcon() {
    return charIcon;
  }

  public float getY() {
    return y;
  }

  public double getAngle() {
    return angle;
  }

  public void setMoving(boolean moving) {
    this.moving = moving;
  }

  public boolean getMoving() {
    return moving;
  }

  public void setAngleTurned(double angle) {
    this.angle = angle;
  }

  public void addHP(int a){
    hp += a; 
  }
  public PImage getImage() {
    return charIcon;
  }

  public void setImage(String s) {
    charIcon = loadImage(s);
  }

  public void shoot(ArrayList<Bullet> list) {
    list.add(new Bullet(getAngle(), getX(), getY()));
  }

  public void checkDrops(ArrayList<PowerUp> list) {
    for (PowerUp powerup : list) {
      if (samePlace(getX(), powerup.getX(), 100) &&
        samePlace(getY(), powerup.getY(), 100)) {
        powerup.givePlayer(this);
        powerup.setAlive(false);
      }
    }
  }

  public boolean samePlace(float playerVal, float monsterVal, int tolerance) {
    return tolerance > (Math.abs(playerVal - monsterVal));
  }


  public void move() {
    int width = 800;
    int length = 600;
    setImage("blank.png");
    switch((int)angle) {
    case 0: 
      up.display(x, y);
      if (y>0)
        y -= speed;
      break;
    case 90:
      right.display(x, y);
      if (x<width-100)//-100 accounts for image size
        x += speed;
      break;
    case 180:
      down.display(x, y);
      if (y<length-100)
        y += speed;
      break;
    case 270:
      left.display(x, y);
      if (x>0)
        x -= speed;
      break;
    }
  }
}


/*
   0,0 - - - -
 |          |ASCII representation of x,y coordinates
 |          |
 |__________800,600
 */
