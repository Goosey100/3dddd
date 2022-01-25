boolean wkey, akey, skey, dkey;
void setup() {
  size (800, 600, P3D);
  textureMode(NORMAL);
  wkey = akey = skey = dkey = false;
}

void draw() {
  background(0);
  drawFloor();
  controlCamera();
}

void drawFloor() {
  stroke(255);
  for (int x = -2000; x<= 2000; x=x+100)
  {
    line(x, height, -2000, x, height, 2000);
    line(-200, height, x, 2000, height, x);
  }
}
void controlCamera() {
}
void keyPressed() {
  if (key== 'W' || key =='w') wkey = true;
  if (key== 'A' || key =='a') akey = true;
  if (key== 'S' || key =='s') skey = true;
  if (key== 'D' || key =='d') dkey = true;
}
void keyReleased() {
  if (key== 'W'|| key =='w') wkey = false;
  if (key== 'A' || key =='a') akey = false;
  if (key== 'S' || key =='s') skey = false;
  if (key== 'D' || key =='d') dkey = false;
}
