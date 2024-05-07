import 'dart:io';

void main(List<String> args) {
  /*
  pedir al usuario n notas ingresadas por el usuario. si el promedio es mayor a 3, decir que el estudiante aprobo el trimestre si no que inique que reprobo
  */

  //DECLARACION DE VARIABLES
  int cantNotas;
  double nota, suma, promedio;

  //ENTRADA DE DATOS
  print("ingrese la cantidad de notas:");
  cantNotas = int.parse(stdin.readLineSync()!);

  //PROCESO
  suma = 0;
  for (int i = 0; i < cantNotas; i++){
    print("ingrese las notas:" + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma/cantNotas;
  if(promedio >= 3){
    print("aprobo el trimestre");
  }else{
    print("desaprobo el trimestre");
  }
}
