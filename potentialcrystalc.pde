/*credit to Mike Davis for Conway's Game of Life code*/
 
int sx, sy; 
float density = 0.7; 
int[][][] world;
int boxWidth=300;

void setup() 
{ 

  size(boxWidth,449);
  smooth(); 
  frameRate(5);
  sx = width;
  sy = height;
  world = new int[sx][sy][2]; 
   
  // Set random cells to 'on' 
  for (int i = 0; i < sx * sy * density; i++) { 
    world[(int)random(sx)][(int)random(sy)][1] = 1; 
  } 
} 
//variable names for varying iterations of noise function
 float xoff= 0.0;
 float zoff= 0.0;
 float moff=0.0;
 float loff=0.0;
 
void draw() 
{ 
//This stuff controls the moving arms by using the noise function to randomly move them around.
  zoff = zoff - .05; 
  float r = noise(zoff) * width; 
  
  xoff = xoff + .03; 
  float n = noise(xoff) * width;
  
  moff = moff - .06; 
  float m = noise(moff) * width; 
  
  loff = loff + .04; 
  float l = noise(loff) * width;

background(0);
  
  // Drawing and update cycle 
  for (int x = 0; x < sx; x=x+1) { 
    for (int y = 0; y < sy; y=y+1) { 
      //if (world[x][y][1] == 1) 
      // Change recommended by The.Lucky.Mutt
      if ((world[x][y][1] == 1) || (world[x][y][1] == 0 && world[x][y][0] == 1)) 
      { 
        world[x][y][0] = 1; 
        set(x, y, #FFFFFF); 
      } 
      if (world[x][y][1] == -1) 
      { 
        world[x][y][0] = 0; 
      } 
      world[x][y][1] = 0; 
    } 
  } 
  // Birth and death cycle 
  for (int x = 0; x < sx; x=x+1) { 
    for (int y = 0; y < sy; y=y+1) { 
      int count = neighbors(x, y); 
      if (count == 3 && world[x][y][0] == 0) 
      { 
        world[x][y][1] = 1; 
      } 
      if ((count < 2 || count > 3) && world[x][y][0] == 1) 
     { 
        world[x][y][1] = -1; 
      } 
    } 
  }
noStroke();

fill(82,248,255);
triangle(boxWidth/2-25, 210, boxWidth/2, 100,boxWidth/2+25, 210);

fill(22,220,240);
triangle(n, 210, boxWidth/2, 100, n+20, 210);
fill(43,194,201);
triangle(n, 210, boxWidth/2, 429, n+20, 210);

fill(22,220,240);
triangle(r, 210, boxWidth/2, 100, r+20, 210);
fill(36,174,180);
triangle(r, 210, boxWidth/2, 429, r+20, 210);

fill(22,220,240,150);
triangle(m, 210, boxWidth/2, 100, m+20, 210);
fill(24,152,157);
triangle(m, 210, boxWidth/2, 429, m+20, 210);

fill(22,220,240);
triangle(l, 210, boxWidth/2, 100, l+20, 210);
fill(9,205,211, 100);
triangle(l, 210, boxWidth/2, 429, l+20, 210);

int diameter=69;
fill(0);
ellipse(boxWidth/2,49,70,70);

while(diameter > 3) {
  fill(255,255,255,10);
  ellipse(boxWidth/2,49,diameter,diameter);
  diameter = diameter - 3;
  
}  

} 
 
// Count the number of adjacent cells 'on' 
int neighbors(int x, int y) 
{ 
  return world[(x + 1) % sx][y][0] + 
         world[x][(y + 1) % sy][0] + 
         world[(x + sx - 1) % sx][y][0] + 
         world[x][(y + sy - 1) % sy][0] + 
         world[(x + 1) % sx][(y + 1) % sy][0] + 
         world[(x + sx - 1) % sx][(y + 1) % sy][0] + 
         world[(x + sx - 1) % sx][(y + sy - 1) % sy][0] + 
         world[(x + 1) % sx][(y + sy - 1) % sy][0]; 
} 
