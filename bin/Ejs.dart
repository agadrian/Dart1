import 'dart:io';

class Ejercicios{

  /*
    1.- Estás desarrollando una aplicación para gestionar géneros musicales favoritos. El
        usuario puede añadir géneros a su lista, pero hay restricciones. Primero, no puede
        añadir géneros duplicados. Segundo, el usuario solo puede tener un máximo de 5
        géneros favoritos. Si intenta añadir un sexto género, se debe mostrar un mensaje de
        error.
   */
  void ejercicio1(){
    Set<String> generosMusicales = {};
    int maxGeneros = 5;

    // Pedir datos
    while(true){
      // stdout.write -> Permite escribir en la misma linea (como print en kotlin) (sin salto de linea a diferencia del print en dart)
      stdout.write("Ingresa un género a la lista ('q' para salir): ");
      String? input = stdin.readLineSync()?.trim();

      if (input == "q") break; // Salir del bucle si introduce 'q'

      // Comprobar si es nulo o vacio. Salta a la siguiente iteracion del bucle si se cumple.
      if (generosMusicales.length < maxGeneros){
        if (input == "" || input == null){
          print("Input no válido (vacío o nulo)");
          continue;
        }

        // Añade el genero al set. Devuelve true si no existia y lo ha añadido. False si no.
        if (generosMusicales.add(input)){
          print("Género '$input' introducido correctamente");
        }else{
          print("El género '$input' ya existe");
        }
      }else{
        print("No puedes ingresar más de 5 géneros. Saliendo...");
        break;
      }
    }

    // Mostrar listado generos
    if (generosMusicales.isNotEmpty){
      print("Lista de géneros: ");
      for (var tarea in generosMusicales) {
        print(" * $tarea");
      }
    }
  }


  /*
    2.- Estás desarrollando una aplicación básica de tareas donde los usuarios pueden
        agregar y ver tareas que necesitan hacer. La lista de tareas se muestra de forma
        secuencial y el usuario puede verlas en el orden en que las agregó.
   */
  void ejercicio2() {
    var listadoTareas = [];

    while(true){
      // Pedir datos
      stdout.write("Ingresa una tarea ('q' para salir): ");
      String? input = stdin.readLineSync()?.trim();

      if (input == 'q') break; // Salir del bucle si introduce 'q'

      // Comprobar si el input es nulo o vacio. Si lo es, salta de iteracion en el bucle.
      if (input != null && input != ""){
        listadoTareas.add(input);
        print("Tarea '$input' añadida.");
      }else{
        print("Input no válido (vacío o nulo)");
        continue;
      }
    }

    // Mostrar listado tareas
    if (listadoTareas.isNotEmpty){
      print("Lista de tareas: ");
      for (var tarea in listadoTareas) {
        print(" * $tarea");
      }
    }
  }



  /*
    3.- Estás desarrollando una aplicación sencilla para gestionar las calificaciones de los
        estudiantes. Para cada estudiante, se almacena su nombre y la calificación que ha
        obtenido.
   */
  void ejercicio3() {
    Map<String, double> notasEstudiantes = {};

    while (true) {
      // Pedir datos
      stdout.write("Ingresa nombre estudiante ('q' para salir): ");
      String? estudiante = stdin.readLineSync()?.trim();

      if (estudiante == "q") break; // Salir si introduce 'q'

      stdout.write("Ingresa una nota: ");
      String? nota = stdin.readLineSync()?.trim();


      // Comprobar nulos o vacios. Salta a la siguiente interaccion si se cumple.
      if (estudiante == "" || nota == "" || estudiante == null ||
          nota == null) {
        print("Campos introducidos no validos.");
        continue;
      }

      // Comprobar que introduce un double en la nota. Si no, salta iteracion
      try {
        var notaDouble = double.parse(nota);
        notasEstudiantes[estudiante] = notaDouble;
      } catch (e) {
        print("Error - Debes introducir una nota numérica");
        continue;
      }
    }

    // Mostrar notas
    if (notasEstudiantes.isNotEmpty) {
      print("Lista de estudiantes y notaa:");
      notasEstudiantes.forEach((key, value) {
        print(" * Estudiante: $key - Nota: $value");
      });
    }
  }

}