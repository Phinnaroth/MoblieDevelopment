class Shape {
  Point left_bottom;
  int width, height;
  String? background;

  Shape( this.left_bottom, this.width, this.height, {this.background});

  Point get rightTop => Point((left_bottom.x + width), (left_bottom.y + height));
}

 
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);


  Point translate(int dx, int dy) {
    return Point(x + dx, y + dy);
  }

  void Print() {
    print('x: $x, y: $y');
  }
}
 
 
void main() {
  
    var p1 = Point(3, 4);
    p1.Print();
    
    var shape = Shape(p1, 5, 5, background: 'pink');

    print('Left bottom point: ');
    shape.left_bottom.Print();

    print('Right top point:');
    shape.rightTop.Print();

    print('Width: ${shape.width}');
    print('Height: ${shape.height}');
    print('Background: ${shape.background}');
}


 