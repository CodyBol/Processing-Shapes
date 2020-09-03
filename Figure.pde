class Figure {
  Position position;
  float heightFigure;
  float widthFigure;
  float strokeWeight;
  float rotation;
  
  int strokeCap = SQUARE;
  int strokeJoin = MITER;
  int anchor = CENTER;
  
  color stroke;  
  color colorRGB;
  
  FigureGroup parent;
  
  Figure(Position position, float widthFigure, float heightFigure) {
    this.position = position;
    this.heightFigure = heightFigure;
    this.widthFigure = widthFigure;
  }
  
  protected void init()
  {
    if (colorRGB != 0) {
      fill(colorRGB);
    }
    
    if (stroke != 0) {
      strokeWeight(strokeWeight);
    } else {
      noStroke();
    }
    
    stroke(stroke);
    strokeCap(strokeCap);
    strokeJoin(strokeJoin);
    
    translate(position.x, position.y);
    rectMode(anchor);
    rotate(radians(rotation));
  }
  
  void reset() {
      rotate(radians(0 - rotation));
      translate(0 - position.x, 0 - position.y);
  }
}
