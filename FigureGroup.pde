class FigureGroup extends Object {  
  FigureGroup(Position position, float rotate) {
    this.position = position;
    rotation = rotate;
    
  }
  
  void init() {
    translate(position.x, position.y);
    rotate(radians(rotation));
  }
  
  void reset() {
    translate(0 - position.x, 0 - position.y);
    rotate(radians(0 - rotation));
  }
}
