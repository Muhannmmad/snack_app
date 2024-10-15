class SnackItem {
  final String name;
  final String subtitle;
  final String price;
  final String rating;
  final String imagePath;
  final String description;

  SnackItem({
    required this.name,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.description,
  });
}

final List<SnackItem> snacks = [
  SnackItem(
    name: "Mogli's Cup",
    subtitle: "Strawberry ice cream",
    price: "\$8.99",
    rating: "4.7",
    imagePath: 'assets/grafiken/cat cupcakes_3D.png',
    description:
        "A delicious strawberry ice cream topped with fresh fruits and a sprinkle of sweetness.",
  ),
  SnackItem(
    name: "Balu's Cup",
    subtitle: "Pistachio ice cream",
    price: "\$8.99",
    rating: "4.6",
    imagePath: 'assets/grafiken/Ice.cream.png',
    description: "Rich and creamy pistachio ice cream with a touch of crunch.",
  ),
  SnackItem(
    name: "Ice cream stick",
    subtitle: "Ice cream stick",
    price: "\$3.99",
    rating: "4.6",
    imagePath: 'assets/grafiken/ice cream stick_3D.png',
    description: "Delicious stick ice cream with different tastes.",
  ),
  SnackItem(
    name: "Ice cream cone",
    subtitle: "ice cream in a biscuit cone",
    price: "\$4.99",
    rating: "4.6",
    imagePath: 'assets/grafiken/Icecream_3D.png',
    description: "Rich and creamy vanilla ice cream in a crispy biscuit cone.",
  ),
];
