import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 08
  /*
  El jefe del departamento de construcción de la constructora Pagasa, 
  desea que se le desarrolle un programa para sus empleados, 
  el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de la siguiente manera: 
  si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. 
  se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. 
  se paga la cuota normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. 
  se paga al triple de la cuota por  hora.  Se  pedirá  el  nombre  del  empleado,  
  el  número  de  horas  trabajadas  y  la  cuota  por  hora. mostrar en pantalla el nombre del empleado, 
  el número de horas trabajadas y su sueldo.
  */

  //DECLARACIÓN DE VARIABLES
  String? nombre;
  int horas, horas_extra;
  double precio_hora, total;

  //ENTRADA DE DATOS
  print("Ingrese su nombre:");
  nombre = stdin.readLineSync();
  print("Ingrese las horas de trabajó:");
  horas = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio por hora:");
  precio_hora = double.parse(stdin.readLineSync()!);

  //PROCESO
  horas_extra = horas - 40;
  if (horas_extra <= 0) {
    total = precio_hora * horas;
  } else if (horas_extra <= 10) {
    total = (40 * precio_hora) + (horas_extra * precio_hora * 2);
  } else {
    total = (40 * precio_hora) +
        (10 * precio_hora * 2) +
        ((horas_extra - 10) * precio_hora * 3);
  }

  //SALIDA
  print("nombre empleado: $nombre");
  print("el suldo es de: $total");
}
