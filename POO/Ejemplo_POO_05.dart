import 'dart:io';
import 'vehiculo.dart';

void main(List<String> args) {
  int cantIteraciones = 5;
  String colorUsuario;
  int velocidadUsuario;
  double tamanoUsuario;
  String parquearUsuario;
  List<vehiculo> listaVehiculos = [];
  for (var i = 0; i < cantIteraciones; i++) {
    print("ingrese el color del vehiculo ${i + 1}");
    colorUsuario = stdin.readLineSync()!;
    print("ingrese la velocidad del vehiculo ${i + 1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("ingrse el tamano del vehiculo ${i + 1}");
    tamanoUsuario = double.parse(stdin.readLineSync()!);

    print("*" * 30);
    //se instancia la clase vehiculo y se crea el objeto con los valores del usuario
    vehiculo vehiculo_obj =
        vehiculo(colorUsuario, velocidadUsuario, tamanoUsuario);
    //se añade el vehiculo a la lista
    listaVehiculos.add(vehiculo_obj);
  }
  //ciclo para recorrer elelmentos (objetos) de la lista y llamar los metodos
  for (var i = 0; i < cantIteraciones; i++) {
    print("*" * 50);
    print("ingrse el lugar donde se va a parquiar en:");
    parquearUsuario = stdin.readLineSync()!;
    print("*** vehiculo ${i + 1} ***");
    listaVehiculos[i].avanzar(20);
    listaVehiculos[i].avanzar(80);
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].disminuir(40);
    listaVehiculos[i].parquear(parquearUsuario);
    listaVehiculos[i].detenerse();
    print("*" * 30);
  }
}
