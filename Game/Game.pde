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
           if (key == CODED && keyCode == SHIFT){
               hero.toggleStrafing();
           }
           if (key == 's'){
               hero.setAngleTurned(180);
               hero.setMoving(true);
           }
           if (key == 'w'){
               hero.setAngleTurned(0);
               hero.setMoving(true);
           }
           if (key == 'a'){
               hero.setAngleTurned(270);
               hero.setMoving(true);
           }
           if (key == 'd'){
               hero.setAngleTurned(90);
               hero.setMoving(true);      
           }      
      }
      
      void keyReleased(){
              if (key == 's')
                hero.setMoving(false);
              if (key == 'w')
                hero.setMoving(false);
              if (key == 'a')
                hero.setMoving(false);
              if (key == 'd')
                hero.setMoving(false);                      
      }  

      
      
      
      
