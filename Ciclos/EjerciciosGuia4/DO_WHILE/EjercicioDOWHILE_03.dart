import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 03
  /*
  En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los ndiputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */

  //DECLARACION DE VARIABLES
  double porcentaje_favor, porcentaje_contra;
  int contador_favor = 0, contador_contra = 0, total_votos = 0;
  String? opcion, opcion_tratado;

  //PROCESO
  do {
    print("sr. diputado esta a favor o en contra del tratado? (F) (C)");
    opcion_tratado = stdin.readLineSync();
    if (opcion_tratado!.toUpperCase() == "f") {
      contador_favor++;
      total_votos++;
    } else if (opcion_tratado.toUpperCase() == "c") {
      contador_contra++;
      total_votos++;
    } else {
      print("voto nulo");
    }
    print("hasstas el momento van: $total_votos votos");
    print("desea ingresar otro diputado? (si) (no)");
    opcion = stdin.readLineSync();
  } while (opcion!.toLowerCase() != "no");
  total_votos = contador_favor + contador_contra;
  porcentaje_favor = (contador_favor * 100) / total_votos;
  porcentaje_contra = (contador_contra * 100) / total_votos;
  print("el porcentaje de votos a favor es de: $porcentaje_favor %");
  print("el porcentaje de votos en contra es de: $porcentaje_contra %");
}
