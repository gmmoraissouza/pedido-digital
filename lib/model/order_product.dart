import 'package:pedido_digital/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_product.g.dart';

@JsonSerializable()
class OrderProduct {
  OrderProduct();

  late Product product = Product();
  late int quantity;
  late int table;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductToJson(this);
}
