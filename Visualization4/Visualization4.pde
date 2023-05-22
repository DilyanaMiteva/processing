import processing.core.PApplet;

public class Visualization4 extends PApplet {

  Star[] stars;
  int numStars = 2000;

  public void settings() {
    size(1000, 700);
  }

  public void setup() {
    background(0);
    frameRate(30);

    stars = new Star[numStars];
    for (int i = 0; i < numStars; i++) {
      float x = random(width);
      float y = random(height);
      stars[i] = new Star(x, y);
    }
  }

  public void draw() {
    background(0);
    for (Star star : stars) {
      star.move();
      star.display();
    }
  }

  class Star {
    float x, y;
    float speedX, speedY;
    float r, g, b;

    Star(float x, float y) {
      this.x = x;
      this.y = y;
      this.speedX = random(-1, 1);
      this.speedY = random(-1, 1);
      this.r = random(255);
      this.g = random(255);
      this.b = random(255);
    }

    void move() {
      x += speedX * 0.1;
      y += speedY * 0.1;

      if (x < 0 || x > width) {
        speedX *= -1;
      }
      if (y < 0 || y > height) {
        speedY *= -1;
      }
    }

    void display() {
      fill(r, g, b);
      noStroke();
      float size = random(5, 20);
      star(x, y, 5, size / 2, size / 5);
    }

    void star(float x, float y, int numPoints, float outerRadius, float innerRadius) {
      float angle = TWO_PI / numPoints;
      float halfAngle = angle / 2.0;
      beginShape();
      for (float a = 0; a < TWO_PI; a += angle) {
        float sx = x + cos(a) * outerRadius;
        float sy = y + sin(a) * outerRadius;
        vertex(sx, sy);
        sx = x + cos(a + halfAngle) * innerRadius;
        sy = y + sin(a + halfAngle) * innerRadius;
        vertex(sx, sy);
      }
      endShape(CLOSE);
    }
  }

  public static void main(String[] args) {
    PApplet.main("Visualization4");
  }
}
