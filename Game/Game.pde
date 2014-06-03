//fillinmaplater
PImage map;
Character hero;

    void setup(){
      size(800,600);
      hero = new Character("Character");
    }
    
    void draw(){
       background(0); 
       image(cleanSprite(hero),hero.getX(),hero.getY());//coordinates are floats.
       if(hero.getMoving()){
       hero.move();
       }
    }
    
    void keyPressed(){
       switch(key){
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
          }      
      }
      
      void keyReleased(){
       switch(key){
            case 's':
                hero.setMoving(false);
                break;
            case 'w':
                hero.setMoving(false);
                break;
            case 'a':
                hero.setMoving(false);
                break;
            case 'd':
                hero.setMoving(false);               
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
 

      
      
      
      
