//---------Paper---------
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
//
//---------Background song---------
import processing.sound.*;
SoundFile file;
String audioName = "/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Songs Used/Bublegum.mp3";
String path;
//
//---------Colours---------
color red=#FF5D5D, orange=#FFBE5D, yellow=#FFEF5D, green=#FFEF5D, blue=#5D63FF, purple=#C65DFF, black=#000000, white=#FFFFFF, grey=#B2B2B2, resetWhite=#FFFFFF, pink=#FFC4DA;
color buttonFill=#000000, resetButtonColor=#FFFFFF;;
//

//---------Menu---------
float menX, menY, menW, menH;
float menBtW1, menBtH1, menBtX1, menBtY1;
float menBtW2, menBtH2, menBtX2, menBtY2;
float menBtW3, menBtH3, menBtX3, menBtY3;
float menBtX4, menBtY4, menBtW4, menBtH4;
float sideMenWidth, sideMenHeight;
float drpdwn1X, drpdwn1Y, drpdwn1W, drpdwn1H;
float drpdwn2X, drpdwn2Y, drpdwn2W, drpdwn2H;
float drpdwn3X, drpdwn3Y, drpdwn3W, drpdwn3H;
float drpdwn4X, drpdwn4Y, drpdwn4W, drpdwn4H;
//
//---------Text---------
//Button4
String quit = "Quit";
PFont quitFont;
int quitSize;
float quitTX, quitTY, quitTW, quitTH;
//Button1
String Btn1 = "Colour Picker";
PFont Btn1Font;
int Btn1Size;
//
//---------Buttons---------
float quitX, quitY, quitW, quitH;
