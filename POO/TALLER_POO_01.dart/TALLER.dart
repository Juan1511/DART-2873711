import 'dart:io';

import 'Empleado.dart';

void main(List<String> args) {
  List<Empleado> listaEmpleados = [];
  String nombreUsuario;
  int cantidadEntradas;
  int edadUsuario;
  double salarioUsuario;
  String puestoUsuario;
  String tipoContratoUsuario;

  print("cantidad de entradas:");
  cantidadEntradas = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < cantidadEntradas; i++) {
    print("ingrse el nombre del empleado ${i + 1}");
    nombreUsuario = stdin.readLineSync()!;
    print("ingrse la edad del empleado ${i + 1}");
    edadUsuario = int.parse(stdin.readLineSync()!);
    print("ingrse el salario del empleado ${i + 1}");
    salarioUsuario = double.parse(stdin.readLineSync()!);
    print("ingrse el puesto del empleado ${i + 1}");
    puestoUsuario = stdin.readLineSync()!;
    print("ingrse el tipo de contrato del empleado ${i + 1}");
    tipoContratoUsuario = stdin.readLineSync()!;

    Empleado emp1 = new Empleado(nombreUsuario, edadUsuario, salarioUsuario,
        puestoUsuario, tipoContratoUsuario);
    listaEmpleados.add(emp1);
  }
  print("*" * 30);

  mostrarInformacionLista(listaEmpleados);
}

void mostrarInformacionLista(List<Empleado> listaEmpleados) {
  for (int i = 0; i < listaEmpleados.length; i++) {
    listaEmpleados[i].mostrarInformacion();
    listaEmpleados[i].aumentarSalario(10);
    int newedad = listaEmpleados[i].cumplirAnios();
    print("""
la nueva edad del empleado es $newedad
        """);
    String newPuesto = listaEmpleados[i].cambiarPuesto("diseñador");
    print("el nuevo puesto del empleado es $newPuesto");

    listaEmpleados[i].calcularBonificacion();
    double newsalario = listaEmpleados[i].calcularBonificacion();
    print("""
el nuevo salario despues de la bonificacion es de $newsalario
          """);
  }
}
