int x;
boolean up;

public void setup()
{
  size(1000,1000);
  background(0);
  x = 1;
  up = true;
}
public void draw()
{
        for (int y = 0; y < 50; y++) {
            background(0);
            fill(255);
            sierpinski(width, x, 0, height);
        }
        if (up) {
            x++;
            if (x == 8) {
                up = false;
            }
        }
        else {
            x--;
            if (x == 1) {
                up = true;
            }
        }

}

public void sierpinski(float sideLen, float repetitions, float xZero, float yZero) {
        if (repetitions != 1) {
            sierpinski(sideLen / 2,repetitions - 1, xZero, yZero);
            sierpinski(sideLen / 2,repetitions - 1,
                    xZero + (sideLen / 4), yZero - (sideLen/2));
            sierpinski(sideLen / 2,repetitions - 1, xZero + (sideLen/2), yZero);
        }
        else {
            beginShape();
            vertex(xZero, yZero);
            vertex(xZero + (sideLen / 2), yZero - sideLen);
            vertex(xZero + sideLen, yZero);
            endShape(CLOSE);
        }
    }
