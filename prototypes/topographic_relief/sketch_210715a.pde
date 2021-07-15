// Topographic Relief
//
// First cut using Perlin noise to simulate a terrain. Contours are
// plotted as points. X-axis offset is stepped over time to pan
// over terrain.

float zoff = 0;

float step = 0;

void draw_contours() {
  float xoff = 0 + step;
  
  for (int i = 0; i < 400; i++) {
    float yoff = 0;
    
    for (int j = 0; j < 400; j++) {
      int elevation = int(map(noise(xoff, yoff), 0, 1, -10, 10000));
      
      if (elevation % 125 < 13) {
        stroke(98);
        point(i, j);
      }
      
      yoff += 0.002;
    }
    
    xoff += 0.0031;
  }
  
  zoff += 0.0001;
  step += 0.001;
}

void setup() {
  size(400, 400);
}

void draw() {
  background(250);
  
  draw_contours();
}
