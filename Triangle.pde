class Triangle extends Figure {  
  Triangle(Position position, float widthFigure, float heightFigure) {
    super(position, widthFigure, heightFigure);
  }
  
  void build() {
    init();
    triangle(0, -(heightFigure / 2), -(widthFigure / 2), (heightFigure / 2), (widthFigure / 2), (heightFigure / 2));
    
    reset();
  }
}
