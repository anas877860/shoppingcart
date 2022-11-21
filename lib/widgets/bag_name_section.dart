
import 'package:flutter/material.dart';

class BagNameSection extends StatelessWidget {
  const BagNameSection({
    super.key,
    required this.name,
    required this.brand,
  });

  final String? name;
  final String? brand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$brand",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}