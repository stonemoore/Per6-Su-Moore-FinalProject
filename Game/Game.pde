//fillinmaplater
PImage map;
Character hero;
Monster test;
ArrayList<Bullet> bullets;



void setup() {
  size(800, 600);
  hero = new Character("Character");
  bullets = new ArrayList<Bullet>();
  test = new Monster(20,20,3);
}

void draw() {
  background(0); 
  image(hero.getIcon(), hero.getX(), hero.getY());//coordinates are floats.
  image(test.getIcon(), test.getX(), test.getY());
  test.path(hero);
  test.move();
  
  if (hero.getMoving())
    hero.move();
  for (Bullet bullet : bullets) { //BULLETSTREAMOVEMENT
    image(bullet.getIcon(), bullet.getX(), bullet.getY());
    bullet.move();
  }
}

void keyPressed() {
  switch(key) {
  case 's':
    hero.setAngleTurned(180);
    hero.setMoving(true);
    break;
  case 'w':
    hero.setAngleTurned(0);
    hero.setMoving(true);
    break;
  case 'a':
    hero.setAngleTurned(270);
    hero.setMoving(true);
    break;
  case 'd':
    hero.setAngleTurned(90);
    hero.setMoving(true);   
    break;
  case 'z':
    hero.shoot(bullets);
    break;
  }
}

void keyReleased() {
  switch(key) {
  case 's':
    hero.setMoving(false);
    hero.setImage("down_idle.png");
    break;
  case 'w':
    hero.setMoving(false);
    hero.setImage("up_idle.png");
    break;
  case 'a':
    hero.setMoving(false);
    hero.setImage("left_idle.png");
    break;
  case 'd':
    hero.setMoving(false); 
    hero.setImage("right_idle.png");    
    break;
  }
}



/*void mousePressed() {
 if(hero.getAngle() == 0.0)
 Bullet b = new Bullet(0, hero.getX(), hero.getY());
 if(hero.getAngle() == 90.0)
 Bullet b = new Bullet(90, hero.getX(), hero.getY());
 if(hero.getAngle() == 180.0)
 Bullet b = new Bullet(180, hero.getX(), hero.getY());
 if(hero.getAngle() == 270.0)
 Bullet b = new Bullet(270, hero.getX(), hero.getY());
 }*/


