class CircleManager {
  Circle[] Circles;
  int numOfCircles;
  
  CircleManager() {
    numOfCircles = 15;
    Circles = new Circle[numOfCircles];
    for(int i = 0; i < Circles.length; i++) {
      Circles[i] = new Circle();
    }
  }
  void drawCircles() {
    for(int i = 0; i < Circles.length; i++) {
      Circles[i].display();
      //Circles[i].move();
    }
  }
}
