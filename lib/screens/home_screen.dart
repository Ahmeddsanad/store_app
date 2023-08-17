import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'BebasNeue',
            fontSize: 28,
          ),
        ),
        leading: const Icon(Icons.arrow_back_outlined),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartPlus),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 65,
              left: 16,
              right: 16,
            ),
            child: FutureBuilder<List<ProductModel>>(
              future: AllProductsService().getAllProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> products = snapshot.data!;

                  return GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 100,
                    ),
                    itemBuilder: (context, index) => CustomCard(
                      products: products[index],
                    ),
                    itemCount: products.length,
                  );
                } else {
                  // print(AllProductsService().getAllProduct());
                  return const Center(
                      heightFactor: 30,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ));
                }
              },
            )),
      ),
    );
  }
}
