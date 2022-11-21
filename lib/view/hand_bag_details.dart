import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/add_to_cart_section.dart';
import 'package:shopping_cart/widgets/bag_image_section.dart';
import 'package:shopping_cart/widgets/bag_name_section.dart';
import 'package:shopping_cart/widgets/bag_price_section.dart';

class HandBagDetails extends StatelessWidget {
  const HandBagDetails(
      {super.key,
      required this.name,
      required this.brand,
      required this.price,
      required this.description,
      required this.image});
  final String? name;
  final String? brand;
  final String? price;
  final String? description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BagNameSection(name: name, brand: brand),
            Stack(
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 100),
                        child: BagPriceSection(price: price),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AddToCartSection(description: description, size: size),
                    ],
                  ),
                ),
                BagImageSection(image: image)
              ],
            ),
          ],
        ),
      ),
    );
  }
}


