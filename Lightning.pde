int startx = 150;
int starty = 150;
int endx = 150 + (int)(Math.random()*41)-20;
int endy = 150 + (int)(Math.random()*41)-20;

void setup() {
  size(300,300);
  background(0);
  noFill();
}
void draw() {
  // Draw a semi-transparent black rectangle over the canvas to fade previous lines
  noStroke();
  // fill(0, 0, 0, 5);  // The fourth parameter is the alpha value (0 = transparent, 255 = fully opaque)
  // rect(0, 0, width, height);  // Draw the rectangle over the entire canvas
  // new random color
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  // new random end point
  endx += (int)(Math.random()*41)-20;
  endy += (int)(Math.random()*41)-20;
  // keep line in bounds
  if (0 <= endx && endx <= 300 && 0 <= endy && endy <= 300) {
    line(startx, starty, endx, endy);
  }
  // set next start point to current endpoint
  startx = endx;
  starty = endy;
}
void mousePressed() {
  startx = 150;
  starty = 150;
  endx = startx + (int)(Math.random()*41)-20;
  endy = starty + (int)(Math.random()*41)-20;
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  background(0);
}
