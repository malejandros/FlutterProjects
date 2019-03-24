main() {
  googleDetails();
  mobileDetails(["ram", "display", "processor", "hdd"], 299.3);
}

void googleDetails() {
  print("google is amazing");
  print("google made android");
  print("google made dart");
  print("google made flutter");
}

void mobileDetails(List<String> items, [double price]) {
  for (var item in items) {
    print(item);
  }
  if (price != null) print("Price is $price");
}
