import processing.core.PApplet;

public class Visualization extends PApplet {

  int numLines = 10000;
  float[] x = new float[numLines];
  float[] y = new float[numLines];
  float[] angle = new float[numLines];

  public void settings() {
    size(1000, 700);
  }

  public void setup() {
    background(255);
    
    for (int i = 0; i < numLines; i++) {
      x[i] = random(width);
      y[i] = random(height);
      angle[i] = random(TWO_PI);
    }
  }

  public void draw() {
    background(255);

    for (int i = 0; i < numLines; i++) {
      float r = random(255);
      float g = random(255);
      float b = random(255);
      stroke(r, g, b);

      float lineLength = random(50, 200);
      float lineWidth = random(1, 5);

      float endX = x[i] + cos(angle[i]) * lineLength;
      float endY = y[i] + sin(angle[i]) * lineLength;

      strokeWeight(lineWidth);
      line(x[i], y[i], endX, endY);

      angle[i] += random(-0.05, 0.05);
    }
  }

  public static void main(String[] args) {
    PApplet.main("Visualization");
  }
}
