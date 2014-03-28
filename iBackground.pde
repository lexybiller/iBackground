CircleManager theCircleManager;
WaveManager theWaveManager;
TextManager theTextManager;
MainManager theMainManager;
//control p5 for drop down menu

void setup() {
  size(320, 480);
  smooth();
  theCircleManager = new CircleManager();
  theWaveManager = new WaveManager();
  theTextManager = new TextManager();
  theMainManager = new MainManager();
}

void draw() {
  background(0);
  pushMatrix();
  translate(0, 0);
  //theCircleManager.drawCircles();
  theWaveManager.drawWaves();
  theTextManager.showTime();
  theTextManager.slideToUnlock();
  theMainManager.keyPressed();
  popMatrix();
}

