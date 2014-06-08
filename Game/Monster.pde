public class Monster {
  private PImage Icon;
  private int HP, power;
  private double angle;
  private float x, y, speed;
  private boolean moving; //uncheck if stun

  public Monster(int x, int y, int speed) {
    Icon = loadImage("zerg.png");
    HP = 100;
    power = 50;
    angle  = 0;
    this.x = x;
    this.y = y;
    this.speed = speed;
  }

  public float getX() {
    return x;
  }
  
  public void setDead(){
    Icon = loadImage("blank.png");
  }
  
  public boolean isDead(){
     return HP<=0;
  }

  public void setAngle(double angle) {
    this.angle = angle;
  }

  public float getY() {
    return y;
  }

  public void minusHP(int damage) {
    HP -= damage;
  }

  public int getPower() {
    return power;
  }

  public int getHP() {
    return HP;
  }
  
  public PImage getIcon(){
    return Icon; 
  }
  /*
   0,0 - - - -
   |          |ASCII representation of x,y coordinates
   |          |
   |__________800,600
   */
  public void path(Character target) {
    int Xdist = (int)(target.getX() - getX());
    int Ydist = (int)(target.getY() - getY());
    if( Xdist == 0 && Ydist == 0){
       return; 
    }
    if (Xdist > 0 && Ydist > 0) {//DOWNRIGHT
      if (Xdist > Ydist) {
        setAngle(90);
      } else {
        setAngle(180);
      }
    } else if (Xdist < 0 && Ydist < 0) {
      if (Xdist < Ydist) {
        setAngle(270);
      } else {
        setAngle(0);
      }
    } else if (Xdist == 0 || Ydist == 0){
      if(Ydist > 0){
        setAngle(180); 
      }
      if(Xdist > 0){
        setAngle(90);
      }
      if(Ydist < 0){
        setAngle(0);
      }
      if(Xdist < 0){
        setAngle(270); 
      }
    }
  }

public void move() {
  int width = 800;
  int length = 600;
  //setImage("blank.png");
  switch((int)angle) {
  case 0: 
    //up.display(x,y);
    if (y>0)
      y -= speed;
    break;
  case 90:
    //right.display(x,y);
    if (x<width-100)//-100 accounts for image size
      x += speed;
    break;
  case 180:
    //down.display(x,y);
    if (y<length-100)
      y += speed;
    break;
  case 270:
    //left.display(x,y);
    if (x>0)
      x -= speed;
    break;
  }
}
}
