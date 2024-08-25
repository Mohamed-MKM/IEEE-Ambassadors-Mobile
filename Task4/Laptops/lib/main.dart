import 'dart:io';


class Laptop {
  String brand;
  String model;
  int ram; 
  double price;

  
  Laptop(this.brand, this.model, this.ram, this.price);

  
  void displayDetails() {
    print('Laptop Brand: $brand');
    print('Laptop Model: $model');
    print('Laptop RAM: ${ram}GB');
    print('Laptop Price: \$${price.toStringAsFixed(2)}');
  }
}


double calculatePrice(String brand, String model, int ram) {
  double basePrice = 500;

  
  if (brand.toLowerCase() == 'apple') {
    basePrice += 1000;
  } else if (brand.toLowerCase() == 'dell') {
    basePrice += 500;
  } else if (brand.toLowerCase() == 'hp') {
    basePrice += 400;
  } else if (brand.toLowerCase() == 'lenovo') {
    basePrice += 300;
  } else {
    basePrice += 200;
  }


  if (ram >= 16) {
    basePrice += 300;
  } else if (ram >= 8) {
    basePrice += 150;
  } else if (ram >= 4) {
    basePrice += 50;
  }

 
  if (model.toLowerCase().contains('pro')) {
    basePrice += 500;
  } else if (model.toLowerCase().contains('air')) {
    basePrice += 300;
  }

  return basePrice;
}

void main() {
  print('Enter laptop brand:');
  String? brand = stdin.readLineSync();

  print('Enter laptop model:');
  String? model = stdin.readLineSync();

  print('Enter laptop RAM (in GB):');
  int? ram = int.parse(stdin.readLineSync()!);

  double price = calculatePrice(brand!, model!, ram!);

  Laptop laptop = Laptop(brand, model, ram, price);

  print('\n--- Laptop Details ---');
  laptop.displayDetails();
}
