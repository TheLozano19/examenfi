class Transform {
  Vector2 position = new Vector2();
  float rotation;
  Vector2 scale = new Vector2(1,1);

  void Translate(Vector2 dist) {
    position.x += dist.x;
    position.y += dist.y;
  }

  void Rotate(float degrees) {
    rotation = (rotation + degrees) % 360;
    if (rotation < 0) rotation += 360; // Ajusta rotación negativa
  }
}
