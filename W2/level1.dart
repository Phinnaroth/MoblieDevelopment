 
 class Point {
  int x;
  int y;

  Point(this.x, this.y);


  void translate(int dx, int dy) {
    x += dx;
    y += dy;
  }

  void Print() {
    print('x: $x, y: $y');
  }
}
 
 
void main() {
  
    var p1 = Point(4, 5);
    p1.translate(2, 3);
    p1.Print();
    

}


 
