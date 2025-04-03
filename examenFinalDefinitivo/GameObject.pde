class GameObject {
  Transform transform = new Transform();
  PImage sprite;

  GameObject() {}

  GameObject(String image, Vector2 initPos) {
    transform.position = initPos;
    sprite = loadImage(image);
    if (sprite != null) { // Validar que la imagen se haya cargado
      drawables.add(this);
    }
  }

  void Display() {
    if (sprite != null) { // Validación para evitar errores
      imageMode(CENTER);
      pushMatrix();
      translate(transform.position.x, transform.position.y);
      rotate(transform.rotation * (TWO_PI / 360));
      scale(transform.scale.x, transform.scale.y);
      image(sprite, 0, 0, 50, 50);
      popMatrix();
    }
  }
}
