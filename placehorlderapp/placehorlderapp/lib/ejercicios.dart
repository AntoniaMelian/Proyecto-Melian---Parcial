void main() {
  // Ejercicio 1
  print('Ejercicio 1:');
  print('Hola Mundo\n');

  // Ejercicio 2
  print('Ejercicio 2:');
  int resultadoSuma = sumar(5, 3);
  print('La suma de 5 y 3 es: $resultadoSuma\n');

  // Ejercicio 3
  print('Ejercicio 3:');
  Persona persona = Persona('Juan', 25);
  persona.describir();
  print('');

  // Ejercicio 4
  print('Ejercicio 4:');
  int sumaLista = sumarLista([1, 2, 3, 4, 5]);
  print('La suma de la lista es: $sumaLista\n');

  // Ejercicio 5
  print('Ejercicio 5:');
  int numero = 4;
  String parImpar = esPar(numero) ? 'par' : 'impar';
  print('El número $numero es $parImpar.\n');

  // Ejercicio 6
  print('Ejercicio 6:');
  int factorialDe5 = factorial(5);
  print('El factorial de 5 es: $factorialDe5\n');

  // Ejercicio 7
  print('Ejercicio 7:');
  double celsius = 100;
  double fahrenheit = convertirAFahrenheit(celsius);
  print('$celsius °C es igual a $fahrenheit °F\n');

  // Ejercicio 8
  print('Ejercicio 8:');
  String cadena = 'Hola';
  String cadenaReversa = revertirCadena(cadena);
  print('La cadena "$cadena" al revés es "$cadenaReversa"\n');

  // Ejercicio 9
  print('Ejercicio 9:');
  List<Persona> personas = [
    Persona('Ana', 30),
    Persona('Luis', 20),
    Persona('Juan', 25),
  ];
  personas.sort((a, b) => a.edad.compareTo(b.edad));
  print('Lista de personas ordenada por edad:');
  for (var p in personas) {
    p.describir();
  }
  print('');

  // Ejercicio 10
  print('Ejercicio 10:');
  List<String> cadenas = ['hola', 'mundo'];
  List<String> mayusculas = convertirAMayusculas(cadenas);
  print('Las cadenas en mayúsculas son: $mayusculas\n');
}

// Ejercicio 2: Función para sumar
int sumar(int a, int b) {
  return a + b;
}

// Ejercicio 3: Clase Persona
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void describir() {
    print('Nombre: $nombre, Edad: $edad');
  }
}

// Ejercicio 4: Sumar una lista de enteros
int sumarLista(List<int> numeros) {
  return numeros.reduce((a, b) => a + b);
}

// Ejercicio 5: Verificar par o impar
bool esPar(int numero) {
  return numero % 2 == 0;
}

// Ejercicio 6: Calcular factorial
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Ejercicio 7: Convertir Celsius a Fahrenheit
double convertirAFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Ejercicio 8: Revertir cadena
String revertirCadena(String cadena) {
  return cadena.split('').reversed.join('');
}

// Ejercicio 9: Ordenar lista de personas
List<Persona> ordenarPorEdad(List<Persona> personas) {
  personas.sort((a, b) => a.edad.compareTo(b.edad));
  return personas;
}

// Ejercicio 10: Convertir cadenas a mayúsculas
List<String> convertirAMayusculas(List<String> cadenas) {
  return cadenas.map((cadena) => cadena.toUpperCase()).toList();
}