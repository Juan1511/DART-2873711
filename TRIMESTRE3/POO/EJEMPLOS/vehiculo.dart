
class vehiculo {
  String color;
  int velocidad;
  double tamano;

  //vehiculo(String col, int vel, double tam) {
  //this.color = col;
  //this.velocidad = vel;
  //this.tamano = tam;}

  vehiculo(this.color, this.velocidad, this.tamano) {}

  //METODOS SET Y GET
  //SETEA O ASIGNA UN NUEVO VALOR PARA EL ATRIBUTO COLOR
  void setColor(String newColor){
    this.color = newColor;
  }
  void setVelocidiad(int newVelocidad){
    this.velocidad = newVelocidad;
  }
  void setTamano(double newTamano){
    this.tamano = newTamano;
  }

  //PERMITE OBTENER EL VALOR DEL ATRIBUTO COLOR
  String getColor(){
    return this.color;
  }
  int getvelocidad(){
    return this.velocidad;
  }
  double getTmano(){
    return this.tamano;
  }

  void avanzar(int velAvanzar) {
    int newVelocidad = this.velocidad + velAvanzar;
    if (newVelocidad <= 200) {
      this.velocidad = this.velocidad + velAvanzar;
      print("el vehiculo avanza a ${this.velocidad}");
    } else {
      print("no se puede superar el limite de 200km/h");
    }
  }

  void detenerse() {
    velocidad = 0;
    print("el vehiculo se detuvo");
  }

  void disminuir(int velDisminuir) {
    int newVelocidad = this.velocidad - velDisminuir;
    if (newVelocidad >= 0) {
      this.velocidad = this.velocidad - velDisminuir;
      print("el vehiculo disminuyo a ${this.velocidad}");
    } else {
      print("no de puede bajar del limite de 0km/h");
    }
  }
  void parquear(String lugar){
    print(" el vehiculo se parquea en $lugar");
  }
}
