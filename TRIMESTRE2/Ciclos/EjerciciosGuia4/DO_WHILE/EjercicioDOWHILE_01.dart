import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 01
  /*
  En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */

  //DECLARACION DE VARIABLES
  String? articulo, opcion;
  int cant_articulo, contador_articulo = 0, acumulador_articulo = 0;
  double precio, total_compra = 0, total_articulos;

  //PROCESO
  do {
    print("ingrse el articulo que comprara");
    articulo = stdin.readLineSync();
    print("ingrse la cantidad que comprara de $articulo");
    cant_articulo = int.parse(stdin.readLineSync()!);
    print("ingrse el precio del $articulo");
    precio = double.parse(stdin.readLineSync()!);
    total_articulos = cant_articulo * precio;
    total_compra += total_articulos;
    contador_articulo++;
    acumulador_articulo += cant_articulo;
    print("hasta el momento lleva $contador_articulo items de articulos");
    print("hasta el momento lleva $acumulador_articulo en articulos");

    print("el total en el articulo $articulo sera: $total_articulos");

    print("desea ingrsesar otro articulo? (si) (no)");
    opcion = stdin.readLineSync();
    print("*" * 50);
  } while (opcion!.toUpperCase() != "no");
  print("el total de la compra es de: $total_compra");
}
