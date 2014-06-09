//fillinmaplater
PImage map;
import java.util.*;
PFont f;
Character hero;
int amountSlain;
ArrayList<Bullet> bullets;
ArrayList<Monster> monsters;
ArrayList<PowerUp> powerups;
Animation explosion, mup, mdown, mleft, mright;
Random r;
String Icurrent = "hero/up_idle.png";


void setup() {
  size(1000, 600);
  f = createFont("Arial", 32, true);
  map = loadImage("bg.png");
  hero = new Character("Character");
  bullets = new ArrayList<Bullet>();
  monsters = new ArrayList<Monster>();
  powerups = new ArrayList<PowerUp>();
  monsters.add(new Monster(20, 20, 2));
  powerups.add(new AmmoUp(400, 400, 20));
  explosion = new Animation("explosion/explosion",28);
  r = new Random();
  mdown = new Animation("enemy1/down/down",42);
  mleft = new Animation("enemy1/left/left",42);
  mright = new Animation("enemy1/right/right",42);
  mup = new Animation("enemy1/up/up",42);
}

void draw() {
  background(map);
  textFont(f, 16);
  fill(255);
  if (hero.getHP() > 0) {
    image(hero.getIcon(), hero.getX(), hero.getY());//coordinates are floats.
  }
  hero.checkDrops(powerups);
  if (hero.getMoving())
    hero.move();
  if (hero.getHP() <= 0){
      System.exit(0); 
  }
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
      if (Math.random()<.6) {
        if (Math.random()<.5) {
          powerups.add(new AmmoUp(monster.getX(), monster.getY(), 20));
        } else {
          powerups.add(new HealthUp(monster.getX(), monster.getY(), 20));
        }
      }
    }
  }
  for (PowerUp powerup : powerups) {
    image(powerup.getIcon(), powerup.getX(), powerup.getY());
  }

  if (Math.random()<.005) {
    monsters.add(new Monster(r.nextInt(700), r.nextInt(550), 1));
  }

  text("Character HP: " + hero.getHP(), 805, 100);
  text("Current Weapon: " + nameFix(hero.getCurrent().getFile()), 805, 150);
  text("Bullets left: " + hero.getAmmo(0), 805, 175);
  text("Rockets left: " + hero.getAmmo(1), 805, 200);
  text("Bombs left: " + hero.getAmmo(2), 805, 225);
  text("Monsters slain: " + amountSlain, 805, 275);
}

String nameFix(String s){
  if(s == "Bullet")
    return "Gun";
  else if(s == "Trap")
    return "Bomb";
  else 
    return s;
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
    if (hero.getAmmo(hero.currentID())>0) {
      hero.shoot(bullets);
      //hero.setAmmo(hero.getAmmo()-1);
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
    if (!hero.getStrafing())
      Icurrent = "hero/down_idle.png";
    hero.setImage(Icurrent);
    break;
  case 'w':
    hero.setMoving(false);
    if (!hero.getStrafing())
      Icurrent = "hero/up_idle.png";
    hero.setImage(Icurrent);
    break;
  case 'a':
    hero.setMoving(false);
    if (!hero.getStrafing())
      Icurrent = "hero/left_idle.png";
    hero.setImage(Icurrent);
    break;
  case 'd':
    hero.setMoving(false); 
    if (!hero.getStrafing())
      Icurrent = "hero/right_idle.png";
    hero.setImage(Icurrent);   
    break;
  }
  if (key == CODED && keyCode == SHIFT)
     hero.toggleStrafing();
}

