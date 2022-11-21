// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hand_bag_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HandBagResp _$HandBagRespFromJson(Map<String, dynamic> json) => HandBagResp(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HandBagRespToJson(HandBagResp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['id'] as int?,
      name: json['name'] as String?,
      brand: json['brand'] as String?,
      image: json['image'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
    };
