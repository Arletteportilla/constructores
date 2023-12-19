// Definición de la clase Vehículo
class Vehiculo {
  String motor;
  int capacidad;

  // Constructor principal (por defecto)
  Vehiculo(this.motor, this.capacidad);

  // Constructor por nombre: inicializa desde el tipo de motor
  Vehiculo.desdeMotor(String motor) : this(motor, 0);

  // Constructor por nombre: inicializa con la capacidad específica
  Vehiculo.conCapacidad(int capacidad) : this("Desconocido", capacidad);

  @override
  String toString() {
    return 'Vehiculo(motor: $motor, capacidad: $capacidad)';
  }
}

void main() {
  var vehiculo1 = Vehiculo("Diesel", 4);
  print(vehiculo1);

  var vehiculo2 = Vehiculo.desdeMotor("Eléctrico");
  print(vehiculo2);

  var vehiculo3 = Vehiculo.conCapacidad(5);
  print(vehiculo3);
}
