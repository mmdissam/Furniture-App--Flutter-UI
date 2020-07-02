class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
    description:
        "Simplify your design space with the clean, rustic lines of this weathered oak-finished desk from Carbon Loft. A sturdy metal base with an X-back stretcher keeps the desktop stable.",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description:
        "Simplify your design space with the clean, rustic lines of this weathered oak-finished desk from Carbon Loft. A sturdy metal base with an X-back stretcher keeps the desktop stable.",
  ),
  Product(
    id: 9,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description:
        "Simplify your design space with the clean, rustic lines of this weathered oak-finished desk from Carbon Loft. A sturdy metal base with an X-back stretcher keeps the desktop stable.",
  ),
];
