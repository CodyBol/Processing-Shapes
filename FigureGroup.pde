class FigureGroup {
  Position position;
  float rotation;
  boolean component = false;
  
  FigureGroup(Position position, float rotate) {
    this.position = position;
    rotation = rotate;
    
  }
  
  void init() {
    translate(position.x, position.y);
    rotate(radians(rotation));
  }
  
  void reset() {
    rotate(radians(0 - rotation));
    translate(0 - position.x, 0 - position.y);
  }
}
