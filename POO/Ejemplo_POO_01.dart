import 'dart:core';
import 'dart:io';

class Perro{
  //ATRIBUTOS
  String nombre;
  String raza;
  double peso;

  //CONSTRUCTOR: FUNCION QUE SE EJECUTA CUANDO SE CREA UN OBJETO DE LA CLASE
  Perro(this.nombre, this.raza, this.peso);

  //METODO
  void correr(){
    print("el perro ${this.nombre} corre");
  }
  void ladrar(){
    print("el perro ${this.nombre} ladra");
  }
  void dormir(){
    print("el perro ${this.nombre} duerme");
  }
  void mostrarinformacion(){
    print("el perro se llama ${this.nombre}, es de raza ${this.raza}, y pesa ${this.peso} kg");
  }
  }//FIN DE LA CLASE

  void main(List<String> args) { 
  //CREAMOS EL OBJETO DE LA CLASE PERRO
  Perro perro1;
  perro1 = Perro("firu", "pitbull", 30.5);
  perro1.correr();
  perro1.ladrar();
  perro1.dormir();
  perro1.mostrarinformacion();
  /**********************************************/
  print("*" * 50);
  Perro perro2 = Perro("mac", "pincher", 4);
  perro2.correr();
  perro2.ladrar();
  perro2.dormir();
  perro2.mostrarinformacion();
  /**********************************************/
  print("*" * 50);
  String nombrePerro;
  String razaPerro;
  double pesoPerro;
  print("ingrese el nombre del perro");
  nombrePerro = stdin.readLineSync()!;
  print("ingrese la raza del perro");
  razaPerro = stdin.readLineSync()!;
  print("ingrese el peso del perro");
  pesoPerro = double.parse(stdin.readLineSync()!);
  Perro perro3 = Perro(nombrePerro, razaPerro, pesoPerro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarinformacion();
}



