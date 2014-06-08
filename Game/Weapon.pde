public class Weapon{
  
  private int power, ammo;
  private Weapon left, right;
  private String file;
  private float speed;
  
  public Weapon(int p, int a, String f, float s){
    power = p;
    ammo = a;
    file = f;
    speed = s;
  }
  
  public String getFile(){
    return file;
  } 
  
  public float getSpeed(){
    return speed; 
  }
  
  public int getPower(){
    return power; 
  }
  
  public Weapon getLeft(){
    return left; 
  }
  
  public Weapon getRight(){
    return right;
  }
  
  public void setLeft(Weapon l){
    left = l;
  }
  
  public void setRight(Weapon r){
    right = r;
  }
  
}
