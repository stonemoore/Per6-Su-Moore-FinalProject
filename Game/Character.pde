public class Character {
  private Animation up, down, left, right, Acurrent;
  private PImage charIcon;
  private double power, angle;
  private float x, y, speed;//floats because they dont take doubles for the paitning for images at x,y.
  public int ammo, hp;
  private String name;
  private boolean moving, strafing;
  private Weapon gun, rocket, trap, current;

  public Character(String name) {
    this.name = name;
    hp = ammo = 100;
    charIcon = loadImage("hero/up_idle.png");
    x = y = 200.0f;
    moving = false;
    angle = 0;
    speed = 8.0f;
    frameRate(24);
    up = new Animation("hero/up/up", 18);
    right = new Animation("hero/right/right", 18);
    down = new Animation("hero/down/down", 18);
    left = new Animation("hero/left/left", 18);
    gun = new Weapon(2, 100, "Bullet", 20);
    rocket = new Weapon(10, 20, "Rocket", 5);
    trap = new Weapon(20, 5, "Trap", 0);
    gun.setLeft(trap);
    gun.setRight(rocket);
    rocket.setLeft(gun);
    rocket.setRight(trap);
    trap.setLeft(rocket);
    trap.setRight(gun);
    current = gun;
    Acurrent = up;
  }

  public Weapon getCurrent() {
    return current;
  }

  public void setCurrent(Weapon w) {
    current = w;
  }

  public int currentID() {
    if (current == gun)
      return 0;
    else if (current == rocket)
      return 1;
    else
      return 2;
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

  public void toggleStrafing(){
    strafing = !strafing; 
  }

  public void setMoving(boolean moving) {
    this.moving = moving;
  }

  public boolean getMoving() {
    return moving;
  }

  public boolean getStrafing(){
     return strafing; 
  }

  public void setAngleTurned(double angle) {
    this.angle = angle;
  }

  public void addHP(int a) {
    hp += a;
  }

  public int getHP() {
    return hp;
  }
  public PImage getImage() {
    return charIcon;
  }

  public void setImage(String s) {
    charIcon = loadImage(s);
  }

  public int getAmmo(int n) {
    switch(n){
      case 0:
        return gun.getAmmo();
      case 1:
        return rocket.getAmmo();
      case 2:
        return trap.getAmmo();
    }
    return -1;
  }
  
  public void setAmmo(int ammo) {
    this.ammo = ammo;
  }
  
  public void addAmmo(int a) {
    gun.addAmmo(a);
    rocket.addAmmo(a/3); 
    trap.addAmmo(a/6);
  }
  
  public void setHP(int hp){
    this.hp = hp; 
  }
  
  public void shoot(ArrayList<Bullet> list) {
    current.useAmmo();
    if(Acurrent == up)
      list.add(new Bullet(0, getX()+3, getY()-15));
    else if(Acurrent == right)
      list.add(new Bullet(90, getX()+20, getY()+15));
    else if(Acurrent == down)
      list.add(new Bullet(180, getX()+3, getY()+30));
    else if(Acurrent == left)
      list.add(new Bullet(270, getX()-10, getY()+15));
  }

  public void checkDrops(ArrayList<PowerUp> list) {
    for (PowerUp powerup : list) {
      if (samePlace(getX(), powerup.getX(), 20) && samePlace(getY(), powerup.getY(), 20) && powerup.getAlive()) {
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
      if(!strafing)
        Acurrent = up;
      Acurrent.display(x, y);
      if (y>0)
        y -= speed;
      break;
    case 90:
      if(!strafing)
        Acurrent = right;
      Acurrent.display(x, y);
      if (x<width-100)//-100 accounts for image size
        x += speed;
      break;
    case 180:
      if(!strafing)
        Acurrent = down;
      Acurrent.display(x, y);
      if (y<length-100)
        y += speed;
      break;
    case 270:
      if(!strafing)
        Acurrent = left;
      Acurrent.display(x, y);
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
