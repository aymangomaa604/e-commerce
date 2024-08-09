import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:store_appp/models/get_product_model.dart';
import 'package:store_appp/services/get__all_product_services.dart';

import '../widgets/custom_card.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  static String id = 'homepage';
  List<ProductModel> allproduct = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: FutureBuilder(
                future: AllProductServices().getAllProduct(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    allproduct = snapshot.data!;
                    return GridView.builder(
                        itemCount: allproduct.length,
                        clipBehavior: Clip.none,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 100,
                                crossAxisSpacing: 10,
                                childAspectRatio: 1.3),
                        itemBuilder: (context, index) {
                          return customcard(
                            productModel: allproduct[index],
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }))));
  }
}
  
//https://www.getpostman.com/collections/6da0a73ef5587fbe2a42



