

import 'package:flutter/material.dart';

class BagImageSection extends StatelessWidget {
  const BagImageSection({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 150,
      top: 30,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$image"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
