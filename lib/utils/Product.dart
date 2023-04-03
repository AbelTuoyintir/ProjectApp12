class Cart {
  final List<CartItem> items;

  Cart({required this.items});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      items: List<CartItem>.from(json['items'].map((x) => CartItem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items.map((x) => x.toJson()).toList(),
    };
  }
}

class CartItem {
  final String productId;
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;

  CartItem(
      {
        required this.productId,
        required this.name,
        required this.imageUrl,
        required this.price,
        required this.quantity});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      productId: json['productId'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }
}

