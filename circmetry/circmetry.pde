// inspired by http://www.synthestruct.com/spirometry/

//SMALL AND BIG CIRCLE RADIUS
float radiusSmallCircle = 200;
float radiusBigCircle = 350;

//SMALL AND BIG CIRCLE COORDS FOR LINES
float InX, InY, OutX, OutY;

float linesSpawn = 50;

float rotationOut = 10;
float rotationIn = 4;

//ROTATION STEP IN DEGREE
float rotationStepIn;
float rotationStepOut;

int i = 0;

void setup()
{
  background(255);
  size(800, 800);
}

void draw()
{
  rotationStepOut = (360*rotationOut) / (linesSpawn*rotationOut);
  rotationStepIn = (360*rotationIn) / (linesSpawn*rotationOut);
  
  if (i < (linesSpawn*rotationOut))
  {
    pushMatrix();
    translate(width/2, height/2);
    
    //360-ANGLE MAKES PROGRESS BETWEEN 0 TO 360
    //COS MAKES A POSITION IN X
    //SIN MAKES A POSITION IN Y
    //MULTIPLY BY RADIUS TO HAVE POSITION ON THE CIRCLE
    OutX = radiusBigCircle * cos(radians(360-(rotationStepOut*i)));
    OutY = radiusBigCircle * sin(radians(360-(rotationStepOut*i)));
    InX = radiusSmallCircle * cos(radians(360-(rotationStepIn*i)));
    InY = radiusSmallCircle * sin(radians(360-(rotationStepIn*i)));
    
    stroke(0);
    strokeWeight(.5);
    line(InX,InY,OutX,OutY);
    popMatrix();
    
    i += 1;
  }
  
  
}