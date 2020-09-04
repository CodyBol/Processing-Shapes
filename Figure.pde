class Figure extends Object {
  float heightFigure;
  float widthFigure;
  float strokeWeight;

  int strokeCap = SQUARE;
  int strokeJoin = MITER;
  int anchor = CENTER;

  color stroke;  
  color colorRGB;

  Figure(Position position, float widthFigure, float heightFigure) {
    this.position = position;
    this.heightFigure = heightFigure;
    this.widthFigure = widthFigure;
  }

  protected void init()
  {  
    fill(colorRGB);

    stroke(stroke);
    strokeCap(strokeCap);
    strokeJoin(strokeJoin);
    strokeWeight(strokeWeight);
    
    if (stroke == 0) {
      noStroke();
    }

    translate(position.x, position.y);
    rectMode(anchor);
    rotate(radians(rotation));
  }

  void reset() {
    rotate(radians(0 - rotation));
    translate(0 - position.x, 0 - position.y);
  }
}
