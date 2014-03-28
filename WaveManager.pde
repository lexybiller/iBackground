class WaveManager {

  Wave[] waves;
  int numOfWaves;


  WaveManager() { 
    numOfWaves = 200;
    waves = new Wave[numOfWaves];
    for (int i = 0; i < waves.length; i++) {

      waves[i] = new Wave(random(width), random(height));
    }
  }

  void drawWaves() {
    randomSeed(6);
    pushMatrix();
    for (int i = 0; i < waves.length; i++) {
      waves[i].display();
    }

    popMatrix();
  }
}


