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
  //Population
  //Drawing Surface
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1; 
  drawingSurfaceHeight = height*4/7;
  drawingDiameter = width*1/100;
  //menu
  menX = width*0;
  menY = height*5/7;
  menW = width*1;
  menH = height*2/6;
  //Btn1
  menBtX1 = width*0;
  menBtY1 = height*5/7;
  menBtW1 = width*2.25/9;
  menBtH1 = height*2.65/9;
  //btn2
  menBtX2 = width*1/4;
  menBtY2 = height*5/7;
  menBtW2 = width*2.25/9;
  menBtH2 = height*2.65/9;
  //Btn 3
  menBtX3 = width*1/2;
  menBtY3 = height*5/7;
  menBtW3 = width*2.25/9;
  menBtH3 = height*2.65/9;
  //Quit
  quitX = width*6/8;
  quitY = height*5/7;
  quitW = width*2.25/9; 
  quitH = height*2.65/9;
  //Dropdown 1
  drpdwn1X = width*0;
  drpdwn1Y = height*3.99/7;
  drpdwn1W = width*2.25/9;
  drpdwn1H = height*1.32/9;
  //Dropdown 2
  drpdwn2X = width*1/4;
  drpdwn2Y = height*3.99/7;
  drpdwn2W = width*2.25/9;
  drpdwn2H = height*1.32/9;
  //Dropdown 3
  drpdwn3X = width*1/2;
  drpdwn3Y = height*3.99/7;
  drpdwn3W = width*2.25/9;
  drpdwn3H = height*1.32/9;
  //Dropdown 4
  drpdwn4X = width*6/8;
  drpdwn4Y = height*3.99/7;
  drpdwn4W = width*2.25/9;
  drpdwn4H = height*1.32/9;
  //Grey Out 1
  //greyOut1X = width*0;
  //greyOut1Y = height*3.99/7;
  //greyOut1W = width*2.25/9;
  //greyOut1H = height*1.32/9;
  //---------Colour Picker Buttons---------
  //Red
  redX = width*0.03/9;
  redY = height*4.03/7;
  redW = width*0.3/9;
  redH = height*0.3/9;
  //Orange
  orangeX = width*0.3/9;
  orangeY = height*4.03/7;
  orangeW = width*0.3/9;
  orangeH = height*0.3/9;
  //Yellow
  yellowX = width*0.6/9;
  yellowY = height*4.03/7;
  yellowW = width*0.3/9;
  yellowH = height*0.3/9;
  //Green
  greenX = width*0.9/9;
  greenY = height*4.03/7;
  greenW = width*0.3/9;
  greenH = height*0.3/9;
  //Blue
  blueX = width*1.2/9;
  blueY = height*4.03/7;
  blueW = width*0.3/9;
  blueH = height*0.3/9;
  //Purple
  purpleX = width*1.5/9;
  purpleY = height*4.03/7;
  purpleW = width*0.3/9;
  purpleH = height*0.3/9;
  //White
  whiteX = width*1.8/9;
  whiteY = height*4.03/7;
  whiteW = width*0.3/9;
  whiteH = height*0.3/9;

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
  line (mouseX, mouseY, pmouseX, pmouseY); 
  //
  if ( mouseX>redX && mouseX<redX+redW && mouseY>redY && mouseY<redY+redH ) if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  fill (red);
  line (mouseX, mouseY, pmouseX, pmouseY);
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
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;
    }
  } //End drawing tools
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
