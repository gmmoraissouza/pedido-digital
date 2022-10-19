import 'package:flutter/material.dart';

import '../../../model/order_product.dart';

class ProductOrderTile extends StatelessWidget {
  const ProductOrderTile({
    Key? key,
    required this.orderProduct,
    this.ontap,
  }) : super(key: key);

  final OrderProduct orderProduct;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: ontap,
          title: Text('${orderProduct.quantity} ' +
              orderProduct.product.name +
              ' - Mesa: ${orderProduct.table}'),
          subtitle: Text(orderProduct.product.description),
        ),
        const Divider()
      ],
    );
  }
}
