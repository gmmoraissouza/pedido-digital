import 'package:pedido_digital/controller/cashier/controller_cashier.dart';
import 'package:pedido_digital/view/cashier/widgets/cashier_tile.dart';
import 'package:flutter/material.dart';

class CashierView extends StatelessWidget {
  const CashierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControllerCashier controller = ControllerCashier();

    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ExpansionTile(
          title: const Text('Mesa 5'),
          children: [
            CashierTile(orderProduct: controller.itemOne()),
            CashierTile(orderProduct: controller.itemTwo()),
            CashierTile(orderProduct: controller.itemThree()),
            Text(
                'Total: ${controller.totalPriceTableFive().toStringAsFixed(2)}')
          ],
        ),
        ExpansionTile(
          title: const Text('Mesa 8'),
          children: [
            CashierTile(orderProduct: controller.itemFour()),
            CashierTile(orderProduct: controller.itemFive()),
            CashierTile(orderProduct: controller.itemSix()),
            Text(
                'Total: ${controller.totalPriceTableEight().toStringAsFixed(2)}')
          ],
        ),
        ExpansionTile(
          title: const Text('Mesa 9'),
          children: [
            CashierTile(orderProduct: controller.itemSeven()),
            CashierTile(orderProduct: controller.itemEight()),
            CashierTile(orderProduct: controller.itemNine()),
            Text(
                'Total: ${controller.totalPriceTableNine().toStringAsFixed(2)}')
          ],
        ),
        ExpansionTile(
          title: const Text('Mesa 15'),
          children: [
            CashierTile(orderProduct: controller.itemTen()),
            CashierTile(orderProduct: controller.itemEleven()),
            CashierTile(orderProduct: controller.itemTwelve()),
            Text(
                'Total: ${controller.totalPriceTableFifteen().toStringAsFixed(2)}')
          ],
        )
      ],
    );
  }
}
