class Ellipse extends Figure {  
  Ellipse(Position position, float widthFigure, float heightFigure) {
    super(position, widthFigure, heightFigure);
  }
  
  void build() {
    init();
    ellipse(0, 0, heightFigure, widthFigure);
    
    reset();
  }
}
