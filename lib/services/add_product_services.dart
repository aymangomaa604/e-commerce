import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/get_product_model.dart';

class AddProductServices {
  Future<ProductModel> addProduct ({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async{
   var data = await Api().post(
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
