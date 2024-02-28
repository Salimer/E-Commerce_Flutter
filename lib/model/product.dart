class Product {
  final int id;
  final String title;
  final double price;
  final String category;
  final String description;
  final String image;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'title': String title,
        'price': double price,
        'category': String category,
        'description': String description,
        'image': String image,
      } => Product(
        id: id,
        title: title,
        price: price,
        category: category,
        description: description,
        image: image,
      ), _ => throw const FormatException('Failed to load product.')
    };
  }
}

