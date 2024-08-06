void main(){
  print("******************");
  //CONDICIONAL SIMPLE
  int edad;
  edad = 19;
  if(edad >=18){
    print("Usted es mayor de edad");
  }
  print("******************");
  
  //CONDICIONAL DOBLE
  bool esMayor = true; //Definición y Asignación
  if(esMayor == true){//SI
    print("Es mayor de edad");
  }else{//SINO
    print("Es menor de edad");
  }
   print("******************");
  print("CONDICIONAL DOBLE #2");
  double nota = 4.5;
  if (nota >= 3){
    print("Usted aprobó el exámen");
  } else{
    print("Usted no aprobó el exámen");
  }

  //CONDICIONAL ANIDADO
  int estrato = 2;
  if (estrato == 1){
    print("Usted es estrato 1");
    print("Se le subsidia ek 10% de la factura");
  }else if(estrato == 2){
    print("Usted es estrato 2");
    print("Se le subsidia el 5% de la factura");
  }else if(estrato == 3){
    print("usted es estrato 3");
    print("s le subsidia un 3% de la factura");
  }else if(estrato == 4){
    print("usted es estrato 4");
    print("usted paga un 5% mas de la factura");
  }else if(estrato == 5){
    print("usted es estrato 5");
    print("usted paga un 5% mas de la factura");
  }else if(estrato == 6){
    print("usted es estrato 6");
    print("usted paga un 15% mas de la factura");
  }else{
    print("el estrato es incorrecto");
  }


  //CONDICIONAL MULTIPLE
  print("*********************");
  print("CONDICIONAL MULTIPLE");
  int trimestre = 4;
  switch (trimestre){
    case 1:
      print("TRIMESTRE 1");
      print("Fase de requerimientos");
      break;
    case 2:
      print("TRIMESTRE 2");
      print("Fase de analisis");
      break;
    case 3:
      print("TRIMESTRE 3");
      print("Fase de diseño");
      break;
    case 4:
      print("TRIMESTRE 4");
      print("Fase de implementacion");
      break;
    case 5:
      print("TRIMESTRE 5");
      print("Fase de fase de pruebas");
      break;
    case 6:
      print("TRIMESTRE 6");
      print("Fase de mantenimientos");
      break;
    default:
    print("el trimestre es incorrecto");
  }
  }