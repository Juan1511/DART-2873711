class animal {
  String color;
  String especie;
  double tamano;
  animal(this.color, this.especie, this.tamano);

  void hacerSonido() {
    print("El animal hace un sonido");
  }
}

//LA CLASE PERRO HEREDA DE ANIMAL
class perro extends animal {
  String raza;
  perro(this.raza, colorUsu, especieUsu, tamanoUsu) : super(colorUsu, especieUsu, tamanoUsu);
  @override //SE SOBREESCRIBE EL METEDO DEL PADRE
  void hacerSonido() {
    print("El perro ladra");
  }

  void mostrarInfo() {
    print("""
especie: $especie
color: $color
tamaño: $tamano
raza: $raza
          """);
  }
}

class gato extends animal {
  bool estaVacunado;
  gato(this.estaVacunado, colorUsu, especieUsu, tammanoUsu) : super(colorUsu, especieUsu, tammanoUsu);
  @override
  void hacerSonido() {
    print("El gato maulla");
  }

  void mostrarInfo() {
    print("""
especie: $especie
color: $color
tamaño: $tamano
esta vacunado: ${estaVacunado ? "si" : "no"}
          """);
  }
}

void main(List<String> args) {
  perro myDog = perro("pitbull", "negro", "canino", 20.0);
  myDog.hacerSonido();
  myDog.mostrarInfo();
  gato mycat = gato(true, "blanco", "felino", 10.0);
  mycat.hacerSonido();
  mycat.mostrarInfo();
}
