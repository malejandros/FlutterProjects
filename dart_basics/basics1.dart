main() {
  // 1. Numbers => int or double => num => 1 or 4.5
  // 2. Strings => Set of characters => "Manu"
  // 3. Boolean s=> true or false
  // 4. Lists => [1,2,3,4,5]
  // 5. Maps => {"name":"Manuel"}
  num x = 5;
  int y = 5;
  double z = 7.1;
  String s = "manu";
  bool ban = false;

  print(x);
  print(y);
  print(z);
  print(s);
  print(ban);

  var a = 'hello';
  print(a);
  print(a.runtimeType);

  // Casting de datos
  num miNumero = 10;
  String elNumero = miNumero.toString();
  print(elNumero);
  print(elNumero.runtimeType);
  num otroNumero = int.parse(elNumero);
  print(otroNumero);
  print(otroNumero.runtimeType);

  // lists
  List numeros = [1, 2, 3, 4, 5];
  List nombres = ["Manuel", "Raul", "Adrian"];
  List varios = [1, 2, true, 5.6, "Mexico"];

  print(numeros);
  print(nombres);
  print(varios);
  print(varios[4]);

  // Strings
  String nombre = " Manuel";
  String apellido = "Salinas";
  print(nombre + apellido);
  nombre = nombre.trim();
  print(nombre);
  // String interpolation
  print("El nombre de la persona es " + nombre + " " + apellido);
  print("El nombre de la persona es $nombre $apellido");
  print("El nombre de la persona es ${nombre} ${apellido}");

  String cadena = "esta es una cadena de texto que quiero separar";
  List<String> cadenaSeparada = cadena.split(" ");
  print(cadenaSeparada);

  // Maps
  Map maps = {"name": "manuel", "edad": 32, "ciudad": "zapopan"};

  print(maps.keys);
  print(maps.values);
  print(maps['name']);
}
