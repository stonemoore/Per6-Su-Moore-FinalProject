import java.awt.*; 
import java.awt.event.*; 
import javax.swing.*; 
public class Character{
    public int HP;
    private String imageSource;
    private double x,y,power,speed;
    private Image image;
    private boolean left,right,up,down,shooting;
    //weapon,projectiles to implement
    //power would be a multiplier for weapon dmg.
    //speed++ to certain sure

    public Character(){
	ImageIcon imageBuffer = new ImageIcon("yami_yugi.jpg"); //placeholder
	  image = imageBuffer.getImage();

	//add x and y positioning.
	x = 200;
	y = 200;
	left = right = up = down = shooting = false;
	/*
	  when a boolean is active, it faces that direction,find better ways to implement
	 */
    }
    
}
