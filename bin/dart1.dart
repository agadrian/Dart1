
import 'package:args/args.dart';

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show additional command output.',
    )
    ..addFlag(
      'version',
      negatable: false,
      help: 'Print the tool version.',
    );
}

void printUsage(ArgParser argParser) {
  print('Usage: dart dart1.dart <flags> [arguments]');
  print(argParser.usage);
}

void main() {
  /*
    1.- Estás desarrollando una aplicación para gestionar géneros musicales favoritos. El
        usuario puede añadir géneros a su lista, pero hay restricciones. Primero, no puede
        añadir géneros duplicados. Segundo, el usuario solo puede tener un máximo de 5
        géneros favoritos. Si intenta añadir un sexto género, se debe mostrar un mensaje de
        error.
   */


  ejercicio1();


  /*
    2.- Estás desarrollando una aplicación básica de tareas donde los usuarios pueden
        agregar y ver tareas que necesitan hacer. La lista de tareas se muestra de forma
        secuencial y el usuario puede verlas en el orden en que las agregó.
   */


  ejercicio2();


  /*
    3.- Estás desarrollando una aplicación sencilla para gestionar las calificaciones de los
        estudiantes. Para cada estudiante, se almacena su nombre y la calificación que ha
        obtenido.
   */

  ejercicio3();



}


void ejercicio1(){
  Set<String> generosMusicales = {};
  int maxGeneros = 5;

  List<String> listaGeneros = ["Género 1", "Género 2", "Género 3", "Género 3", "Género 4", "Género 5", "Género 6"];

  for (var i = 0; i < listaGeneros.length; i++){
    if (generosMusicales.length < maxGeneros){
      generosMusicales.add(listaGeneros[i]);
      print("Género '${listaGeneros[i]}' añadido");
    }else{
      print("Error al intentar añadir '${listaGeneros[i]}' - La lista solo puede tener 5 géneros.");
    }
  }

  print("Lista de generos favoritos: $generosMusicales");
}


void ejercicio2() {

  var listadoTareas = [];

  listadoTareas.add("Tarea 1");
  listadoTareas.add("Tarea 2");
  listadoTareas.add("Tarea 3");
  listadoTareas.add("Tarea 4");
  listadoTareas.add("Tarea 5");

  listadoTareas.forEach(print);
}


void ejercicio3(){
  Map<String, double> notasEstudiantes = {};

  notasEstudiantes["Estudiante 1"] = 5.8;
  notasEstudiantes["Estudiante 2"] = 8;
  notasEstudiantes["Estudiante 3"] = 2;
  notasEstudiantes["Estudiante 4"] = 7.3;
  notasEstudiantes["Estudiante 5"] = 9.5;

  notasEstudiantes.forEach((key, value) {
    print("Estudiante: $key - Nota: $value");
  });

}

















