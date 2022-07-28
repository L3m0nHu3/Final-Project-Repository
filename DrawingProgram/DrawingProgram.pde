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
  //Images
  //--------Loop1--------
  int picWidth = 50;
  int picHeight = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    loop1LD = picWidth;
    loop1SD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    loop1LD = picHeight;
    loop1SD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(loop1SD, loop1LD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) loop1WR = loop1LD / loop1LD;
  if ( widthLarger == true ) loop1HR = loop1SD / loop1LD;
  if ( heightLarger == true ) loop1WR = loop1SD / loop1LD;
  if ( heightLarger == true ) loop1HR = loop1LD / loop1LD;
  //
  loop1X = width*1.3/5;
  loop1Y = height*4.38/7;
  loop1W = width*3/70; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  loop1H = height*3/70;
  //
  loop1WA = loop1W * loop1WR;
  loop1HA = loop1H * loop1HR;
  println(loop1X, loop1Y, loop1WA, loop1HA); //Note: println() also verifies decimal places, complier will truncate
   pic1 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/Looponce.png");
  int pic1W = 512;
  int pic1H =  512;
  //
  //--------Loop2--------
   int picWidth1 = 50;
  int picHeight1 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    loop2LD = picWidth;
    loop2SD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    loop2LD = picHeight;
    loop2SD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(loop2SD, loop2LD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) loop2WR = loop2LD / loop2LD;
  if ( widthLarger == true ) loop2HR = loop1SD / loop2LD;
  if ( heightLarger == true ) loop2WR = loop2SD / loop2LD;
  if ( heightLarger == true ) loop2HR = loop2LD / loop2LD;
  //
  loop2X = width*2.299/5;
  loop2Y = height*4.39/7;
  loop2W = width*3/100; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  loop2H = height*3/100;
  //
  loop2WA = loop2W * loop2WR;
  loop1HA = loop2H * loop2HR;
  println(loop2X, loop2Y, loop2WA, loop2HA); //Note: println() also verifies decimal places, complier will truncate
   pic2 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/Foreverloop.png");
  int pic2W = 225;
  int pic2H =  225;
  //
  //
  //--------Rewind--------
  int picWidth2 = 50;
  int picHeight2 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    rwLD = picWidth;
    rwSD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    rwLD = picHeight;
    rwSD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(rwSD, rwLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) rwWR = rwLD / rwLD;
  if ( widthLarger == true ) rwHR = rwSD / rwLD;
  if ( heightLarger == true ) rwWR = rwSD / rwLD;
  if ( heightLarger == true ) rwHR = rwLD / rwLD;
  //
  rwX = width*1.5/5;
  rwY = height*4.37/7;
  rwW = width*3/70; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  rwH = height*3/70;
  //
  rwWA = rwW * rwWR;
  rwHA = rwH * rwHR;
  println(rwX, rwY, rwWA, rwHA); //Note: println() also verifies decimal places, complier will truncate
   pic3 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/Rewind.png");
  int pic3W = 225;
  int pic3H =  225;
  //--------Fast Forward--------
  int picWidth3 = 50;
  int picHeight3 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    ffLD = picWidth;
    ffSD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    ffLD = picHeight;
    ffSD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(ffSD, ffLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) ffWR = ffLD / ffLD;
  if ( widthLarger == true ) ffHR = ffSD / ffLD;
  if ( heightLarger == true ) ffWR = ffSD / ffLD;
  if ( heightLarger == true ) ffHR = ffLD / ffLD;
  //
  ffX = width*2.1/5;
  ffY = height*4.36/7;
  ffW = width*3/70; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  ffH = height*3/70;
  //
  ffWA = ffW * ffWR;
  ffHA = ffH * ffHR;
  println(ffX, ffY, ffWA, ffHA); //Note: println() also verifies decimal places, complier will truncate
   pic4 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/Rewind copy.png");
  int pic4W = 225;
  int pic4H =  225;
  //--------Stop--------
  int picWidth4 = 50;
  int picHeight4 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    stopLD = picWidth;
    stopSD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    stopLD = picHeight;
    stopSD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(stopSD, stopLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) stopWR = stopLD / stopLD;
  if ( widthLarger == true ) stopHR = stopSD / stopLD;
  if ( heightLarger == true ) stopWR = stopSD / stopLD;
  if ( heightLarger == true ) stopHR = stopLD / stopLD;
  //
  stopX = width*1.96/5;
  stopY = height*4.44/7;
  stopW = width*3/130; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  stopH = height*3/130;
  //
  stopWA = stopW * stopWR;
  stopHA = stopH * stopHR;
  println(stopX, stopY, stopWA, stopHA); //Note: println() also verifies decimal places, complier will truncate
   pic5 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/Stop.png");
  int pic5W = 225;
  int pic5H =  225;
  //--------Pause and Play--------
  int picWidth5 = 50;
  int picHeight5 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    ppLD = picWidth;
    ppSD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    ppLD = picHeight;
    ppSD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(ppSD, ppLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) ppWR = ppLD / ppLD;
  if ( widthLarger == true ) ppHR = ppSD / ppLD;
  if ( heightLarger == true ) ppWR = ppSD / ppLD;
  if ( heightLarger == true ) ppHR = ppLD / ppLD;
  //
  ppX = width*1.7/5;
  ppY = height*4.36/7;
  ppW = width*3/70; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  ppH = height*3/70;
  //
  ppWA = ppW * ppWR;
  ppHA = ppH * ppHR;
  println(ppX, ppY, ppWA, ppHA); //Note: println() also verifies decimal places, complier will truncate
   pic6 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/PauseandPlay.png");
  int pic6W = 225;
  int pic6H =  225;
  //
  //
  //
  //Colouring Pages
  //Rose
   int picWidth8 = 50;
  int picHeight8 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    rose2LD = picWidth;
    rose2SD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    rose2LD = picHeight;
    rose2SD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(roseSD, roseLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) rose2WR = rose2LD / rose2LD;
  if ( widthLarger == true ) rose2HR = rose2SD / rose2LD;
  if ( heightLarger == true ) rose2WR = rose2SD / rose2LD;
  if ( heightLarger == true ) rose2HR = rose2LD / rose2LD;
  //
  rose2X = width*0;
  rose2Y = height*0;
  rose2W = width*1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  rose2H = height*4/7;
  //
  rose2WA = rose2W * rose2WR;
  rose2HA = rose2H * rose2HR;
  println(rose2X, rose2Y, rose2WA, rose2HA); //Note: println() also verifies decimal places, complier will truncate
   pic9= loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/RoseColouringPage.png");
  int pic9W = 225;
  int pic9H =  225;
  //Sunflower
   int picWidth8 = 50;
  int picHeight8 = 50;
  //
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    sfLD = picWidth;
    sfSD = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    sfLD = picHeight;
    sfSD = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(sfSD, sfLD, widthLarger, heightLarger); //Verify variables details
  //
  if ( widthLarger == true ) sfWR = sfLD / sfLD;
  if ( widthLarger == true ) sfHR = sfSD / sfLD;
  if ( heightLarger == true ) sfWR = sfSD / sfLD;
  if ( heightLarger == true ) sfHR = sfLD / sfLD;
  //
  sfX = width*6.5/8;
  sfY = height*4.1/7;
  sfW = width*5/50; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  sfH = height*5/50;
  //
  sfWA = sfW * sfWR;
  sfHA = sfH * sfHR;
  println(sfX, sfY, sfWA, sfHA); //Note: println() also verifies decimal places, complier will truncate
   pic8 = loadImage("/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Images/SunflowerColouringPage.jpg");
  int pic8W = 225;
  int pic8H =  225;
  
  //Music
  minim = new Minim(this); //load from data drirectiory, loadFile should also load from a project folder, like loadImage
  song1 = minim.loadFile("/Users/danielhamilton/Downloads/BubbleGumKK.mp3"); //able to pass absoulte path 
  songMetaData1 = song1.getMetaData();
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
  //
  menBtX4 = width*2/3;
  menBtY4 = height*4.27/7;
  menBtW4 = width*0.33/4;
  menBtH4 = width*0.33/4;
  //
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
  /*
  //---------Line Thickness---------
  //thin
  thinX = width*1.7/3;
  thinY = height*4.41/7;
  thinW = width*0.05/9;
  thinH = height*0.05/9;
  //med
  medX = width*1.8/3;
  medY = height *4.41/7;
  medW = width*0.1/9;
  medH = height*0.1/9;
  //thick
  thickX = width*1.9/3;
  thickY = height*4.41/7;
  thickW = width*0.15/9;
  thickH = height*0.15/9;
  */
  //Music Player text
  //
  String[] fontList = PFont.list(); 
  printArray(fontList);
  quitFont = createFont("TimesNewRomanPSMT", 25);
  //
  fill(white);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  fill(resetWhite);
  //
  //
} //End setup
//
//
void draw() 
{
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
  //
  //---------Music Player---------
  if (song1.isLooping() && song1.loopCount()!=-1) println("There are", song1.loopCount(), "loops left.");
  if (song1.isLooping() && song1.loopCount()==1) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "Song length", song1.length() );
  //
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
  //- Button 5
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
  //---------Quit---------
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
  //
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
  if ( mouseX>menBtX2 && mouseX<menBtX2+menBtW2 && mouseY>menBtY2 && mouseY<menBtY2+menBtH2 ) {
    rect(drpdwn2X, drpdwn2Y, drpdwn2W, drpdwn2H);
    image(pic1, loop1X, loop1Y, loop1W, loop1H);
    image(pic2, loop2X, loop2Y, loop2W, loop2H);
    image(pic3, rwX, rwY, rwW, rwH);
    image(pic4, ffX, ffY, ffW, ffH);
    image(pic5, stopX, stopY, stopW, stopH);
    image(pic6, ppX, ppY, ppW, ppH);

  };
    //basic button code
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
    /*
    if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
      fill(black); 
      ellipse(thinX, thinY, thinW, thinH);
      fill(resetWhite);
    };
    if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
      fill(black); 
      ellipse(medX, medY, medW, medH);
      fill(resetWhite);
    };
    if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
      fill(black); 
      ellipse(thickX, thickY, thickW, thickH);
      fill(resetWhite);
      */
    if ( mouseX>menBtX3 && mouseX<menBtX3+menBtW3 && mouseY>menBtY3 && mouseY<menBtY3+menBtH3 ) {
      rect (menBtX4, menBtY4, menBtW4, menBtH4);
      fill(resetButtonColor);
      fill(red);
      textAlign(CENTER, CENTER);
      quitSize = 25;
      textFont(quitFont, 13);
      text (Images, menBtX4, menBtY4, menBtW4, menBtH4);
      fill(resetWhite);
    };
    if ( mouseX>red2X && mouseX<red2X+red2W && mouseY>red2Y && mouseY<red2Y+red2H ) {
      fill (red);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>orange2X && mouseX<orange2X+orange2W && mouseY>orange2Y && mouseY<orange2Y+orange2H ) {
      fill (orange);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>yellow2X && mouseX<yellow2X+yellow2W && mouseY>yellow2Y && mouseY<yellow2Y+yellow2H ) {
      fill (yellow);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>green2X && mouseX<green2X+green2W && mouseY>green2Y && mouseY<green2Y+green2H ) {
      fill (green);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>blue2X && mouseX<blue2X+blue2W && mouseY>blue2Y && mouseY<blue2Y+blue2H ) {
      fill (blue);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>purple2X && mouseX<purple2X+purple2W && mouseY>purple2Y && mouseY<purple2Y+purple2H ) {
      fill (purple);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>white2X && mouseX<white2X+white2W && mouseY>white2Y && mouseY<white2Y+white2H ) {
      fill (white);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    if ( mouseX>black2X && mouseX<black2X+black2W && mouseY>black2Y && mouseY<black2Y+black2H ) {
      fill (black);
      rect (drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      fill (resetWhite);
    };
    //
    //---------Image Background---------
    if ( mouseX>menBtX4 && mouseX<menBtX4+menBtW4 && mouseY>menBtY4 && mouseY<menBtY4+menBtH4 ) {
    rect(drpdwn4X, drpdwn4Y, drpdwn4W, drpdwn4H); //basic button code
    image (pic7, roseX, roseY, roseW, roseH);
    image (pic8, sfX, sfY, sfW, sfH);
    };
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
    /* Discarded concept
    //Thin
    if ( mouseX>thinX && mouseX<thinX+thinW && mouseY>thinY && mouseY<thinY+thinH ) {
      strokeWeight(4);
      line (mouseX, mouseY, pmouseX, pmouseY);
    };
    //Med
    if ( mouseX>medX && mouseX<medX+medW && mouseY>medY && mouseY<medY+medH ) {
      strokeWeight(20);
      line (mouseX, mouseY, pmouseX, pmouseY);
    };
    //Thick
    if ( mouseX>thickX && mouseX<thickX+thickW && mouseY>thickY && mouseY<thickY+thickH ) {
      strokeWeight(40);
      line (mouseX, mouseY, pmouseX, pmouseY);
      */
      //
      ////---------First Play Button---------
  if (mouseX>loop1X && mouseX<loop1X+loop1W && mouseY>loop1Y && mouseY<loop1Y+loop1H) {//LOOP Function Once
    if (mouseX>loop1X && mouseX<loop1X+loop1W && mouseY>loop1Y && mouseY<loop1Y+loop1H) println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum); //Parameter is Pareameter is number of repeats
    //if (
  }//End LOOP Function Once
  if (mouseX>loop2X && mouseX<loop2X+loop2W && mouseY>loop2Y && mouseY<loop2Y+loop2H) song1.loop(); //Infinite loop, no perameter OR -1
  if (mouseX>loop1X && mouseX<loop1X+loop1W && mouseY>loop1Y && mouseY<loop1Y+loop1H ) println ("I do not loop that much, press i for inifinite loop");
  //
  if (mouseX>ffX && mouseX<ffX+ffW && mouseY>ffY && mouseY<ffY+ffH) song1.skip(5000); //Skip forward 5 second (5000 ms)
  if ( mouseX>rwX && mouseX<rwX+rwW && mouseY>rwY && mouseY<rwY+rwH ) song1.skip(-5000); //Skip backwards 5 seconds (5000 ms)
  //
  if ( mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH ) { //STOP button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    };
  }; //End STOP Button
  //
  if ( mouseX>ppX && mouseX<ppX+ppW && mouseY>ppY && mouseY<ppY+ppH ) {//PUASE Button
    if (song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.play();
}//End PAUSE 
 if (mouseX>rose1X && mouseX<rose1X+rose1W && mouseY>rose1Y && mouseY<rose1Y+rose1H) {
   image (

  {}// End mousePressed
  //
  //End MAIN program
  {}}}
