class ProductModel {
  final int id;
  final String title;
  dynamic price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromjson(json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        image: json['image'],
        rating: RatingModel.fromjson(json['rating']));
  }
}

class RatingModel {
  dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(json) {
    return RatingModel(
      rate: json['rate'],
      count: json['count'],
    );
  }
}
