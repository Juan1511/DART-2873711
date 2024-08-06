import 'dart:io';

import 'vehiculo.dart';

void main(List<String> args) {
  vehiculo vehi_obj1 = vehiculo("azul", 40, 2);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(125);
  vehi_obj1.detenerse();

  //LISTAS O ARRAYS DE OBJETOS
List<String> nombresVehiculos = [];
for (var i = 0; i < 5; i++){
  print("ingrse el nombre del vehiculo");
  nombresVehiculos.add(stdin.readLineSync()!);
}
print(nombresVehiculos);

// ignore: unused_local_variable
List<vehiculo> listaVehiculos = [];
String colorUsuario;
int velocidadUsuario;
double tamanoUsuario;
for (var i = 0; i < 5; i++){
  print("ingrese el color del vehiculo ${i + 1}");
  colorUsuario = stdin.readLineSync()!;
  print("ingrese la velocidad del vehiculo ${i + 1}");
  velocidadUsuario = int.parse(stdin.readLineSync()!);
  print("ingrse el tamano del vehiculo ${i + 1}");
  tamanoUsuario = double.parse(stdin.readLineSync()!);
  vehiculo vehiculo_obj = vehiculo(colorUsuario, velocidadUsuario, tamanoUsuario);
  print("*" * 50);
  print("vehiculo ${i + 1}");
  vehiculo_obj.avanzar(30);
  vehiculo_obj.avanzar(20);
  vehiculo_obj.detenerse();

}
}