import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 130,
              width: 220,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: Offset(
                      10,
                      10,
                    )),
              ]),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'HandBag Lv',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$225',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 32.0,
              top: -65.0,
              child: Image.network(
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
