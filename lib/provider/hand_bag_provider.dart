import 'package:flutter/material.dart';
import 'package:shopping_cart/services/hand_bag_services.dart';

import '../model/hand_bag_resp/hand_bag_resp.dart';

class HandBagProvider extends ChangeNotifier {
  final _service = HandBagServices();
  List<Cart>? cartList = [];
  bool isLoading = false;
  Future<void> get() async {
    isLoading = true;
    cartList = [];
    notifyListeners();
    final result = await _service.getAll();
    cartList = result.data;
    isLoading = false;

    notifyListeners();
  }
}
