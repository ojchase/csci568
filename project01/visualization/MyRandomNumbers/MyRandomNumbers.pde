/*
 #myrandomnumber Tutorial
 blprnt@blprnt.com
 April, 2010
 */

//This is the Google spreadsheet manager and the id of the spreadsheet that we want to populate, along with our Google username & password
SimpleSpreadsheetManager sm;
String sUrl = "t6mq_WLV5c5uj6mUNSryBIA";
String googleUser = GUSER;
String googlePass = GPASS;
PFont label;
  
void setup() {
    //This code happens once, right when our sketch is launched
    size(800,800);
    background(0);
    smooth(); 
    
    //Create the font object to make text with
    label = createFont("Helvetica", 24);
     
    //Ask for the list of numbers
    int[] numbers = getNumbers();
    
    
    fill(255,40);
    noStroke();
    
    /*
    //Our line of Google numbers
    circliness(numbers, 0);
    //Random lines
    circliness(getRandomNumbers(numbers.length), 20);
    circliness(getRandomNumbers(numbers.length), 40);
    circliness(getRandomNumbers(numbers.length), 60);
    */
    
    /*
    barGraph(numbers, 100);
    for (int i = 1; i < 7; i++)
    {
      int[] randoms = getRandomNumbers(numbers.length);
      barGraph(randoms, 100 + (i * 90));
    }
    */
    
    colorGrid(numbers, 50, 50, 70);
}

void circliness(int[] nums, float y)
{
  for (int i = 0; i < nums.length; i++)
  {
    ellipse(nums[i] * 8, height/2 + y, 8,8);
  }
}

void barGraph(int[] nums, float y) {
  //Make a list of number counts
 int[] counts = new int[100];
 //Fill it with zeros
 for (int i = 1; i < 100; i++)
 {
   counts[i] = 0;
 }
 //Tally the counts
 for (int i = 0; i < nums.length; i++)
 {
   counts[nums[i]] ++;
 }
 
 //Draw the bar graph
 for (int i = 0; i < counts.length; i++)
 {
   colorMode(HSB);
   fill(counts[i] * 30, 255, 255);
   rect(i * 8, y, 8, -counts[i] * 10);
 }
}

void colorGrid(int[] nums, float x, float y, float s)
{
 //Make a list of number counts
 int[] counts = new int[100];
 //Fill it with zeros
 for (int i = 0; i < 100; i++)
 {
   counts[i] = 0;
 }
 //Tally the counts
 for (int i = 0; i < nums.length; i++)
 {
   counts[nums[i]] ++;
 }
 
//Move the drawing coordinates to the x,y position specified in the parameters
 pushMatrix();
 translate(x,y);
 //Draw the grid
 for (int i = 0; i < counts.length; i++)
 {
   colorMode(HSB);
   fill(counts[i] * 30, 255, 255, counts[i] * 30);
   textAlign(CENTER);
   textFont(label);
   textSize(s/2);
   text(i, (i % 10) * s, floor(i/10) * s);
   //rect((i % 10) * s, floor(i/10) * s, s, s);
 }
 popMatrix();
};

void draw() {
  //This code happens once every frame.
}

