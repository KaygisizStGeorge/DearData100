int totalDays = 100;
float[] dataPoints = new float[totalDays];

int graphTop = 100;
int graphBottom = 360;
int graphLeft = 60;
int graphRight = 740;

void setup() {
  size(800, 420);
  
  float currentScreentime = 5.0; 
  for (int i = 0; i < totalDays; i++) {
    currentScreentime += random(-1.2, 1.2);
    
    if (currentScreentime > 10) currentScreentime = 10;
    if (currentScreentime < 1) currentScreentime = 1;
    
    dataPoints[i] = currentScreentime;
  }
}

void draw() {
  background(245); 
  
  fill(30);
  textSize(32);
  textAlign(CENTER);
  text("Daily Screentime Level", width/2, 60);
  
  textSize(15);
  text("Day", width/2, 385);
  
  textSize(15);
  text("Screentime Level (1-10)", width/12, 85);
  
  stroke(50);
  strokeWeight(2);
  line(graphLeft, graphBottom, graphRight, graphBottom); 
  line(graphLeft, graphTop, graphLeft, graphBottom);     
  
  stroke(40, 110, 220); 
  strokeWeight(3);
  noFill();
  
  beginShape();
  for (int i = 0; i < totalDays; i++) {
    float xPixel = map(i, 0, totalDays - 1, graphLeft, graphRight);
    float yPixel = map(dataPoints[i], 1, 10, graphBottom, graphTop);
    vertex(xPixel, yPixel);
  }
  endShape();
  
  noLoop(); 
}
