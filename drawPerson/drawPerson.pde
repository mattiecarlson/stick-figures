void setup() {
  size(380, 380);  // Size must be the first statement
  stroke(0);     // Set line drawing color to white
  frameRate(30);
  background(255);
  drawPerson();
  drawShirt(color(204, 153, 0));
  drawHat("baseball");
  //drawCat(200, 100, 7, color(50, 150, 50));
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
  drawPictureOnShirt();
}

void drawPictureOnShirt() {
  PImage shirtPicture = loadImage("allthethings.png");
  image(shirtPicture, 172.5, 190);
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
    drawTopHat();
  } else if (type.equals("wizard")) {
    drawWizardHat();
  } else if (type.equals("baseball")) {
    drawBaseballHat();
  }
}

void drawBaseballHat() {
  fill(color(0, 255, 255));
  stroke(color(0, 255, 255));
  ellipse(200, 110, 100, 10);
  arc(190, 120, 80, 80, PI+ .2, PI  * 2 - .2, CHORD);
}

void drawTopHat() {
  fill(color(0, 0, 0));
  stroke(0);
  ellipse(190, 90, 80, 20); // bottom
  rect(160, 40, 60, 50, 4); // top
}

void drawWizardHat() {
  fill(color(160, 32, 240)); 
  stroke(0);
  triangle(150, 110, 230, 110, 190, 20);
  fill(color(120, 50, 240)); 
  stroke(color(120, 50, 240));
  triangle(160, 100, 220, 100, 190, 40);
  fill(color(120, 50, 200)); 
  stroke(color(120, 50, 200));
  triangle(180, 80, 200, 80, 190, 60);
  stroke(0, 0, 0);
  fill(color(255, 255, 0));
  star(190, 20, 20, 5, 5);
}

// This method was taken from the Processing official website
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

/*
Potential method ideas:
drawSnowMan
drawBackground
*/