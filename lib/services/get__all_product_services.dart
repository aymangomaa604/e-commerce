import 'package:dio/dio.dart';
import 'package:store_appp/helper/api.dart';
import 'package:store_appp/models/get_product_model.dart';

class AllProductServices {

  Future<List<ProductModel>> getAllProduct() async {
   Response response = await Api().get(url: 'https://fakestoreapi.com/products');

    List<dynamic> data = response.data;

    List<ProductModel> allProducts = [];

    for (int i = 0; i < data.length; i++) {
      allProducts.add(ProductModel.fromjson(data[i]));
    }
    return allProducts;
    
  }
}
