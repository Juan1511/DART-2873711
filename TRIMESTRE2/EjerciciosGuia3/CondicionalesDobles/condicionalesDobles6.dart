import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 06
  /*
  El  gobierno  colombiano  desea  reforestar  un  bosque  que  mide  determinado  número  de  hectáreas.  Si  la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:Porcentaje de la superficie del bosqueTipo de árbol70%Pino20%Roble10%CedroSi la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:Porcentaje de la superficie del bosqueTipo de árbol50%Pino30%Roble20%CedroEl gobierno desea saber el numerode pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.
  */

  //DECLARACION DE VARIABLES
  double metros2, por_cedro, por_roble, por_pinos, cant_robles, cant_cedros, cant_pinos, hectareas;

  //ENTRADA DE DATOS
  print("ingrese las hectareas del terreno:");
  hectareas = double.parse(stdin.readLineSync()!);

  //PROCESO
  metros2 = hectareas*10000;
  if(metros2 >1000000){
    por_roble = 0.2;
    por_cedro = 0.1;
    por_pinos = 0.7;
  }else{
    por_roble = 0.3;
    por_cedro = 0.2;
    por_pinos = 0.5;
  }
  cant_pinos = metros2*8/10*por_pinos;
  cant_cedros = metros2*10/18*por_cedro;
  cant_robles = metros2*15/15*por_roble;

  //SALIDA
  print("la cantidad de pinos que se pueden sembrar en el terreno es de: $cant_pinos \nla cantidad de robles que se pueden sembrar en el terreno es de: $cant_robles \nla cantidad de cedros que se pueden sembrar en el terreno es de: $cant_cedros");
}