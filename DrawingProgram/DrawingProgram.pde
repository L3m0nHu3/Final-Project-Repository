import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
void setup() 
{
  //Display checker
  //Display Orientation checker
  //Display and CANVAS checker
  size(900,785); //Landscape (Portrait or Square)
  //
  //Population
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1; 
  drawingSurfaceHeight = height*3/5;
  drawingDiameter = width*1/100;
  menX = width*0;
  menY = height*3/4;
  menW = width*1;
  menH = height*3/4;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
} //End setup
//
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
  fill (grey);
  rect(menX, menY, menW, menH);
  stroke(1);
  fill (resetWhite); 
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
