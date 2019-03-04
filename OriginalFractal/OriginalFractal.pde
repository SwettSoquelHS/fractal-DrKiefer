void setup(){
    size(800, 800);
}


void draw() {
  createFractal(width/2, height/2, 20, 4, 20, 20, 5, 5);
}

void createFractal(int x, int y, int space, int dir, int rad1, int rad2, int sizeX, int sizeY) {
 
  for(int i = 0; i < sizeX; i++) {
    for(int j = 0; j < sizeY; j++) {
        // space += space + 20;
        ellipse(x + (i += space),  y , rad1, rad2);
    }
  }
  
}
