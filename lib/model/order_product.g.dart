// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) => OrderProduct()
  ..product = Product.fromJson(json['product'] as Map<String, dynamic>)
  ..quantity = json['quantity'] as int
  ..table = json['table'] as int;

Map<String, dynamic> _$OrderProductToJson(OrderProduct instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'table': instance.table,
    };
