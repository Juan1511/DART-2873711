import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 05

  /*
  Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.  Imprimir  el  multiplicando,  el multiplicador y el producto.
  */

  //DECLARACION DE VARIABLES 
    int numero, producto;

    //ENTRADA DE DATOS
    print("ingrse la tabla que desea:");
    numero = int.parse(stdin.readLineSync()!);

    //PROCESO
    for( int i = 0; i < 10; i++){
      producto = numero*(i+1);

      print("$numero x " +(i+1).toString()+ " = $producto");
    }
}