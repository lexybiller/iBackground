class Wave { // name
  // attributes (variables)
  float X1, Y1, X2, Y2;
  float x3, y3, x4, y4;
  float R, G, B;
  
  float xTime, yTime;
  float theta, theta1, theta2;
  float centerR, centerG, centerB;
  float pathR, pathG, pathB;
  float x, y, a, b;
  float angle;
  float currentX, currentY;

  // constructor ("new")
  Wave(float x1, float y1) {
    // initialization code
    X1 = x1;
    Y1 = y1;
    x3 = random(width);
    y3 = random(height);
    x4 = random(width);
    y4 = random(height);
    x = random(width);
    y = random(height);
    xTime = random(100);
    yTime = random(100);
    a = random(width);
    b = random(height);
    currentX = mouseX;
    currentY = mouseY;

    R= 125;
    G = 125;
    B = 125;

    centerR = 125;
    centerG = 125;
    centerB = 125;
    pathR = 125;
    pathG = 125;
    pathB = 125;
    theta = PI/2;
    theta1 = PI;
    theta2 = 3*PI/2;
    angle = 0;
  }

  // methods
  void display() {
   
     x = map(noise(xTime), 0, 1, -150, width+150);
     y = map(noise(yTime), 0, 1, -150, height+150);
     xTime += 0.01;
     yTime += 0.01;
     
     a = map(sin(angle), -1, 1, width/2-150, width/2+150);
     b = map(sin(angle),-1,1,height/2-150,height/2+150);
     angle += 0.02;
     

    stroke(pathR, pathG, pathB);
    strokeWeight(0.3);
    noFill();
    pathR = centerR+R*sin(theta);
    theta += 0.03;

    pathG = centerG + G*sin(theta1);
    theta1 += 0.03;

    pathB = centerB + B*sin(theta2);
    theta2 += 0.03;
    beginShape();
    shininess(random(2.0));
    vertex(mouseX, height);
    bezierVertex(x, y, x, y,width/2, mouseY);
    endShape();
  }
  void Touch() {
    if (mousePressed == true) {
     //make that the location for the bezier vertex to stay
    //using an array?? 
    //make variables out of mouseX mouseY and then when touched change variable
    }
  }
}

