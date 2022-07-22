import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
color black=#000000;
Boolean draw=false;
//
 import processing.sound.*;
 
 SoundFile file;
  String audioName = "/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Songs Used/Animal Crossing_ New Horizons - Bubblegum K.K..mp3";
  String path;
void setup() 
{
  //Display checker
  //Display Orientation checker
  //Display and CANVAS checker
  size(500, 600); //Landscape (Portrait or Square)
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
} //End setup
//
void draw() 
{
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceHeight ) line (mouseX, mouseY, pmouseX, pmouseY);;
  fill (black);
  //
  //Eraser
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceHeight ) line (mouseX, mouseY, pmouseX, pmouseY);;
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
