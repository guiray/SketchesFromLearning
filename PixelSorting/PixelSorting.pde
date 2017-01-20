// inspired by tutorial by Daniel Shiffman: https://youtu.be/JUDYkxU6J0o
// inspired by processing sketch: https://github.com/kimasendorf/ASDFPixelSort

PImage img;
String imgFileName = "myimage";
String fileType = "jpg";
//PImage sorted;

int row = 0;
int column = 0;

void setup() {
  
  img = loadImage(imgFileName+"."+fileType);
  size(1,1);
  
  // allow resize
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
  
  // Load image
  image(img, 0, 0, width, height);
  
  //sorted = img.get();
  //sorted.loadPixels();
  
  // Selection sort:
  //for (int i = 0; i < sorted.pixels.length; i++) {
  //  float record = -1;
  //  int selectedPixel = i;
    
  //  for (int j = i; j < sorted.pixels.length; j++) {
  //    color pix = sorted.pixels[j];
  //    float b = hue(pix);
  //    if (b > record) {
  //      selectedPixel = j;
  //      record = b;
  //    }
      
  //  }
    
    // Swap selectedPixel with i
    //color temp = sorted.pixels[i];
    //sorted.pixels[i] = sorted.pixels[selectedPixel];
    //sorted.pixels[selectedPixel] = temp;
    
  //}
//  
  //sorted.updatePixels();
  
}

void draw() {
  
  // loop through colums
  while (column < img.width-1) {
    //println("Sorting Column " + column);
    img.loadPixels();
    sortColumn();
    column++;
    img.updatePixels();
  }
  
  // loop through rows
  while (row < img.height-1) {
    //println("Sorting Row " + row);
    img.loadPixels();
    sortRow();
    row++;
    img.updatePixels();
  }
  
  // load updated image
  image(img, 0, 0, width, height);
  
  
  
  
  //background(0);
  //image(img,0,0);
//image(sorted,img.width,0);
}

void sortRow() {
  //println(row);
}

void sortColumn() {
  //println(column);
}