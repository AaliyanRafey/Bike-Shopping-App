class BikeModel {
  final String item;
  final String name;
  final String price;
  final String image;

  BikeModel({
    required this.item,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<BikeModel> bikeItems = [
  BikeModel(
    item: 'Road Bike\n',
    name: 'PEUGEOT - LR01 \n',
    price: '\$ 1999.99',
    image: 'assets/images/c3.png',
  ),
  BikeModel(
    item: 'Road helmet\n',
    name: 'SMITH - Trade\n',
    price: '\$ 120',
    image: 'assets/images/h.png',
  ),
  BikeModel(
    item: 'Road Bike\n',
    name: 'PEUGEOT - LR01 \n',
    price: '\$ 1999.99',
    image: 'assets/images/c1.png',
  ),
  BikeModel(
    item: 'Road Bike\n',
    name: 'PEUGEOT - LR01 \n',
    price: '\$ 1999.99',
    image: 'assets/images/c2.png',
  ),
];
