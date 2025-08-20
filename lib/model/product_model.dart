class ProductModel {
  final String image;
  final String name;
  final String price;

  ProductModel({required this.image, required this.name, required this.price});
}

final List<ProductModel> product = [
  ProductModel(
    image: 'assets/images/c3.png',
    name: 'PEUGEOT- LR01',
    price: '\$1999.99',
  ),
  ProductModel(
    image: 'assets/images/c2.png',
    name: 'PILOT - CHROMOLY 520',
    price: '\$3999.99',
  ),
  ProductModel(
    image: 'assets/images/h.png',
    name: 'SMITH - Trade',
    price: '\$120      ',
  ),
];
