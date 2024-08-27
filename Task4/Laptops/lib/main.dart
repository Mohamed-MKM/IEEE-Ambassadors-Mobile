import 'dart:io';

class Lap {
  String brandName;
  String modelName;
  int ramSize; 

  Lap(this.brandName, this.modelName, this.ramSize);

  double computePrice() {
    double baseCost = _determineBaseCost();
    double ramCost = _calculateRamCost();
    return baseCost + ramCost;
  }

  double _determineBaseCost() {
    switch (brandName.toLowerCase()) {
      case 'apple':
        return 1000.0;
      case 'dell':
        return 800.0;
      case 'hp':
        return 700.0;
      case 'lenovo':
        return 650.0;
      case 'msi':
        return 900.0;
      default:
        return 500.0;
    }
  }

  double _calculateRamCost() {
    if (ramSize <= 8) {
      return 0.0;
    } else if (ramSize <= 16) {
      return 100.0;
    } else {
      return 200.0;
    }
  }
}

class Shop {
  void start() {
    print('Welcome to the Tech Shop!');

    stdout.write('Enter the laptop brand : ');
    String brand = stdin.readLineSync()!;

    stdout.write('Enter the model : ');
    String model = stdin.readLineSync()!;

    stdout.write('Enter the size of RAM (in GB): ');
    int ram = int.parse(stdin.readLineSync()!);

    Lap lap = Lap(brand, model, ram);
    double price = lap.computePrice();

    print('The price of the ${lap.brandName} ${lap.modelName} with ${lap.ramSize}GB RAM is \$${price.toStringAsFixed(2)}');
  }
}

void main() {
  Shop shop = Shop();
  shop.start();
}
