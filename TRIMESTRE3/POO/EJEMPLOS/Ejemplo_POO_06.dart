import 'vehiculo.dart';

void main(List<String> args) {
  vehiculo myCar = vehiculo("rojo", 200, 2.5);

  print("el auto es de color ${myCar.getColor()}");
  myCar.setColor("amarillo");
  print("el auto cambio a color ${myCar.getColor()}");

  print("el auto tiene una velocidad de ${myCar.getvelocidad()}");
  myCar.setVelocidiad(150);
  print("el auto cambio a una velocidasd de ${myCar.getvelocidad()}");

  print("el auto tiene un tamaño de ${myCar.getTmano()}");
  myCar.setTamano(3);
  print("el auto cambio a un tamaño de ${myCar.getTmano()}");
}
