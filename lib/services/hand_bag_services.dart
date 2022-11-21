import 'dart:convert';



import 'package:shopping_cart/model/hand_bag_resp/hand_bag_resp.dart';

import 'package:http/http.dart' as http;


class HandBagServices{

Future<HandBagResp> getAll()async{
try{
  final response = await http.get(Uri.parse("http://174.138.121.52:3009/v1/product/getAllProduct"));
   
    if(response.statusCode ==200 || response.statusCode ==201){
     final responseAsJson = jsonDecode(response.body);
   final data=  HandBagResp.fromJson(responseAsJson);
   return data;
    }else {
    throw "Server Error";
    }}catch(e){
     throw "Client Error";
    }
}



}