class ExampleGroup extends FigureGroup {  
  ExampleGroup(Position position, float rotate) {
    super(position, rotate);
  }
  
  void build() {
    init();
    
    Triangle tr = new Triangle(new Position(0, 0), 20, 20);
    tr.build();
    
    Rectangle me = new Rectangle(new Position(0, 20), 20, 20);
    me.build();
    
    reset();
  }
}
