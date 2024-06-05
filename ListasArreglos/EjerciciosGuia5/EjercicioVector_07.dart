import 'dart:io';

void main(List<String> args) {
  String? palabra;
  List<String> vectPalindrome = [];
  List<String> vectPalabra = [];

  print("ingrse la palabra para comprobar polindrome");
  palabra = stdin.readLineSync()!.toUpperCase();

  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
    vectPalindrome.add(palabra[palabra.length - i - 1]);
  }
  print(vectPalabra);
  print(vectPalindrome);
  if (vectPalabra.toString() == vectPalindrome.toString()) {
    print("es palindrome");
  } else {
    print("no es palindrome");
  }
}
