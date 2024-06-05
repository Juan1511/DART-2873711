void main(List<String> args) {
  List<double> vectorA, vectorB, vectorC = [];
  List<double> vectorBInvertido = [];
  double multiplicacion;
  vectorA = [2, 4, 6, 8, 10];
  vectorB = [1, 3, 5, 7, 9];

  //CICLO PARA INVERTIR EL VECTOR B
  for (int i = vectorB.length - 1; i >= 0; i--) {
    vectorBInvertido.add(vectorB[i]);
  }

  //CICLO PARA MULTIPLICAR VECTORES INVERTIDOS
  for (int i = 0; i < vectorA.length; i++) {
    multiplicacion = vectorA[i] * vectorBInvertido[i];
    vectorC.add(multiplicacion);
  }
  print(vectorA);
  print(vectorB);
  print(vectorC);
}
