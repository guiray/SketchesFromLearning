PImage img;
PImage sorted;

void setup() {
  size(1200,600);
  img = loadImage("myimage"+".jpg");
  sorted = createImage(img.width, img.height, RGB);
  //img.loadPixels();
  //for (int i = 0; i < sorted.pixels.length; i++) {
  //  sorted.pixels[i] = img.pixels[i];
  //}
  sorted = img.get();
  sorted.loadPixels();

  
  // Selection sort:
  for (int i = 0; i < sorted.pixels.length; i++) {
    for (int j = 0; j < sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      float b = brightness(pix);
    }
  }
  
  
  for (int j = 0; j < sorted.pixels.length; j++) {
    color pix = sorted.pixels[j];
    float b = brightness(pix);
  }
  
  
  sorted.updatePixels();
  
  
  
}

void draw() {
  background(0);
  image(img,0,0);
  image(sorted,img.width,0);
}