import 'package:flutter/material.dart';
import 'package:store_appp/models/get_product_model.dart';
import 'package:store_appp/screens/update_page.dart';

class customcard extends StatelessWidget {
  const customcard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute( builder: (context) {
          return  UpdatePage(product: productModel,);
        },),);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 50,
                  spreadRadius: 20,
                  color: Colors.grey.withOpacity(.1),
                  offset: Offset(1, 1))
            ]),
            child: Card(
              elevation: 20,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      productModel.title.substring(0, 18),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productModel.description.substring(0, 10),
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Positioned(
            right: 50,
            bottom: 90,
            child: Image.network(
              productModel.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
