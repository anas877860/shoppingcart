

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import 'package:shopping_cart/provider/hand_bag_provider.dart';
import 'package:shopping_cart/view/hand_bag_details.dart';

class HandBagScreen extends StatelessWidget {
  const HandBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HandBagProvider>(context, listen: false).get();
    });
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Consumer<HandBagProvider>(builder: (context, value, _) {
        final bagList = value.cartList;
        if (value.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        // else if(value.cartList!.isEmpty){
        //    return const Text("Cart List is Empty");

        // }
        return GridView.builder(
            itemCount: bagList?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3),
            itemBuilder: ((context, index) {
              final list = bagList?[index];
       
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HandBagDetails(
                                brand: list?.brand,
                                description: list?.description,
                                image: list?.image,
                                name: list?.name,
                                price: list?.price,
                              )));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        // height: size.height * 0.2,
                        // width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color:Colors.accents[(bagList?.length)!-index % Colors.accents.length],
                          //  Colors.black,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: NetworkImage("${list?.image}"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${list?.brand}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "${list?.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }));
      }),
    );
  }
}
