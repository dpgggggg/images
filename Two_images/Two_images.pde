// Global Variables
PImage pic1, pic2;
float imageX1, imageY1, imageWidth1, imageHeight1,imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0; 
float picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0; 
float picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
//
void setup() {
  //CANVAS
size (750, 500); //Landscape
//
//Popoulation of Image
pic2 = loadImage("../image used/landscape/pic1.jpg"); //Dimensions: width:452, height: 300
pic1 = loadImage("../image used/portrait/983794168.jpg"); //Dimensions: width:929, height: 700
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth1 = 452;
int picHeight1 = 300; 
int picWidth2 = 929;
int picHeight2 = 700;
//
if ( picWidth1 >= picHeight1) {//Image Dimensions Comparison
  // True if Landscape or Square
  imageLargerDimension1 = picWidth1;
  imageSmallerDimension1 = picHeight1;
  widthLarger1 = true;
} else {
  //False if Portrait
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;
  heightLarger1 = true;
}
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verifyting variables details
//Aspect Ration=
//Note: Single line IFs can be summarized into IF-ELSEIF-Else
//Computer chooses which formulae to execute
if( widthLarger1 == true ) imageWidthRatio1= imageLargerDimension1/ imageLargerDimension1; // means 1.0, 100%
if( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1/ imageLargerDimension1; // shrinking the height, compressing it
if( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1/ imageLargerDimension1;
if( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1/ imageLargerDimension1;
//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
if ( picWidth2 >= picHeight2) {//Image Dimensions Comparison
  // True if Landscape or Square
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
} else {
  //False if Portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;
  heightLarger2 = true;
}
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2); //Verifyting variables details
//Aspect Ration=
//Note: Single line IFs can be summarized into IF-ELSEIF-Else
//Computer chooses which formulae to execute
if( widthLarger2 == true ) imageWidthRatio2= imageLargerDimension2/ imageLargerDimension2; // means 1.0, 100%
if( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2/ imageLargerDimension2; // shrinking the height, compressing it
if( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2/ imageLargerDimension2;
if( heightLarger2 == true ) imageHeightRatio2 = imageLargerDimension2/ imageLargerDimension2;
//
//Population of Rect()
imageX1 = width*0;
imageY1 = height*0;
imageWidth1 = width-1; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight1 = (height-1)*1/1.32
;
imageX2 = width*0;
imageY2 = height*1/2;
imageWidth2 = width-1; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight2 = (height-1)*1/2;
//
//Combination of Population of Image with Population of Rect()
//Adjusted Image Variables for Aspect Ratio: entire image will be smaller due to aspect ratio
picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;// width not changing for this picture for the width is the larger side
picHeightAdjusted1= imageHeight1* imageHeightRatio1; // height is the samller dimension so it's going to be squished
println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
picWidthAdjusted2 = imageWidth2 * imageWidthRatio2;// width not changing for this picture for the width is the larger side
picHeightAdjusted2= imageHeight2;//* imageHeightRatio2; // height is the samller dimension so it's going to be squished
println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
}
//
//End Image Dimension Comparison
//End setup()
//
void draw() {
  //rect(imageX1, imageY1, imageWidth1, imageHeight1); //Top Halp of CANVAS
  //rect(imageX2, imageY2, imageWidth2, imageHeight2); //Bottom Half of CANVAS
image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);
image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
//image(pic, imageX, imageY, imageWidth, imageHeight);
//image();
}//End draw()
//
//void keyPressed() {} 
//End keyPressed
//void mousePressed() {} 
//End mousePressed
//
//End MAIN Program
