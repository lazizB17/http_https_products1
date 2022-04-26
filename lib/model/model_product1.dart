
class Product {
  late int id;
  late String title;
  late String description;
  late int price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late String brand;
  late String category;
  late String thumbnail;
  late List images = [];

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.thumbnail,
    required this.images});

  Product.fromJson(Map<String, dynamic> json):
        id = json['id'],
        title = json['title'],
        description = json['description'],
        price = json['price'],
        discountPercentage = json['discountPercentage'],
        rating = json['rating'],
        stock = json['stock'],
        category = json['category'],
        thumbnail = json['thumbnail'],
        images = json['images'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'discountPercentage': discountPercentage,
    'rating': rating,
    'stock': stock,
    'category': category,
    'thumbnail': thumbnail,
    'images': images
  };

  @override
  String toString() {
    return """Id :$id\n,title: $title\n,
    description: $description\n,price :$price\n,
    discountPercentage:$discountPercentage\n,
    rating :$rating\n,stock: $stock\n,category :$category\n,
    thumbnail :$thumbnail\n,images: $images\n""";
  }
}


