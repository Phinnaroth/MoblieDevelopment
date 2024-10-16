 
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
  
    var p1 = Point(4, 5);
    var t1 = p1.translate(2, 3);
    p1.Print();
    t1.Print();


}


 