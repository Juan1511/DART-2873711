class Empleado{
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(
      this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato) {}

  // Metodo para mostrar salario actual y nuevo salario
  void aumentarSalario(double porcentaje) {
    print("Salario actual> ${this.salario}");
    this.salario += (this.salario * porcentaje) / 100;
    print("Nuevo salario> ${this.salario}");
  }

  // Retornar cumplir años de manera mas eficiente y que se pueda utilizar mas adelante en el main
  int cumplirAnios() {
    this.edad++;
    return this.edad;
  }

  // Retornar tipo de puesto y que se pueda utilizar mas adelante en el main
  String cambiarPuesto(String nuevoPuesto) {
    this.puesto = nuevoPuesto;
    return this.puesto;
  }

  // Metodo mostrar informacion
  void mostrarInformacion() {
    print("""
Nombre: $nombre
Edad: $edad
Salario: $salario
Puesto: $puesto
Tipo de contrato: $tipoContrato
      """);
  }

  double calcularBonificacion() {
    double bonificacion;
    switch (this.tipoContrato.toLowerCase()) {
      case "contratista":
        bonificacion = salario * 0.1;
        break;

      case "temporal":
        bonificacion = salario * 0.5;
        break;

      case "indefinido":
        bonificacion = salario * 0.15;
        break;
      default:
        bonificacion = 0;
        break;
    }
    this.salario += bonificacion;
    return this.salario;
  }
}
