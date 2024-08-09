import 'package:dio/dio.dart';
import 'package:store_appp/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    List<dynamic> data = response.data;
    return data;
    //print(data);
  }
}
