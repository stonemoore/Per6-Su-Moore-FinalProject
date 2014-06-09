//fillinmaplater
PImage map;
PFont f;
Character hero;
int amountSlain;
ArrayList<Bullet> bullets;
ArrayList<Monster> monsters;
ArrayList<PowerUp> powerups;


void setup() {
  size(1000, 600);
  f = createFont("Arial", 32, true);
  map = loadImage("bg.png");
  hero = new Character("Character");
  bullets = new ArrayList<Bullet>();
  monsters = new ArrayList<Monster>();
  powerups = new ArrayList<PowerUp>();
  monsters.add(new Monster(20, 20, 2));
  powerups.add(new AmmoUp(400,400,20));
}

void draw() {
  background(map);
  textFont(f, 16);
  fill(255);
  image(hero.getIcon(), hero.getX(), hero.getY());//coordinates are floats.
  hero.checkDrops(powerups);
  if (hero.getMoving())
    hero.move();
    
  for (Bullet bullet : bullets) { //BULLETSTREAMOVEMENT
    image(bullet.getIcon(), bullet.getX(), bullet.getY());
    bullet.move();
    bullet.checkCollision(monsters);
  }
  for (Monster monster : monsters) {
    monster.path(hero);
    monster.move();
    if (monster.isDead()&&!(monster.getCounted())) {
      monster.setCounted(true); 
      amountSlain++;
      if (Math.random()<.9) {
        if (Math.random()<.5) {
          powerups.add(new AmmoUp(monster.getX(), monster.getY(), 20));
        } else {
          powerups.add(new HealthUp(monster.getX(), monster.getY(), 20));
        }
      }
    }
  }
  for (PowerUp powerup : powerups) {
    image(powerup.getIcon(),powerup.getX(),powerup.getY());
  }
  text("Character HP: " + hero.getHP(), 800, 100);
  text("Ammo left: " + hero.getAmmo(),800,150);
  text("Monsters slain: " + amountSlain, 800, 200);
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
    if(hero.getAmmo()>0){
    hero.shoot(bullets);
    hero.setAmmo(hero.getAmmo()-1);
    }
    break;
  case 'q':
    hero.setCurrent(hero.getCurrent().getLeft());
    break;
  case 'e':
    hero.setCurrent(hero.getCurrent().getRight());
    break;
  }
}

void keyReleased() {
  switch(key) {
  case 's':
    hero.setMoving(false);
    hero.setImage("hero/down_idle.png");
    break;
  case 'w':
    hero.setMoving(false);
    hero.setImage("hero/up_idle.png");
    break;
  case 'a':
    hero.setMoving(false);
    hero.setImage("hero/left_idle.png");
    break;
  case 'd':
    hero.setMoving(false); 
    hero.setImage("hero/right_idle.png");    
    break;
  }
}

