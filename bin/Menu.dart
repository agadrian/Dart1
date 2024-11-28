import 'dart:io';

import 'Ejs.dart';

class Menu{
  final Ejercicios ejercicios;

  Menu(this.ejercicios);

  int pedirOpcion(int min, int max) {
    int? opc;

    while (true) {
      // Pedir el input en la misma linea
      stdout.write("Selecciona una opción ($min - $max): ");
      String? input = stdin.readLineSync()?.trim();

      opc = int.tryParse(input ?? ''); // Intenta cambiar el string? del input a int. Devuelve null si no se consigue.
      if (opc != null && opc >= min && opc <= max) {
        return opc;
      }
      print("Opción inválida. Intenta nuevamente.");
    }
  }

  void mostrarMenu(){
    int opc = -1;

    while (opc != 4){
      print("\n--- Menú Principal ---");
      print("1. Lista de géneros musicales");
      print("2. Lista de tareas");
      print("3. Notas de estudiantes");
      print("4. Salir");

      var opc = pedirOpcion(1, 4);

      switch(opc){
        case 1:
          ejercicios.ejercicio1();
          break;
        case 2:
          ejercicios.ejercicio2();
          break;
        case 3:
          ejercicios.ejercicio3();
          break;
        case 4:
          print("Opción no válida. Elige (1 - 4)");
      }
    }
  }
}