import ddf.minim.*; //<>//
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
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  String[] fontList = PFont.list(); 
  printArray(fontList);
  quitFont = createFont("TimesNewRomanPSMT", 25);
  //
} //End setup
//
//
void draw() 
{
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight)
  {
    line(mouseX, mouseY, pmouseX, pmouseY); //This code-line is for line vs. circle
  }//End line draw
  //---------Menu Draw---------
  fill (white);
  rect(menX, menY, menW, menH); 
  // - Menu Buttons
  //- Button 1
  if (mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1) {
    buttonFill = pink;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill);
  rect (menBtX1, menBtY1, menBtW1, menBtH1);
  fill(resetButtonColor);
  //- Button 2
  if (mouseX>menBtX2 && mouseX<menBtX2+menBtW2 && mouseY>menBtY2 && mouseY<menBtY2+menBtH2) {
    buttonFill = pink;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill);
  rect (menBtX2, menBtY2, menBtW2, menBtH2);
  fill(resetButtonColor);
  //- Button 3
  if (mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3) {
    buttonFill = pink;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill);
  rect (menBtX3, menBtY3, menBtW3, menBtH3);
  fill(resetButtonColor);
  //- Button 4
  if (mouseX>quitX && mouseX<quitX+quitW && mouseY>quitY && mouseY<quitY+quitH) {
    buttonFill = pink;
  } else {
    buttonFill = white;
  }//End Hover-Over
  fill(buttonFill);
  rect (quitX, quitY, quitW, quitH);
  fill(resetButtonColor);
  //
  fill (red);
  rect (quitTX, quitTY, quitTW, quitTH);
  fill (resetWhite);
  // Quit
  fill(red);
  textAlign(CENTER, CENTER);
  quitSize = 25;
  textFont(quitFont, 30);
  text(quit, quitX, quitY, quitW, quitH);
  fill(resetWhite);
  //---------Colour Picker---------
  fill(red);
  textAlign(CENTER, CENTER);
  quitSize = 25;
  textFont(quitFont, 30);
  text (Btn1, menBtX1, menBtY1, menBtW1, menBtH1);
  fill(resetWhite);
  //---------JukeBox---------
  fill(red);
  textAlign(CENTER, CENTER);
  quitSize = 25;
  textFont(quitFont, 30);
  text (Btn2, menBtX2, menBtY2, menBtW2, menBtH2);
  fill(resetWhite);
  //---------BackGround Colour---------
  fill(red);
  textAlign(CENTER, CENTER);
  quitSize = 25;
  textFont(quitFont, 30);
  text (Btn3, menBtX3, menBtY3, menBtW3, menBtH3);
  fill(resetWhite);
  //---------Grey Out 1---------
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
    if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight )
  {
    if (draw == false)
    {
      draw = true;
    } else {
      draw = false;
       }//End draw boolean
  }//End line draw
  //
  //---------Color Picker---------
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) rect(drpdwn1X, drpdwn1Y, drpdwn1W, drpdwn1H); //basic button code
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(red); 
  rect(redX, redY, redW, redH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(orange); 
  rect(orangeX, orangeY, orangeW, orangeH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(yellow); 
  rect(yellowX, yellowY, yellowW, yellowH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(green); 
  rect(greenX, greenY, greenW, greenH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(blue); 
  rect(blueX, blueY, blueW, blueH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(purple); 
  rect(purpleX, purpleY, purpleW, purpleH);
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) fill(white); 
  rect(whiteX, whiteY, whiteW, whiteH);
  //
  //---------JukeBox---------
  if ( mouseX>menBtX2 && mouseX<menBtX2+menBtW2 && mouseY>menBtY2 && mouseY<menBtY2+menBtH2 ) rect(drpdwn2X, drpdwn2Y, drpdwn2W, drpdwn2H); //basic button code
  //
  //---------Background Color---------
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) rect(drpdwn3X, drpdwn3Y, drpdwn3W, drpdwn3H); //basic button code
  //
  //---------Image Background---------
  if ( mouseX>drpdwn3X && mouseX<drpdwn3X+drpdwn3W && mouseY>drpdwn3Y && mouseY<drpdwn3Y+drpdwn3H ) rect(drpdwn4X, drpdwn4Y, drpdwn4W, drpdwn4H); //basic button code
  //
  //---------Quit---------
  if ( mouseX>quitX && mouseX<quitX+quitW && mouseY>quitY && mouseY<quitY+quitH ) exit(); //basic button code
  //
  //---------GreyOut1---------
}// End mousePressed
//
//End MAIN program
