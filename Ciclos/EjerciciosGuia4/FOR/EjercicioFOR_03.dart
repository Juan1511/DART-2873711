import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA RINCON - FOR 03

  /*
  Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */

  //DECLATACION DE VARIABLES
  int cant_positivos, cant_negativos, cant_ceros, numeros;

  //PROCESO
  cant_positivos = 0;
  cant_negativos = 0;
  cant_ceros = 0;
  for( int i = 0; i < 20; i ++){
    print("ingrese los numeros ");
    numeros = int.parse(stdin.readLineSync()!);
    if(numeros > 0){
      cant_positivos++;
    }else if( numeros < 0){
    cant_negativos++;
    }else if( numeros == 0){
    cant_ceros++;
    }
  }

  //SALIDA
  print("la cantidad de positivos es: $cant_positivos");
  print("la cantidad de negativos es: $cant_negativos");
  print("la cantidad de ceros es: $cant_ceros");
}