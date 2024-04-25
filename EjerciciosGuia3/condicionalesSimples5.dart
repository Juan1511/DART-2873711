import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES SIMPLES 05

/*
Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
*/

//DECLARACION DE VARIABLES 
int precio, precio_llantas, cantidad_llantas;

//ENTRADA DE DATOS
print("ingrese la cantidad de llantas compradas:");
cantidad_llantas = int.parse(stdin.readLineSync()!);

//PROCESO
precio_llantas = 80000;
if(cantidad_llantas >= 5){
  precio_llantas = 70000;
}
precio = precio_llantas * cantidad_llantas;

 //SALIDA
 print("el total a pagar es de: $precio");
}