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
  greyOut1X = width*0;
  greyOut1Y = height*3.99/7;
  greyOut1W = width*2.25/9;
  greyOut1H = height*1.32/9;
  //---------Colour Picker Buttons---------
  //Red
  red1X = width*0.03/9;
  red1Y = height*4.03/7;
  red1W = width*0.3/9;
  red1H = height*0.3/9;
  //Orange
  orange1X = width*0.3/9;
  orange1Y = height*4.03/7;
  orange1W = width*0.3/9;
  orange1H = height*0.3/9;
  //Yellow
  yellow1X = width*0.6/9;
  yellow1Y = height*4.03/7;
  yellow1W = width*0.3/9;
  yellow1H = height*0.3/9;
  //Green
  green1X = width*0.9/9;
  green1Y = height*4.03/7;
  green1W = width*0.3/9;
  green1H = height*0.3/9;
  //Blue
  blue1X = width*1.2/9;
  blue1Y = height*4.03/7;
  blue1W = width*0.3/9;
  blue1H = height*0.3/9;
  //Purple
  purple1X = width*1.5/9;
  purple1Y = height*4.03/7;
  purple1W = width*0.3/9;
  purple1H = height*0.3/9;
  //White
  white1X = width*1.8/9;
  white1Y = height*4.03/7;
  white1W = width*0.3/9;
  white1H = height*0.3/9;
  //Black
  black1X = width*0.03/9;
  black1Y = height*4.27/7;
  black1W = width*0.3/9;
  black1H = height*0.3/9;
  //---------Background Picker Buttons---------
  //Red2
  red2X = width*1.008/2;
  red2Y = height*4.03/7;
  red2W = width*0.3/9;
  red2H = height*0.3/9;
  //Orange2
  orange2X = width*1.6/3;
  orange2Y = height*4.03/7;
  orange2W = width*0.3/9;
  orange2H = height*0.3/9;
  //Yellow2
  yellow2X = width*1.7/3;
  yellow2Y = height*4.03/7;
  yellow2W = width*0.3/9;
  yellow2H = height*0.3/9;
  //Green2
  green2X = width*1.8/3;
  green2Y = height*4.03/7;
  green2W = width*0.3/9;
  green2H = height*0.3/9;
  //Blue2
  blue2X = width*1.9/3;
  blue2Y = height*4.03/7;
  blue2W = width*0.3/9;
  blue2H = height*0.3/9;
  //Purple2
  purple2X = width*2/3;
  purple2Y = height*4.03/7;
  purple2W = width*0.3/9;
  purple2H = height*0.3/9;
  //White2
  white2X = width*2.1/3;
  white2Y = height*4.03/7;
  white2W = width*0.3/9;
  white2H = height*0.3/9;
  //Black2
  black2X = width*1.008/2;
  black2Y = height*4.27/7;
  black2W = width*0.3/9;
  black2H = height*0.3/9;
  
  //
  String[] fontList = PFont.list(); 
  printArray(fontList);
  quitFont = createFont("TimesNewRomanPSMT", 25);
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
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
  } //End drawing tools------Color Picker---------
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) rect(drpdwn1X, drpdwn1Y, drpdwn1W, drpdwn1H); //basic button code
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) { 
    fill(red); 
    rect(red1X, red1Y, red1W, red1H);
    fill (resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(orange); 
    rect(orange1X, orange1Y, orange1W, orange1H);
    fill (resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(yellow); 
    rect(yellow1X, yellow1Y, yellow1W, yellow1H);
    fill (resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(green); 
    rect(green1X, green1Y, green1W, green1H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(blue); 
    rect(blue1X, blue1Y, blue1W, blue1H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(purple); 
    rect(purple1X, purple1Y, purple1W, purple1H);
    fill (resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(white); 
    rect(white1X, white1Y, white1W, white1H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX1 && mouseX<menBtX1+menBtW1 && mouseY>menBtY1 && mouseY<menBtY1+menBtH1 ) {
    fill(black); 
    rect(black1X, black1Y, black1W, black1H);
    fill(resetWhite);
  };
  //
  //---------JukeBox---------
  if ( mouseX>menBtX2 && mouseX<menBtX2+menBtW2 && mouseY>menBtY2 && mouseY<menBtY2+menBtH2 ) rect(drpdwn2X, drpdwn2Y, drpdwn2W, drpdwn2H); //basic button code
  //
  //---------Background Color---------
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) rect(drpdwn3X, drpdwn3Y, drpdwn3W, drpdwn3H); //basic button code
  //
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(red);
    rect(red2X, red2Y, red2W, red2H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(orange);
    rect(orange2X, orange2Y, orange2W, orange2H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(yellow);
    rect(yellow2X, yellow2Y, yellow2W, yellow2H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(green);
    rect(green2X, green2Y, green2W, green2H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(blue);
    rect(blue2X, blue2Y, blue2W, blue2H);
    fill(resetWhite);
  };
  if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(purple);
    rect(purple2X, purple2Y, purple2W, purple2H);
    fill(resetWhite);
  };
   if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(white);
    rect(white2X, white2Y, white2W, white2H);
    fill(resetWhite);
  };
   if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
    fill(black);
    rect(black2X, black2Y, black2W, black2H);
    fill(resetWhite);
  };
  //
  //---------Image Background---------
  if ( mouseX>drpdwn3X && mouseX<drpdwn3X+drpdwn3W && mouseY>drpdwn3Y && mouseY<drpdwn3Y+drpdwn3H ) rect(drpdwn4X, drpdwn4Y, drpdwn4W, drpdwn4H); //basic button code
  //
  //---------Quit---------
  if ( mouseX>quitX && mouseX<quitX+quitW && mouseY>quitY && mouseY<quitY+quitH ) exit(); //basic button code
  //
  //Red
  if ( mouseX>red1X && mouseX<red1X+red1W && mouseY>red1Y && mouseY<red1Y+red1H ) {
    stroke (red);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //Orange
  if ( mouseX>orange1X && mouseX<orange1X+orange1W && mouseY>orange1Y && mouseY<orange1Y+orange1H ) {
    stroke (orange);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //Yellow
  if ( mouseX>yellow1X && mouseX<yellow1X+yellow1W && mouseY>yellow1Y && mouseY<yellow1Y+yellow1H ) {
    stroke (yellow);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //Green
  if ( mouseX>green1X && mouseX<green1X+green1W && mouseY>green1Y && mouseY<green1Y+green1H ) {
    stroke (green);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //Blue
  if ( mouseX>blue1X && mouseX<blue1X+blue1W && mouseY>blue1Y && mouseY<blue1Y+blue1H ) {
    stroke (blue);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //Purple
  if ( mouseX>purple1X && mouseX<purple1X+purple1W && mouseY>purple1Y && mouseY<purple1Y+purple1H ) {
    stroke (purple);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //White
  if ( mouseX>white1X && mouseX<white1X+white1W && mouseY>white1Y && mouseY<white1Y+white1H ) {
    stroke (white);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //black
  if ( mouseX>black1X && mouseX<black1X+black1W && mouseY>black1Y && mouseY<black1Y+black1H ) {
    stroke (black);
    line (mouseX, mouseY, pmouseX, pmouseY);
  };
  //---------GreyOut1---------
}// End mousePressed
//
//End MAIN program
