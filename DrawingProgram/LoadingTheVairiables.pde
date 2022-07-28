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
String Btn3 = "Background";
//Images
String Images = "Images";
//Music Player Titl
//
//---------Buttons---------
//<Colour Selector>
float quitX, quitY, quitW, quitH;
float red1X, red1Y, red1W, red1H;
float orange1X, orange1Y, orange1W, orange1H;
float yellow1X, yellow1Y, yellow1W, yellow1H;
float green1X, green1Y, green1W, green1H;
float blue1X, blue1Y, blue1W, blue1H;
float purple1X, purple1Y, purple1W, purple1H;
float white1X, white1Y, white1W, white1H;
float black1X, black1Y, black1W, black1H;
//<Background Buttons
float red2X, red2Y, red2W, red2H;
float orange2X, orange2Y, orange2W, orange2H;
float yellow2X, yellow2Y, yellow2W, yellow2H;
float green2X, green2Y, green2W, green2H;
float blue2X, blue2Y, blue2W, blue2H;
float purple2X, purple2Y, purple2W, purple2H;
float white2X, white2Y, white2W, white2H;
float black2X, black2Y, black2W, black2H;
//<Line Thickness Buttons
float thinX, thinY, thinW, thinH;
float medX, medY, medW, medH;
float thickX, thickY, thickW, thickH;
//
//---------Music---------
Minim minim; //Creates object to acess all functions
AudioPlayer song1; //creates a playlist
AudioMetaData songMetaData1;
//
//loop1
float loop1X, loop1Y, loop1W, loop1H, loop1WR=0.0, loop1HR=0.0, loop1WA, loop1HA;
float loop1LD, loop1SD;
PImage pic1;
Boolean widthLarger=false, heightLarger=false;
//Loop2
float loop2X, loop2Y, loop2W, loop2H, loop2WR=0.0, loop2HR=0.0, loop2WA, loop2HA;
float loop2LD, loop2SD;
PImage pic2;
//Rewind
float rwX, rwY, rwW, rwH, rwWR=0.0, rwHR=0.0, rwWA, rwHA;
float rwLD, rwSD;
PImage pic3;
//fast forward
float ffX, ffY, ffW, ffH, ffWR=0.0, ffHR=0.0, ffWA, ffHA;
float ffLD, ffSD;
PImage pic4;
//Stop
float stopX, stopY, stopW, stopH, stopWR=0.0, stopHR=0.0, stopWA, stopHA;
float stopLD, stopSD;
PImage pic5;
//Pause/play
float ppX, ppY, ppW, ppH, ppWR=0.0, ppHR=0.0, ppWA, ppHA;
float ppLD, ppSD;
PImage pic6;
//
//Colouring Pages
float rose1X, rose1Y, rose1W, rose1H, rose1WR=0.0, rose1HR=0.0, rose1WA, rose1HA;
float rose1LD, rose1SD;
PImage pic7;
//Sunflower
float sfX, sfY, sfW, sfH, sfWR=0.0, sfHR=0.0, sfWA, sfHA;
float sfLD, sfSD;
PImage pic8;
//Rose big
float rose2X, rose2Y, rose2W, rose2H, rose2WR=0.0, rose2HR=0.0, rose2WA, rose2HA;
float rose2LD, rose2SD;
PImage pic9;
