class Product {
  String? name;
  double? price;
  int? quantity;

  Product(this.name, this.price, this.quantity);

  double? totalCost() {
    if (price != null && quantity != null) {
      return price! * quantity!;
    } else {
      return null;
    }
  }
}

void main() {
  Product dress = Product('skirt', 400, 10);

  double? totalCost = dress.totalCost();

  if (totalCost != null) {
    print('Total cost of ${dress.name}: \$${totalCost.toStringAsFixed(2)}');
  } else {
    print('Invalid product information');
  }
}
