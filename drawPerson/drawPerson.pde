void setup() {
  size(380, 380);  // Size must be the first statement
  stroke(0);     // Set line drawing color to white
  frameRate(30);
  background(255);
  drawPerson();
  drawShirt(color(204, 153, 0));
  drawCat(100, 70, 5, color(200, 100, 100));
  drawHat("top");
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

void drawCat(int x, int y, int size, color catColor) {
  int total = size * 20;
  fill(catColor);
  stroke(0);
  rect(x-(total * 3 /10), y+(total * 1.5 / 10), total/10, 3*total/10, 7); // left leg
  rect(x+(total/5), y+(total*1.5/10), total/10, 3*total/10, 7); // right leg
  triangle(x+(total*4.5/10), y-(total/20), x+(total*4.5/10), y-(total/10), x+(total*6/10), y-(total*3/10)); // tail
  
  triangle(x-(total*8/10), y-(total*2.5/10), x-(total*7/10), y-(total*3/10), x-(total*7.5/10), y-(total*4/10)); // left ear
  triangle(x-total/2, y-(total*3/10), x-(total*4/10), y-(total*2.5/10), x-(total*4.5/10), y-(total*4/10)); // right ear
  ellipse(x, y, total, total/2); // body
  ellipse(x - (total*6/10), y - (total/10), total/2, total/2); //head

  fill(color(255,182,193));
  triangle(x-(total*6.2/10), y, x-(total*5.8/10), y, x-(total*6/10), y-(total/25)); // nose
  fill(color(0, 0, 0));
  ellipse(x-(total*7/10), y-(total/10), total/20, total/20); // left eye
  ellipse(x-(total/2), y-(total/10), total/20, total/20); // right eye
}

void drawHat(String type) {
  if (type.equals("top")) {
    fill(color(0, 0, 0));
    stroke(0);
    ellipse(190, 90, 80, 20);
    rect(160, 40, 60, 50, 4);
  }
}