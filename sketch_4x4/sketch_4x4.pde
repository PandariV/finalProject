import peasy.*;
PeasyCam camera;

float r = 25;

PVector center = new PVector(0, 0, 0);
PVector[] axes = {new PVector(1, 0, 0), new PVector(0, 1, 0), new PVector(0, 0, 1), new PVector(-1, -0, -0), new PVector(0, -1, 0), new PVector(0, 0, -1)};

//red, blue, white, green, yellow, orange
color[] colors = {#87000f, #0757bf, #ffffff, #30ff4b, #ffff11, #ff973d};

Cube cube = new Cube();

void setup() {
  size(600, 600, P3D);
  stroke(0);

  camera = new PeasyCam(this, 600);
  camera.setResetOnDoubleClick(false);
  camera.setMinimumDistance(600);
  camera.setMaximumDistance(600);
}

void draw() {
  background(0);
  cube.display();
}

void keyPressed() {
  if(key == 'r') {
    cube.turn(3, "y");
  } else if(key == 'R') {
    cube.turn(2, "y");
  } else if(key == 'L') {
    cube.turn(1, "y");
  } else if(key == 'l') {
    cube.turn(0, "y");
  } else if(key == 'd') {
    cube.turn(3, "x");
  } else if(key == 'D') {
    cube.turn(2, "x");
  } else if(key == 'U') {
    cube.turn(1, "x");
  } else if(key == 'u') {
    cube.turn(0, "x");
  } else if(key == 'f') {
    cube.turn(3, "z");
  } else if(key == 'F') {
    cube.turn(2, "z");
  } else if(key == 'B') {
    cube.turn(1, "z");
  } else if(key == 'b') {
    cube.turn(0, "z");
  } else if(key == ' ') {
    cube = new Cube();
  }
}
