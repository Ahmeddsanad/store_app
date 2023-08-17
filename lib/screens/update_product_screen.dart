import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/widgets/custom_buttonItem.dart';
import 'package:store_app/widgets/custom_textformfield.dart';

class UpdateScreen extends StatelessWidget {
  UpdateScreen({super.key});

  static String id = 'UpdateProduct';

  String? pName, pDesc, pImage;
  int? pPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  pPrice = int.parse(data);
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
                function: () {},
                horizontalSymmetric: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
