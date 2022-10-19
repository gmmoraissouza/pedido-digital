import 'package:pedido_digital/model/product.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.product, required this.ontap})
      : super(key: key);

  final Product product;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: ontap,
          title: Text(product.name),
          subtitle: Text(product.description),
          trailing: Text('R\$${product.price.toStringAsFixed(2)}'),
        ),
        const Divider()
      ],
    );
  }
}
