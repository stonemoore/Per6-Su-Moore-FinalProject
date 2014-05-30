boolean movingUp,movingRight,movingLeft,movingDown,walking;//move to character class and check there.
PImage map;

    void setup(){
       size(800,600);
       Character test = new Character("Character");
    }
    
    void draw(){
       background(0); 
       image(test.getImage(),0,0);// why doesn't test see it?
    }
