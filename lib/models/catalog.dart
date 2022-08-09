class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 12 Pro",
        desc: "Mehenga wala phone",
        price: 999,
        color: "#12ffff",
        image: "https://m.media-amazon.com/images/I/71umuN8XVeL.jpg")
  ];
}
