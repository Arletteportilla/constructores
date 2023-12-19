import 'package:flutter/material.dart';
import 'vehiculo.dart'; // Asume que tienes un archivo vehiculo.dart
import 'conexionDB.dart'; // Asume que tienes un archivo conexionDB.dart

void main() {
  runApp(const MyApp());

  // Ejemplo de uso de constructores por nombre para la clase Vehiculo
  var vehiculoDesdeMotor = Vehiculo.desdeMotor('Electrico');
  var vehiculoConCapacidad = Vehiculo.conCapacidad(5);

  print(
      vehiculoDesdeMotor); // Imprime la instancia de Vehiculo creada con el constructor desdeMotor
  print(
      vehiculoConCapacidad); // Imprime la instancia de Vehiculo creada con el constructor conCapacidad

  // Ejemplo de uso del constructor de fábrica para la clase ConexionDB
  var conexion1 = ConexionDB();
  var conexion2 = ConexionDB();

  // Esto debería imprimir true, demostrando que ambas variables son la misma instancia
  print(conexion1 == conexion2);

  // Conectarse a la base de datos (demostración)
  conexion1.conectar();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Aquí se define la UI de la app
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
