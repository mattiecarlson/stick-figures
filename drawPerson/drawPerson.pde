void setup() {
  size(380, 380);  // Size must be the first statement
  stroke(0);     // Set line drawing color to white
  frameRate(30);
  background(255);
  drawPerson();
}

void drawPerson() {
  ellipse(190, 120, 80, 80);
  line(190, 160, 190, 250);
  line(190, 250, 230, 300);
  line(190, 250, 150, 300);
  line(150, 200, 230, 200); 
}