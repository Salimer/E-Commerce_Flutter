const List categories = [
  "electronics",
  "jewelry",
  "men's clothing",
  "women's clothing"
];

class Product {
  final int id;
  final String title;
  final String price;
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
}

const List<Product> products = [
  Product(
      id: 1,
      title: 'title1',
      price: '4432',
      category: 'category',
      description: 'description 1',
      image: 'image 2'),
  /*...*/
  Product(
      id: 30,
      title: 'title 2',
      price: '232',
      category: 'category 2',
      description: 'description',
      image: 'image')
];
