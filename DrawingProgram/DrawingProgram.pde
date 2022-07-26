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
  size(900, 785); //Landscape (Portrait or Square)
  //
  //Population
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1; 
  drawingSurfaceHeight = height*4/7;
  drawingDiameter = width*1/100;
  menX = width*0;
  menY = height*5/7;
  menW = width*1;
  menH = height*2/6;
  menBtX1 = width*0;
  menBtY1 = height*5/7;
  menBtW1 = width*2/7;
  menBtH1 = height*2/6;
  menBtX2 = width*1/4;
  menBtY2 = height*5/7;
  menBtW2 = width*2/7;
  menBtH2 = height*2/6;
  menBtX3 = width*1/2;
  menBtY3 = height*5/7;
  menBtW3 = width*2/7;
  menBtH3 = height*2/6;
  menBtX4 = width*6/8;
  menBtY4 = height*5/7;
  menBtW4 = width*2/7; 
  menBtH4 = height*2/6;

  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  String[] fontList = PFont.list(); 
  printArray(fontList);
  Button1Font = createFont("TimesNewRomanPSMT", 25);
  //
} //End setup
//
//
void draw() 
{
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY); 
  //
  //---------Menu Draw---------
  fill (white);
  rect(menX, menY, menW, menH); 
  // - Menu Buttons
  //- Button 1
  fill (white);
  rect(menBtX1, menBtY1, menBtW1, menBtH1);
  //- Button 2
  fill (white);
  rect(menBtX2, menBtY2, menBtW2, menBtH2);
  //- Button 3
  fill (white);
  rect(menBtX3, menBtY3, menBtW3, menBtH3);
  //- Button 4
  fill (white);
  rect(menBtX4, menBtY4, menBtW4, menBtH4);
  //
  fill(purple);
  textAlign(CENTER, CENTER);
  Button1Size = 25;
  textFont(Button1Font, Button1Size);
  text(menBtX1, menBtY1, menBtW1, menBtH1);
  fill(resetWhite);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() 
{
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
    }
  } //End drawing tools
}// End mousePressed
//
//End MAIN program
