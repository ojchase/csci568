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
  
void setup() {
    //This code happens once, right when our sketch is launched
    size(800,800);
    background(0);
    smooth();
     
    //Ask for the list of numbers
    int[] numbers = getNumbers();
    
    
    fill(255,40);
    noStroke();
    //Our line of Google numbers
    for (int i = 0; i < numbers.length; i++)
    {
      ellipse(numbers[i] * 8, width/2, 8,8);
    }
    //A line of random numbers
    for (int i = 0; i < numbers.length; i++)
    {
      ellipse(ceil(random(0,99)) * 8, height/2 + 20, 8,8);
    }
    //A line of random numbers
    for (int i = 0; i < numbers.length; i++)
    {
      ellipse(ceil(random(0,99)) * 8, height/2 + 40, 8,8);
    }
    //A line of random numbers
    /*for (int i = 0; i < numbers.length; i++)
    {
      ellipse(ceil(random(0,99)) * 8, height/2 + 60, 8,8);
    }*/
    
    barGraph(numbers, 400);
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
   rect(i * 8, y, 8, -counts[i] * 10);
 }
}

void draw() {
  //This code happens once every frame.
}
