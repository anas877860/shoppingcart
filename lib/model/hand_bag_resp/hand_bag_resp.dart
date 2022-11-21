import 'package:json_annotation/json_annotation.dart';



part 'hand_bag_resp.g.dart';

@JsonSerializable()
class HandBagResp {
  @JsonKey(name: "status")
	String? status;
    @JsonKey(name: "data")
	List<Cart>? data;

	HandBagResp({this.status, this.data});

	factory HandBagResp.fromJson(Map<String, dynamic> json) {
		return _$HandBagRespFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HandBagRespToJson(this);
}

@JsonSerializable()
class Cart {
    @JsonKey(name: "id")
	int? id;
    @JsonKey(name: "name")
	String? name;
    @JsonKey(name: "brand")
	String? brand;
    @JsonKey(name: "image")
	String? image;
    @JsonKey(name: "price")
	String? price;
    @JsonKey(name: "description")
	String? description;

	Cart({
		this.id, 
		this.name, 
		this.brand, 
		this.image, 
		this.price, 
		this.description, 
	});

	factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

	Map<String, dynamic> toJson() => _$CartToJson(this);
}
