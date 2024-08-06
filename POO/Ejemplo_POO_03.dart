class vehiculo {
  late String color;
  late int velocidad;
  late double tamano;

  vehiculo(String col, int vel, double tam) {
  this.color = col;
  this.velocidad = vel;
  this.tamano = tam;}

  //vehiculo(this.color, this.velocidad, this.tamano) {}

  void avanzar(int velAvanzar) {
    this.velocidad = this.velocidad + velAvanzar;
    print("el vehiculo avanza a ${this.velocidad}");
  }

  void detenerse() {
    velocidad = 0;
    print("el vehiculo se detuvo");
  }
}

void main(List<String> args) {
  vehiculo miVehicilo1;
  miVehicilo1 = vehiculo("blanco", 30, 3.5);

  miVehicilo1.avanzar(60);
  miVehicilo1.avanzar(70);
  miVehicilo1.detenerse();
  //*******************************************************/
  vehiculo miVehicilo2 = vehiculo("negro", 10, 4.5);
  miVehicilo2.avanzar(50);
  miVehicilo2.detenerse();
  //*******************************************************/
  miVehicilo1.avanzar(40);
  //*******************************************************/
  
}
