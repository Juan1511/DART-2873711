import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 04

  /*
  Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje tiene  estudios  de  primaria,  secundaria,  carrera  técnica,  estudios  profesionales  y  estudios  de posgrado.El programa debe preguntar si se desea continuar ingresando datos.
  */

  //DECLARACION DE VARIABLES 
  double porcentaje_primaria, porcentaje_secundaria, porcentaje_tecnico, porcentaje_profesional, porcentaje_posgrado;
  int opcion, contador_primaria = 0, contador_secundaria = 0, contador_tecnico = 0, contador_profesional = 0, contador_posgrado = 0, num_personas = 0;
  String? estudios;

  //PROCESO
  do {
    print("Ingrese el nivel de estudios que tiene");
    estudios = (stdin.readLineSync())!.toLowerCase();
    if(estudios == "primaria"){
      contador_primaria ++;
      num_personas++;
    }else if(estudios == "secundaria"){
      contador_secundaria ++;
      num_personas++;
    }else if(estudios == "tecnico"){
      contador_tecnico++;
      num_personas++;
    }else if(estudios == "profesional"){
      contador_profesional++;
      num_personas++;
    }else if(estudios == "posgrado"){
      contador_profesional++;
      num_personas++;
    }else{
      print("No es un estudio válido");
    }
    print("desea ingrsesar otra persona (0) si (1) no");
    opcion = int.parse(stdin.readLineSync()!);
    while(opcion != 1 && opcion != 0){
      print("Opción incorrecta, ingrese nuevamente la opción");
      opcion = int.parse(stdin.readLineSync()!);
    }
  } while (opcion != 1);
  porcentaje_primaria = contador_primaria*100/num_personas;
  porcentaje_secundaria = contador_secundaria*100/num_personas;
  porcentaje_tecnico = contador_tecnico*100/num_personas;
  porcentaje_profesional = contador_profesional*100/num_personas;
  porcentaje_posgrado = contador_posgrado*100/num_personas;

  print("el porcentaje de Primaria es: $porcentaje_primaria");
  print("el porcentaje de secundaria es: $porcentaje_secundaria");
  print("el porcentaje de tecnico es: $porcentaje_tecnico");
  print("el porcentaje de profecional es: $porcentaje_profesional");
  print("el porcentaje de posgrado es: $porcentaje_posgrado");
}