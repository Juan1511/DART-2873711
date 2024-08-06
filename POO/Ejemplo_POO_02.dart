import 'dart:core';
import 'dart:io';

class persona {
  //ATRIBUTOS
  String nombre;
  String genero;
  double estatura;
  DateTime fechaNac;

  //CONSTRUCTOR: FUNCION QUE SE EJECUTA CUANDO SE CREA UN OBJETO DE LA CLASE
  persona(this.nombre, this.genero, this.estatura, this.fechaNac);

  int calcularEdad() {
    DateTime hoy = DateTime.now();
    int edad = hoy.year - fechaNac.year;
    if (hoy.month < fechaNac.month ||
        (hoy.month == fechaNac.month && hoy.day < fechaNac.day)) {
      edad--;
    }
    return edad;
  }

  //METODO
  void saludar() {
    print("la persona ${this.nombre} saluda");
  }

  void comunicarse() {
    print("la persona ${this.nombre} se comunica");
  }

  void dormir() {
    print("la persona ${this.nombre} duerme");
  }

  void mostrarEdad() {
    int edad = calcularEdad();
    print("La persona ${this.nombre} tiene $edad años.");
  }

  void mostrarinformacion() {
    print(
        "la persona se llama ${this.nombre}, su genero es ${this.genero}, su estatura es de ${this.estatura} M");
  }
} //FIN DE LA CLASE

void main(List<String> args) {
  //CREAMOS EL OBJETO DE LA CLASE PERRO
  persona persona1;
  persona1 = persona("juan", "masculino", 1.70, DateTime(2006, 11, 15));
  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarinformacion();
  /**********************************************/
  print("*" * 50);
  persona persona2 =
      persona("marcelo", "masculino", 1.65, DateTime(2000, 12, 02));
  persona2.saludar();
  persona2.comunicarse();
  persona2.dormir();
  persona2.mostrarEdad();
  persona2.mostrarinformacion();
  /**********************************************/
  print("*" * 50);
  String nombrepersona3 = "laura";
  String generopersona3 = "femenino";
  double estaturapersona3 = 1.62;
  persona persona3 = persona(
      nombrepersona3, generopersona3, estaturapersona3, DateTime(2009, 09, 11));
  persona3.saludar();
  persona3.comunicarse();
  persona3.dormir();
  persona3.mostrarEdad();
  persona3.mostrarinformacion();
  /**********************************************/
  print("*" * 50);
  String nombrepersona4;
  String generopersona4;
  double estaturapersoan4;
  DateTime fechaNacpersona4;
  print("ingrese el nombre de la persona");
  nombrepersona4 = stdin.readLineSync()!;
  print("ingrese el genero de la persona");
  generopersona4 = stdin.readLineSync()!;
  print("ingrese la estatura de la persona");
  estaturapersoan4 = double.parse(stdin.readLineSync()!);
  print("ingrse la fecha de nacimiento de la persona");
  fechaNacpersona4 = DateTime.parse(stdin.readLineSync()!);
  persona persona4 = persona(
      nombrepersona4, generopersona4, estaturapersoan4, fechaNacpersona4);
  persona4.saludar();
  persona4.comunicarse();
  persona4.dormir();
  persona4.mostrarEdad();
  persona4.mostrarinformacion();
}
