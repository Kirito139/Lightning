void setup() {
  size(300,300);
  background(0);
  stroke(0,0,255);
}
void draw() {
  int prevx = 150;
  int prevy = 150;
  int x = prevx + (int)Math.random()*10+1;
  int y = prevx + (int)Math.random()*10+1;
  while (true) {
    prevx = x;
    prevy = y;
    line(prevx, prevy, x, y);
    x += (int)Math.random()*10+1;
    y += (int)Math.random()*10+1;
  }
}
// void mousePressed() {
// }
