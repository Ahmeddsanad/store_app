import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_buttonItem.dart';
import 'package:store_app/widgets/custom_textformfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateScreen extends StatefulWidget {
  UpdateScreen({super.key});

  static String id = 'UpdateProduct';

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  String? pName, pDesc, pImage, pPrice;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'BebasNeue',
              fontSize: 28,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                TextFormFieldItem(
                  onChanged: (data) {
                    pName = data;
                  },
                  text: 'Product Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldItem(
                  onChanged: (data) {
                    pDesc = data;
                  },
                  text: 'Product Description',
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldItem(
                  onChanged: (data) {
                    pPrice = data;
                  },
                  text: 'Product Price',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldItem(
                  onChanged: (data) {
                    pImage = data;
                  },
                  text: 'Product Image',
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonItem(
                  text: 'Update',
                  function: () async {
                    // print(product.category);
                    isLoading = true;
                    try {
                      await UpdateProduct(product);
                    } on Exception catch (e) {
                      print(e.toString());
                    }
                    setState(() {
                      isLoading = false;
                    });
                  },
                  horizontalSymmetric: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> UpdateProduct(ProductModel product) async {
    await UpdateProductService().updateProducts(
      id: product.id,
      category: product.category,
      desc: pDesc == null ? product.description : pDesc!,
      image: pImage == null ? product.image : pImage!,
      price: pPrice == null ? product.price.toString() : pPrice!,
      title: pName == null ? product.title : pName!,
    );
  }
}
