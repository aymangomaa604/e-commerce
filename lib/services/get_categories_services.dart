import 'package:dio/dio.dart';
import 'package:store_appp/helper/api.dart';


import '../models/get_product_model.dart';

class GetCategoriesServices {
  

 
  Future<List<ProductModel>> getCategoriesProducts({required String categoryname}) async {
    Response response = await Api().get(url:'https://fakestoreapi.com/products/category/$categoryname');

    List<dynamic> data = response.data;

    List<ProductModel> allCategories = [];

    for (int i = 0; i < data.length; i++) {
      allCategories.add(ProductModel.fromjson(data[i]));
    }
    return allCategories;
  }
}
