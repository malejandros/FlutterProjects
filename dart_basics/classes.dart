main() {
  var p = new Person('Manuel', 33, false, "student");
  print(p._name);
  print(p._age);
  print(p._occupation);
  print(p._isMarried);
}

class Person {
  String _name;
  int _age;
  String _occupation;
  bool _isMarried;

  Person(this._name, this._age, this._isMarried, this._occupation) {}
}
