class Triangle {
  float X1, X2, Y1;
  float x, y, a, b;
  float xTime, yTime;
  float currentX, currentY;
  float R, G, B;
  float centerR, centerG, centerB;
  float pathR, pathG, pathB;
  float theta, theta1, theta2;
  float angle;



  Triangle(float x1, float x2, float y1) {
    x1 = X1;
    x2 = X2;
    y1 = Y1;
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
  void display() {
    x = map(noise(xTime), 0, 1, -150, width+150);
    y = map(noise(yTime), 0, 1, -150, height+150);
    xTime += 0.01;
    yTime += 0.01;

    a = map(sin(angle), -1, 1, width/2-150, width/2+150);
    b = map(sin(angle), -1, 1, height/2-150, height/2+150);
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

    beginShape(TRIANGLES);
    vertex(x, y, currentY);
    vertex(y, x, currentX);
    vertex(x, currentX, y);
    endShape(CLOSE);
  }
}

