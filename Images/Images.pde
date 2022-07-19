// Global Variables
//
//void setup() {}
//End setup()
//
//void draw() {}
//End draw()
//
//void keyPressed() {} 
//End keyPressed
//void mousePressed() {} 
//End mousePressed
//
//End MAIN Program




//Static to copy
float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
//CANVAS
size (750, 500); //Landscape
//Popoulation
pic = loadImage("../image used/landscape/pic1.jpg"); //Dimensions: width:452, height: 300
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth = 452;
int picHeight = 300; 
if ( picWidth >= picHeight) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension = picWidth;
 imageSmallerDimension = picHeight;
 widthLarger = true;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
  heightLarger = true;
} //End Image Dimension Comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verifyting variables details
//
//Aspect Ration=
//Note: Single line IFs can be summarized into IF-ELSEIF-Else
//Computer chooses which formulae to execute
//if( widthLarger == true ) imageWidthRatio = imageLargerDimension/ imageLargerDimension;
//if( widthLarger == true ) imageHegithRatio = imageSmallerDimension/ imageLargerDimension;
//if( heightLarger == true ) imageWidthRatio = imageSmallerDimension/ imageLargerDimension;
//if( heightLarger == true ) imageHeightRatio = imageLargerDimension/ imageLargerDimension;

//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
//
//
//Note: println() also verifies decimal places, complier will truncate(delete)
//
imageX = width*0;
imageY = height*0;
imageWidth = width-1; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight = height-1;
//
rect(imageX, imageY, imageWidth, imageHeight); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic, imageX, imageY, imageWidth, imageHeight);
//image();
