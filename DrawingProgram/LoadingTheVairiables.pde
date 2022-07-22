//---------Paper---------
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
color BGcolor;
//
//---------Background song---------
import processing.sound.*;
SoundFile file;
String audioName = "/Users/danielhamilton/Documents/GitHub/Final-Project-Repository/Songs Used/Bublegum.mp3";
String path;
//
//---------Colours---------
color red=#FF5D5D, orange=#FFBE5D, yellow=#FFEF5D, green=#FFEF5D, blue=#5D63FF, purple=#C65DFF, black=#000000, white=#FFFFFF, gray=#B2B2B2;
//

//---------Menu---------
float menX, menY, menWidth, menHeight;
float menBtnWidth, menBtHeight;
float sideMenWidth, sideMenHeight;

color menuColor;

//---------Stroke controller---------
float strBtnX, strBtY;
color strBtColor;
String strBtText = "Stroke size";

float strBtmx, strBtmy;

float strSelW, strSelH;

float tX, tY;
float mX, mY;
float sX, sY; 

String tText = "Thin";
String mText = "Medium";
String sText = "Thick";

Boolean strokeButtonON = false;

Boolean strokeButtonRESET = false;

//---------Color Selector---------
float csx, csy;
color csColor;
String csText = "Color Selector";

float csMenx, csMeny;

Boolean colorSelectorON = false;

Boolean colorSelectorRESET = false;
 
 //---------Color buttons---------
                    color drawColor;
                    
                    float colorW, colorH;
                    
                    float redX, redY;
                    
                    float orangeX, orangeY;
                    
                    float yellowX, yellowY;
                    
                    float greenX, greenY;
                    
                    float blueX, blueY;
                    
                    float purpleX, PurpleY;
                    
                    float whiteX, whiteY;
                    
                    float blackX, blackY;
                    
                    String  eraserText = "Eraser";
                    float eraserX, eraserY, eraserW, eraserH;
                    
//---------Tool Buttons---------
float tbX, tbY;
color tbColor;
String tbText = "Tools";

float tbMenx, tbMeny;
Boolean toolButtonON = false;

Boolean toolButtonRESET = false;



//---------Background---------

String backtxt = "Random";

color bbcolor;

float bbX, bbY;

String bbText = "Background";

float bbMenx, bbMeny;

Boolean backButtonON = false;

Boolean backButtonRESET = false;
