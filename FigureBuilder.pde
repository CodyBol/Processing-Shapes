ExampleGroup group; //<>//
float r = 0;
float speed = 8;

void setup() {
    size(800, 600);
    background(255);
    frameRate(30);
  
  group = new ExampleGroup(new Position(width / 2, height / 2), 0);
}

void draw() {
  background(255);
  
  group.rotation = r;
  
  if (group.position.x <= width && group.position.y == height / 2) {
    group.position.x += speed;
  } else if (group.position.x <= 0) {
    group.position.y += speed;
  } else if (group.position.y >= (height / 2) - 20) {
    group.position.y -= speed;
  } else if (group.position.y < (height / 2) - 20) {
    group.position.x -= speed;
  } 
  
  group.build();
  r++;
}
