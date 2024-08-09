//import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_appp/models/get_product_model.dart';
import 'package:store_appp/services/update_product.dart';
import 'package:store_appp/widgets/custom_button.dart';
import 'package:store_appp/widgets/custom_text_field.dart';

class  UpdatePage extends StatefulWidget {
    UpdatePage({super.key, required this.product});
  final ProductModel product;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? name, desc, image, price;

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Update Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextField(
                onChanged: (val) {
                  name = val;
                },
                hintText: 'name',
              ),
              CustomTextField(
                onChanged: (val) {
                  desc = val;
                },
                hintText: 'description',
              ),
              CustomTextField(
                onChanged: (val) {
                  price = val;
                },
                hintText: 'price',
                inputType: TextInputType.number,
              ),
              CustomTextField(
                onChanged: (val) {
                  image = val;
                },
                hintText: 'image',
              ),
              CustomButon(
                text: 'update',
                onTap: () {
                  isloading = true;
                  setState(() {
                    
                  });
                  try {
                    update();
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }
                  isloading = false;
                  setState(() {
                    
                  });
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void update() {
    UpdateProduct().updateProduct(
        title: name ?? widget.product.title,
        price: price?? widget.product.price.toString(),
        description: desc ?? widget.product.description,
        image: image ?? widget.product.image,
        category: widget.product.title);
  }
}
