import 'package:pedido_digital/model/order_product.dart';
import 'package:flutter/material.dart';

class CashierTile extends StatelessWidget {
  const CashierTile({
    Key? key,
    required this.orderProduct,
  }) : super(key: key);

  final OrderProduct orderProduct;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${orderProduct.quantity} ' + orderProduct.product.name),
      trailing: Text((orderProduct.quantity * orderProduct.product.price)
          .toStringAsFixed(2)),
    );
  }
}
