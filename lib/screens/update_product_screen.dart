import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/widgets/custom_buttonItem.dart';
import 'package:store_app/widgets/custom_textformfield.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  static String id = 'UpdateProduct';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldItem(
              text: 'Product Name',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldItem(
              text: 'Product Description',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldItem(
              text: 'Product Price',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldItem(
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
    );
  }
}
