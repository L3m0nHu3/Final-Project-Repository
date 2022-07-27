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
color red=#FF5D5D, orange=#FFBE5D, yellow=#FFEF5D, green=#90FF8B, blue=#5D63FF, purple=#C65DFF, black=#000000, white=#FFFFFF, grey=#B2B2B2, resetWhite=#FFFFFF, pink=#FFC4DA, background=#E0E0E0;
color buttonFill=#000000, resetButtonColor=#FFFFFF;;
//

//---------Menu---------
float menX, menY, menW, menH;
float menBtW1, menBtH1, menBtX1, menBtY1;
float menBtW2, menBtH2, menBtX2, menBtY2;
float menBtW3, menBtH3, menBtX3, menBtY3;
float menBtX4, menBtY4, menBtW4, menBtH4;
float sideMenWidth, sideMenHeight;
//<Dropdowns>
float drpdwn1X, drpdwn1Y, drpdwn1W, drpdwn1H;
float drpdwn2X, drpdwn2Y, drpdwn2W, drpdwn2H;
float drpdwn3X, drpdwn3Y, drpdwn3W, drpdwn3H;
float drpdwn4X, drpdwn4Y, drpdwn4W, drpdwn4H;
//<Grey Outs>
float greyOut1X, greyOut1Y, greyOut1W, greyOut1H;
float greyOut2X, greyOut2Y, greyOut2W, greyOut2H;
float greyOut3X, greyOut3Y, greyOut3W, greyOut3H;
float greyOut4X, greyOut4Y, greyOut4W, greyOut4H;


//---------Text---------
//Button4
String quit = "Quit";
PFont quitFont;
int quitSize;
float quitTX, quitTY, quitTW, quitTH;
//Button1
String Btn1 = "Colour Picker";
//Button2
String Btn2 = "JukeBox";
//Button2
String Btn3 = "Background Colour";
//
//---------Buttons---------
float quitX, quitY, quitW, quitH;
float redX, redY, redW, redH;
float orangeX, orangeY, orangeW, orangeH;
float yellowX, yellowY, yellowW, yellowH;
float greenX, greenY, greenW, greenH;
float blueX, blueY, blueW, blueH;
float purpleX, purpleY, purpleW, purpleH;
float whiteX, whiteY, whiteW, whiteH;
