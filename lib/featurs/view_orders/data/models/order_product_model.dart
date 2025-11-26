class OrderProductModel {
  //
  final String code;
  final String title;
  final int quantity;
  final double price;
  final String image;
  OrderProductModel({
    required this.code,
    required this.title,
    required this.quantity,
    required this.price,
    required this.image,
  });
  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      OrderProductModel(
        code: json['code'],
        title: json['title'],
        quantity: json['quantity'],
        price: json['price'],
        image: json['image'],
      );

  toJson() => {
    'code': code,
    'title': title,
    'quantity': quantity,
    'price': price,
    'image': image,
  };
}
