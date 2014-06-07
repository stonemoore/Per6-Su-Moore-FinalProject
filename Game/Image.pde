  
  PImage cleanSprite(Character hero) {//removes white space for black space
  PImage input = hero.getImage();
  PImage output = createImage(input.width, input.height, RGB);
  input.loadPixels();
  output.loadPixels();
  for (int x = 0; x < input.width; x++) {
    for (int y = 0; y < input.height; y++) {
      int location = x + y*input.width;
      output.pixels[location] = input.pixels[location];
    }
  }
  output.updatePixels();
  return output;
}

