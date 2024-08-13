class Evento {
  String _nombre;
  int cantPersonas;
  DateTime _fecha;

  Evento(this._nombre, this.cantPersonas, this._fecha);

  //METODOS SETTERS Y GETTERS
  void setNombre(String nom) {
    _nombre = nom;
  }

  String getNombre() {
    return _nombre;
  }

  void setCantPersonas(int cant) {
    cantPersonas = cant;
  }

  int getCantPersonas() {
    return cantPersonas;
  }

  void setFechaEvento(DateTime fecha) {
    _fecha = fecha;
  }

  DateTime getFechaEvento() {
    return _fecha;
  }

  void _mostrarInfo() {
    print("""
**********************************
Nombre: $_nombre                  
cantidad personas: $cantPersonas  
Fecha: $_fecha                    
**********************************
          """);
  }

  void mostrarInformacion() {
    _mostrarInfo();
  }
}
