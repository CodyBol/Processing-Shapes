class Rectangle extends Figure {  
  Rectangle(Position position, float widthFigure, float heightFigure) {
    super(position, widthFigure, heightFigure);
  }
  
  void build() {
    init();
    rect(0, 0, heightFigure, widthFigure);
    
    reset();
  }
}
