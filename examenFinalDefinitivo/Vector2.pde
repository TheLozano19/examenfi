
class Vector2 {
  float x, y;

  Vector2() {}

  Vector2(float _x, float _y) {
    x = _x;
    y = _y;
  }

  float Distance(Vector2 from) {
    return dist(x, y, from.x, from.y);
  }

  void mult(float scalar) {
    x = scalar;
    y= scalar;
  }
}
