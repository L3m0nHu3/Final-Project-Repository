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
  quitX = width*7/8;
  quitY = height*5/7;
  quitW = width*1/7; 
  quitH = height*2/6;
  BtnTX = width*0;
  BtnTY= height*5/7;
  BtnTW = width*2/7;
  BtnTH = height*2/6;
//
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  //String[] fontList = PFont.list(); 
  //printArray(fontList);
  //Button1Font = createFont("TimesNewRomanPSMT", 25);
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
  if (mouseX>quitX && mouseX<quitX+quitW && mouseY>quitY && mouseY<quitY+quitH) {
    buttonFill = purple;
  } else {
    buttonFill = pink;
  }//End Hover-Over
  fill(buttonFill);
  rect (quitY, quitX, quitH, quitW);
  fill(resetButtonColor);
  //
  //fill (red);
  //rect (BtnTX, BtnTY, BtnTW, BtnTH);
  //fill (resetWhite);
  //
  //fill(purple);
  //textAlign(LEFT, BOTTOM);
  //Button1Size = 25;
  //textFont(Button1Font, 30);
  //text(menBtX1, menBtY1, menBtW1, menBtH1);
  //fill(resetWhite);
  //
} //End draw
//
void keyPressed() 
{
  if (key=='Q' || key=='q')  exit();
} //End keyPressed
//
void mousePressed() 
{
  //---------Drawing---------
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
    }
  } //End drawing tools
  //
  //---------Quit---------
  if ( mouseX>quitX && mouseX<quitX+quitW && mouseY>quitY && mouseY<quitY+quitH ) exit(); //basic button code
  //
}// End mousePressed
//
//End MAIN program
