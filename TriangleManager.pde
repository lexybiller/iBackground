class TriangleManager {
  Triangle[] triangles;
  int numOfTriangles;
  
  TriangleManager() {
    numOfTriangles = 10;
    
    triangles = new Triangle[numOfTriangles];
    for (int i = 0; i < triangles.length; i++) {

      triangles[i] = new Triangle(random(width), random(width), random(height));
  }
  void drawTriangles() {
    randomSeed(6);
    pushMatrix();
    for (int i = 0; i < triangles.length; i++) {
      triangles[i].display();
    }

    popMatrix();
}

