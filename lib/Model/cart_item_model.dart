class CartItemModel {
  String title;
  String imageurl;
  String price;
  int quantity;

  CartItemModel(
      {required this.imageurl,
      required this.price,
      required this.title,
      required this.quantity});
}
