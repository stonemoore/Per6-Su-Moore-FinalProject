//fillinmaplater
PImage map;
Character hero;
Monster test;
ArrayList<Bullet> bullets;
ArrayList<Monster> monsters;

void setup() {
  size(800, 600);
  hero = new Character("Character");
  bullets = new ArrayList<Bullet>();
  monsters = new ArrayList<Monster>();
  monsters.add(new Monster(20, 20, 3));
}

void draw() {
  background(0); 
  image(hero.getIcon(), hero.getX(), hero.getY());//coordinates are floats.

  if (hero.getMoving())
    hero.move();
  for (Bullet bullet : bullets) { //BULLETSTREAMOVEMENT
    image(bullet.getIcon(), bullet.getX(), bullet.getY());
    bullet.move();
    bullet.checkCollision(monsters);
  }
  for (Monster monster : monsters) {
    image(monster.getIcon(), monster.getX(), monster.getY());
    monster.path(hero);
    monster.move();
  }
  GarbageCleanUp.BulletCleanUp(bullets);
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
  case 'j':
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

