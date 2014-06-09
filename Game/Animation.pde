public class Animation {

  private PImage[] images;
  private int imagecount;
  private int frame;

  public Animation (String imageprefix, int c) {
    imagecount = c; //number of frames
    images = new PImage[imagecount]; 

    for (int i = 0; i < imagecount; i++) {
      String filename = imageprefix + nf(i, 4) + ".gif"; //formats i to string for file reading
      images[i] = loadImage(filename);
    }
  }

  public void display(float xpos, float ypos) {
    frame = (frame + 1) % imagecount; //loops around to beginning
    image(images[frame], xpos, ypos);
  }
  

}

