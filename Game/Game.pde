boolean turnUp,turnDown,turnLeft,turnRight,moving;//move to character class and check there.
PImage map;
Character test;

    void setup(){
      size(800,600);
      test = new Character("Character");
    }
    
    void draw(){
      //Character test = new Character("Character");
       background(0); 
      image(test.getImage(),test.getX(),test.getY());// why doesn't test see it?
    }
    
    void keyPressed(){//finishkeypress
      switch(key){
           case 's':
               turnDown = moving = true;
               break;
           case 'w':
               turnUp = moving = true;
               break;
           case 'a':
               turnLeft = moving = true;
               break;
           case 'd':
               turnRight = moving = true;
               break;            
      }
    }
      
      void keyReleased(){
         switch(key){
            case 's':
                moving = false;
                break;
            case 'w':
                moving = false;
                break;
            case 'a':
                moving = false;
                break;
            case 'd':
                moving = false;
                break;
         } 
        
      }
      /*
         if(key == 'S'){
           turnDown = moving = true;
         }
         if(key == 'W'){
           turnUp = moving = true;
         }
         if(key == 'A'){
            turnLeft = moving = true; 
         }
         if(key == 'D'){
            turnRight = moving = true; 
         } 
    */     

    
    void keyReleased(){
        
    }
    /*
    void keypressed/keyreleased
    */
