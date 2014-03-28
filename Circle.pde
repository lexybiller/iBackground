class Circle { // 1. Name
  //2. Attributes
  float x, y;  
  float radius;
  color lineColor, fillColor;
  float a;
  float speedx, speedy;
  float rad;
  float angle;
  float xTime, yTime;

  Circle() { //3. Constructor
    x = random(width);
    y = random(height);
    radius = random(100) + 10;
    lineColor = color(random(255), random(255), random(255));
    fillColor = color(random(255), random(255), random(255));
    a = random(255);
    speedx = random(-1, 2);
    speedy = random(-1, 2);
    rad = radians(angle);
    angle = 0;
    xTime = random(100);
    yTime = random(100);
  }
  // 4. methods
  void display() {
    //move();
    x = map(noise(xTime), 0, 1, -150, width+150);
    y = map(noise(yTime), 0, 1, -150, height+150);
    xTime += 0.003;
    yTime += 0.003;
    noStroke();
    fill(fillColor, a);
    //ambient(random(255), random(255), random(255));
    ellipse(x, y, radius*2, radius*2);
    stroke(lineColor, 150);
    noFill();
    ellipse(x, y, 100, 100);
  }
  /*void move() {
    x += speedx;
    y += speedy;
    if (x < 5 || x > width - 5) {
      speedx *= -1;
    }
    if (y < 5 || y > width - 5) {
      speedy *= -1;
    }
    if (x > (width + radius)) {
      x = 0 - radius;
    }
    if (x < (0 - radius)) {
      x = width + radius;
    }
    if (y > (height + radius)) {
      y = 0 - radius;
    }
    if (y < (0 - radius)) {
      y = height + radius;
    }
  }*/
  void reactToTouch() {
    if (mousePressed) {
      xTime += random(-1, 1);
      yTime += random(-1, 1);
    }
  }
}





