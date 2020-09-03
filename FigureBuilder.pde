Test re; //<>// //<>//
float rotato = 0;

void setup() {
    size(800, 600);
    background(255);
    frameRate(30);
  
  re = new Test(new Position(width / 2, height / 2), 0);
  re.build();
}

void draw() {
  //background(255);
  
  rotato++;
}

/*void draw() {
  background(255);
  
  print(test + "\n");
  pushMatrix();
  
  rectMode(CENTER);
  rotate(radians(test));
  rect(0, 0, 52, 52);
  
  
 popMatrix();
  test += 1;
}*/

class Test extends FigureGroup {  
  Test(Position position, float rotate) {
    super(position, rotate);
  }
  
  void build() {
    Triangle tr = new Triangle(new Position(0, 0), 0, 20);
    tr.parent = true;
    tr.build();
    
    Rectangle me = new Rectangle(new Position(0, 0), 20, 20);
    me.component = true;
    me.build();
  }
}
