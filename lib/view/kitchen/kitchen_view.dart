import 'package:pedido_digital/controller/kitchen/controller_kitchen.dart';
import 'package:pedido_digital/view/kitchen/widgets/product_order_tile.dart';
import 'package:flutter/material.dart';

class KitchenView extends StatefulWidget {
  const KitchenView({Key? key}) : super(key: key);

  @override
  State<KitchenView> createState() => _KitchenViewState();
}

class _KitchenViewState extends State<KitchenView> {
  ControllerKitchen controller = ControllerKitchen();

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(10), children: [
      ProductOrderTile(orderProduct: controller.itemOne()),
      ProductOrderTile(orderProduct: controller.itemTwo()),
      ProductOrderTile(orderProduct: controller.itemThree()),
    ]);
  }
}
