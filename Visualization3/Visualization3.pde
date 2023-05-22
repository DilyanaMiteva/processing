import processing.core.PApplet;

public class Visualization3 extends PApplet {

  public void settings() {
    size(1000, 700);
  }

  public void setup() {
    background(215);
    noLoop();
  }

  public void draw() {
    for (int x = 0; x < width; x += 20) {
      for (int y = 0; y < height; y += 20) {
        // Generate random pattern
        boolean black = random(1) > 0.5;

        if (black) {
          fill(0);
        } else {
          fill(255);
        }

        rect(x, y, 20, 20);
      }
    }
  }

  public static void main(String[] args) {
    PApplet.main("Visualization3");
  }
}
