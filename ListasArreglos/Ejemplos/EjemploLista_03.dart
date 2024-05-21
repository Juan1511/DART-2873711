import 'dart:io';

void main(List<String> args) {
  //AGREGAR ALEMENTOS A LA LISTA - ADD

  List<String> nombres = [];
  String? nombre;

  ///CICLO PARA LLENAR NOMBRES
  for (int i = 0; i < 5; i++) {
    print("digite el nombre #${i + 1}");
    nombre = stdin.readLineSync()!;
    nombres.add(nombre);
    print(nombres);
  }
  print("*" * 30);
  print(nombres);

  //RECORRER LA LISTA PARA MOSTRAR ELEMENTOS
  for (int i = 0; i<5; i++){
    print("nomnre #${i+1}: ${nombres[i]}");
  }
}
