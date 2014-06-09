class Animation {

  PImage[] images;
  int imageCount;
  int frame;

  Animation (String imagePrefix, int count) {
    imageCount = count; //number of frames
    images = new PImage[imageCount]; 

    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + nf(i, 4) + ".gif"; //formats i to string for file reading
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {
    frame = (frame + 1) % imageCount; //loops around to beginning
    image(images[frame], xpos, ypos);
  }

}

