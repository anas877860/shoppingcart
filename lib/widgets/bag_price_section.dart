import 'package:flutter/material.dart';

class BagPriceSection extends StatelessWidget {
  const BagPriceSection({
    super.key,
    required this.price,
  });

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Price",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "$price",
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ],
    );
  }
}