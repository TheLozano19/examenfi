class Player extends GameObject {
  Player(String image, Vector2 initPos) {
    super(image, initPos);
  }

  void ProcessInput() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        float angleInRadians = radians(transform.rotation - 90);
        Vector2 forward = new Vector2(cos(angleInRadians), sin(angleInRadians));
        transform.Translate(forward);
      }
      if (key == 'a' || key == 'A') {
        transform.Rotate(-5);
      }
      if (key == 'd' || key == 'D') {
        transform.Rotate(5);
      }
      if (key == ' ') { // Dispara una bala con la barra espaciadora
        bullets.add(new Bullet("small.png", new Vector2(transform.position.x, transform.position.y), transform.rotation));
      }
    }
  }
}
