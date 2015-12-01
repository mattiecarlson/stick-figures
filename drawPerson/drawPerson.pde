void setup() {
  size(380, 380);  // Size must be the first statement
  stroke(0);     // Set line drawing color to white
  frameRate(30);
  background(255);
  drawPerson();
  drawShirt(color(204, 153, 0));
}

void drawPerson() {
  ellipse(190, 120, 80, 80); // head
  line(190, 160, 190, 250); // body
  line(190, 250, 230, 300); // right leg
  line(190, 250, 150, 300); // left leg
  line(150, 185, 230, 185); // arms
}

void drawShirt(color shirtColor) {
  fill(shirtColor);
  stroke(shirtColor);
  rect(160, 175, 60, 20, 7); // sleeves
  rect(170, 175, 40, 70, 7); // body of shirt
}