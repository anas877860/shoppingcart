
import 'package:flutter/material.dart';

class AddToCartSection extends StatelessWidget {
  const AddToCartSection({
    super.key,
    required this.description,
    required this.size,
  });

  final String? description;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 57,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Color"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 8),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 8,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Size",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("12 cm"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 64,
              child: Text(
                "$description",overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.grey,
                  ),
                ),
                const Text("01"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    side: const BorderSide(
                        width: 2,
                        color:
                            Color.fromARGB(255, 156, 205, 228)),
                  ),
                  child: const Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Color.fromARGB(255, 161, 203, 223),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                  width: size.width * 0.65,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                    onPressed: () {},
                    child: const Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
