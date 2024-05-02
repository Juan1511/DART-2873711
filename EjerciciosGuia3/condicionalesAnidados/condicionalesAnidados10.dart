import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 10
/*

*/
  int edad;
  double nivelHemoglobina;
  String? resultado, genero, opcionEdad;
  //ENTRADA
  print("la persona e mayor a un año? si (s) no (N)");
  opcionEdad = stdin.readLineSync();
  edad = int.parse(stdin.readLineSync()!);
  print("cual es su genero hombre (H) y mujer (M)");
  genero = stdin.readLineSync();
  print("cual es sunnivel de hemoglobina");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);
  //PROCESO
  if(opcionEdad?.toUpperCase() == "SI"){
    print("ingrese su edad en años");
    edad = int.parse(stdin.readLineSync()!);
    if(edad <= 5){
      if(nivelHemoglobina <= 11.5){
        resultado = "Anemia";
      }else if(nivelHemoglobina > 15){
        resultado = "cardiopatida";
      }else{
        resultado = "normal";
      }
    }else if( edad <= 10){
      if(nivelHemoglobina <= 12.6){
        resultado = "Anemia";
      }else if(nivelHemoglobina > 15.5){
        resultado = "cardiopatida";
      }else{
        resultado = "normal";
      }
    }else if( edad <= 15){
      if(nivelHemoglobina <= 13){
        resultado = "Anemia";
      }else if(nivelHemoglobina > 15.5){
        resultado = "cardiopatida";
      }else{
        resultado = "normal";
      }
    }
  }else{
    print("ingrese la edad de el bebe en meses");
    edad = int.parse(stdin.readLineSync()!);
    if(edad > 0 && edad <= 1){
      if(nivelHemoglobina < 13){
        resultado = "anemia";
      }else if (nivelHemoglobina > 18){
        resultado = "cardiopatia";
      }else{
        resultado = "normal";
      }

    }else if(edad > 1 && edad <= 6){
      if(nivelHemoglobina < 10){
        resultado = "anemia";
      }else if (nivelHemoglobina > 18){
        resultado = "cardiopatia";
      }else{
        resultado = "normal";
      }
    }       
  }
  print("su genero es: $genero");
  print("el resultado es: $resultado");
}