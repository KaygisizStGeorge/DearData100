int totalDays = 100;

int[] usageData = { 38, 39, 64, 14, 3, 19, 44, 16, 27, 72, 42, 19, 38, 71, 43, 45, 94, 114, 17, 1, 2, 3, 2, 3, 4, 5, 2, 82, 69, 130, 59, 128, 108, 23, 76, 1, 6, 126, 91, 160, 69, 119, 103, 203, 182, 71, 64, 50, 71, 212, 244, 77, 58, 89, 38, 39, 64, 14, 3, 19, 44, 16, 27, 72, 42, 19, 38, 71, 43, 45, 94, 114, 17, 1, 2, 3, 2, 3, 4, 5, 2, 82, 69, 130, 59, 128, 108, 23, 76, 1, 6, 126, 91, 160, 69, 119, 103, 203, 182, 71 };

int graphTop = 100;
int graphBottom = 360;
int graphLeft = 60;
int graphRight = 740;

int maxUsage;

void setup() {
size(800, 420);

maxUsage = 0;
for (int i = 0; i < usageData.length; i++) {
if (usageData[i] > maxUsage) {
maxUsage = usageData[i];
}
}
}

void draw() {
background(245);

fill(30);
textAlign(CENTER);

textSize(32);
text("Data 100", width/2, 50);

textSize(15);
text("100 Days", width/2, 385);

textSize(15);
text("Screentime Usage", width/10, 85);

stroke(50);
strokeWeight(2);
line(graphLeft, graphBottom, graphRight, graphBottom);
line(graphLeft, graphTop, graphLeft, graphBottom);

stroke(40, 110, 220);
strokeWeight(3);
noFill();

beginShape();
for (int i = 0; i < totalDays; i++) {

float x = map(i, 0, totalDays - 1, graphLeft, graphRight);

float y = map(usageData[i], 0, maxUsage, graphBottom, graphTop);

vertex(x, y);
}
endShape();
}
