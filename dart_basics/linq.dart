import 'customer.dart';

main() {
  // LINQ
  // Language Integrated Query
  // Functional Collections
  // var numbers = [
  //   3,
  //   7,
  //   1,
  //   0,
  //   9,
  //   4,
  //   8,
  //   5,
  //   6,
  // ];

  // for (var x in numbers) {
  //   if (x > 5) print(x);
  // }

  // var results = numbers.where((n) => n > 5);
  // results.forEach(print);

  // var whereResult = customers.where((c) => c.age > 20 && c.id < 5);
  // whereResult.forEach(print);

  // Projection operators (select)
  // var projResults = customers.map((c) => c.customerName);
  // projResults.forEach(print);

  // var projResults =
  //     customers.map((c) => {"name": c.customerName, "age": c.age});
  // projResults.forEach(
  //     (c) => print("My name is ${c['name']},and my age is ${c['age']}"));

  // var projResults = customers
  //     .where((c) => c.age < 20)
  //     .map((c) => {"name": c.customerName, "age": c.age});
  // projResults.forEach(
  //     (c) => print("My name is ${c['name']},and my age is ${c['age']}"));

  // Project operations (Select many - compound)
  // var projResult2 = customers
  //     .where((c) => c.id > 5)
  //     .expand((cu) => cu.Orders)
  //     .map((o) => {"id": o.orderID, "total": o.orderTotal});
  // projResult2.forEach(print);

  var projResult3 = customers.expand((c) =>
      c.Orders.where((o) => o.orderTotal > 2000)
          .map((o) => {"name": c.customerName, "total": o.orderTotal}));
  projResult3.forEach(print);
}
