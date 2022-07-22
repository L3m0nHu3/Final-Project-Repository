import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//
//_~*Setup*~_
void setup() 
{
  //Display checker
  //Display Orientation checker
  //Display and CANVAS checker
  size(700, 600); //Landscape (Portrait or Square)
  //
  //Population
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4; 
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  //
  //---------Menu---------
  rect(menX, menY, menWidth, menHeight);
} //End setup
//
void draw() 
{
  noStroke();
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceHeight ) line (mouseX, mouseY, pmouseX, pmouseY);
  fill (black);
  //
  //Eraser
  if ( draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceHeight ) line (mouseX, mouseY, pmouseX, pmouseY);
  //
  //---------Menu Draw---------
  //rect();
   
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() 
{
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceHeight) {
    if ( draw ==true ) {
      draw=false;
    } else {
      draw = true;
    }
  } //End drawing tools
}// End mousePressed
//
//End MAIN program
