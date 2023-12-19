// Definición de la clase ConexionDB con un constructor de fábrica
class ConexionDB {
  static final ConexionDB _instance = ConexionDB._internal();

  // Constructor interno privado
  ConexionDB._internal();

  // Constructor de fábrica que devuelve la instancia única
  factory ConexionDB() {
    return _instance;
  }

  void conectar() {
    // Lógica para conectar a la base de datos
  }
}

void main() {
  var db1 = ConexionDB();
  var db2 = ConexionDB();
  print(db1 ==
      db2); // Esto imprimirá true, demostrando que ambas variables son la misma instancia
}
