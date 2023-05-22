import processing.core.PApplet;

public class Visualization2 extends PApplet {

  public void settings() {
    size(1000, 700);
  }

  public void setup() {
    background(255);
    noLoop();
  }

  public void draw() {
    for (int i = 0; i < 1000; i++) {
      float r = random(255);
      float g = random(255);
      float b = random(204);

      float x = random(width);
      float y = random(height);
      float width = random(20, 100);
      float height = random(20, 100);

      fill(r, g, b);

      rect(x, y, width, height);
    }
  }

  public static void main(String[] args) {
    PApplet.main("Visualization2");
  }
}
