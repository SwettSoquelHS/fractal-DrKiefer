
float rotIn = 0.1;
void setup() {
  size(1000,1000);



}

void draw() {
  background(0);

  drawPlanets(width/2, 280, 10);
  
}

void drawPlanets(int x, int radius, int level) {    
  float p1 = 100;
  float p2 = 720;
  float p3 = 173;
  
  float c1 = p1 * level/4.0;
  float c2 = p2 / level%5.0;
  
  fill(c1, p3, c2);
 
  rotate(level + rotIn);
  ellipse(x, height/2, radius*2, radius*2);      
  if(level > 1) {
    level--;
    drawPlanets(x - radius/2, radius/3, level);
    drawPlanets(x + radius/2, radius/2, level);
  }
}
  
void mousePressed() {
  rotIn += 0.1;
  
}
