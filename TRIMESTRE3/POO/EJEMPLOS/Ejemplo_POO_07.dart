import 'Evento.dart';

void main(List<String> args) {
  Evento evento1 =
      new Evento("Campeonato CPIC", 30, DateTime(2024, 8, 13, 10, 30));

  String nombre = evento1.getNombre();
  print(nombre);

  evento1.setNombre("Campeonato SENA - CPIC");
  nombre = evento1.getNombre();
  print(nombre);

  print(evento1.cantPersonas);
  print(evento1.getFechaEvento());
  evento1.mostrarInformacion();
}
