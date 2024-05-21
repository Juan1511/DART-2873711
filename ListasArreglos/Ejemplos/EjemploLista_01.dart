void main(List<String> args) {
//DEFINICION Y ASIGANACION DE LISTA VACIA 
  // ignore: unused_local_variable
  List<int> numeros1 = [];

  //DEFIMICION Y ASIGNACION DE LISTA CON ELEMENTOS 
  List<int> pesos = [65, 75, 70, 48, 65, 55, 48];
  List<String>  frutas = ['manzana', 'pera', 'fresa'];
  List<bool> estado = [true, false, false, true];
  List<double> estaturas = [1.65, 1.52, 1.55, 1.80];
  
  //DEFINICION Y ASIGNACION DE LISTAS DINAMICAS 
  List<dynamic> lista_Dinamica = [30, 4.5, 'pepe', true, ['mango', 'mora', frutas], pesos];

  //ACCEDER A LOS ELEMENTOS 
  print(pesos);
  print(frutas);
  print(estado);
  print(estaturas);
  print(lista_Dinamica);
  print(frutas[1]);
  print(pesos[5]);
  print(lista_Dinamica[2]);
  print(lista_Dinamica[4][2]);
  print(lista_Dinamica[4][2][0]);
}