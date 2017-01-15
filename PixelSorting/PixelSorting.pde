// tutorial: https://youtu.be/JUDYkxU6J0o

PImage img;
PImage sorted;


void setup() {
  size(1200,600);
  
  img = loadImage("myimage"+"."+"jpg");
  sorted = img.get();
  //sorted = createImage(img.width, img.height, RGB);
  sorted.loadPixels();
  
  // Selection sort:
  for (int i = 0; i < sorted.pixels.length; i++) {
    float record = -1;
    int selectedPixel = i;
    
    for (int j = i; j < sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      float b = brightness(pix);
      if (b > record) {
        selectedPixel = j;
        record = b;
      }
      
    }
    
    // Swap selectedPixel with i
    color temp = sorted.pixels[i];
    sorted.pixels[i] = sorted.pixels[selectedPixel];
    sorted.pixels[selectedPixel] = temp;
    
  }
  
  sorted.updatePixels();
  
}

void draw() {
  background(0);
  image(img,0,0);
  image(sorted,img.width,0);
}