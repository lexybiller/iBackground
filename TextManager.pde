PFont font;
class TextManager {//1.Name
  //2.Attributes
  int day = day();     // Values from 1 - 31
  int month = month(); // Values from 1 - 12
  int year = year();   // 2003, 2004, 2005, etc.
  String d = String.valueOf(day);
  String m = String.valueOf(month);
  String y = String.valueOf(year);
  String u = "> slide to unlock";
  //3.Constructor
  TextManager() {
    //4.methods
    showTime();
    slideToUnlock();
  }
  void showTime() {
    font = loadFont("HelveticaNeue-Light-48.vlw");
    textFont(font, 48);
    fill(255);
    textSize(50);
    text(nf(hour(), 2)+":"+nf(minute(), 2), 82, 80);
    font = loadFont("HelveticaNeue-Light-48.vlw");
    textFont(font, 48);
    textSize(20);
    fill(255);
    text(m+"-"+d+"-"+y, 100, 110);
  }
  void slideToUnlock() {
    font = loadFont("HelveticaNeue-Light-48.vlw");
    textFont(font, 48);
    textSize(25);
    textAlign(BOTTOM);
    fill(255);
    text(u, 60, 380);
  }
}

