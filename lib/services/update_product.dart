import '../helper/api.dart';
import '../models/get_product_model.dart';

class UpdateProduct{
   Future<ProductModel> updateProduct ({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async{
   var data = await Api().put(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category
      },
    );

    return ProductModel.fromjson(data);
  }
}