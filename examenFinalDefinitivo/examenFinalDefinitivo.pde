Player ship;
ArrayList<GameObject> drawables = new ArrayList<GameObject>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); // Inicialización de la lista de balas

void setup() {
  size(1024, 768);
  ship = new Player("ship.png", new Vector2(512, 384));
}

void draw() {
  background(0);
  ship.ProcessInput();
  ship.Display(); // Mostrar la nave correctamente
  for (GameObject go : drawables) {
    go.Display();
  }
  for (Bullet bullet : bullets) {
    bullet.Update();
    bullet.Display();
  }
}



 
