void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  fill((int)(Math.random()*100+100),(int)(Math.random()*100+100),(int)(Math.random()*100+100));
  sierpinski(0, height, width);

}

void sierpinski(int x, int y, int len) {
  if (len <= 30)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else {
    triangle(x, y, x+len/4, y-len/2, x+len/2, y);
    triangle(x+len/2, y, x+3*len/4, y-len/2, x+len, y);
    triangle(x+len/4, y-len/2, x+len/2, y-len, x+3*len/4, y-len/2);
    ellipse(x+len/2, y-len/3, len/4, len/4);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
