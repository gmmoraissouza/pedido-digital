import 'package:pedido_digital/controller/menu_table/controller_menu_table.dart';
import 'package:pedido_digital/view/menu_table/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MenuTableView extends StatefulWidget {
  const MenuTableView({Key? key, required this.table}) : super(key: key);

  final int table;

  @override
  State<MenuTableView> createState() => _MenuTableViewState();
}

class _MenuTableViewState extends State<MenuTableView> {
  ControllerMenuTable controller = ControllerMenuTable();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mesa ${widget.table}'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Lanches',
              ),
              Tab(
                text: 'Porções',
              ),
              Tab(
                text: 'Bebidas',
              ),
            ],
            indicatorColor: Colors.grey,
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: controller.categLanches.length,
              itemBuilder: (_, index) {
                return ProductTile(
                  ontap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Quantos pedir?'),
                          content: Row(
                            children: [
                              Observer(
                                builder: (_) => IconButton(
                                    onPressed: controller.quantity > 1
                                        ? controller.decrement
                                        : null,
                                    icon: const Icon(Icons.remove)),
                              ),
                              Observer(
                                  builder: (_) =>
                                      Text('${controller.quantity}')),
                              IconButton(
                                  onPressed: controller.increment,
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Pedir')),
                          ],
                        );
                      }),
                  product: controller.lanches(index),
                );
              },
            ),
            ListView.builder(
              itemCount: controller.categPorcoes.length,
              itemBuilder: (context, index) {
                return ProductTile(
                  ontap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Fazer pedido'),
                          content: Row(
                            children: [
                              Observer(
                                builder: (_) => IconButton(
                                    onPressed: controller.quantity > 1
                                        ? controller.decrement
                                        : null,
                                    icon: const Icon(Icons.remove)),
                              ),
                              Observer(
                                  builder: (_) =>
                                      Text('${controller.quantity}')),
                              IconButton(
                                  onPressed: controller.increment,
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Pedir')),
                          ],
                        );
                      }),
                  product: controller.porcoes(index),
                );
              },
            ),
            ListView.builder(
              itemCount: controller.categBebidas.length,
              itemBuilder: (context, index) {
                return ProductTile(
                  ontap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Fazer pedido'),
                          content: Row(
                            children: [
                              Observer(
                                builder: (_) => IconButton(
                                    onPressed: controller.quantity > 1
                                        ? controller.decrement
                                        : null,
                                    icon: const Icon(Icons.remove)),
                              ),
                              Observer(
                                  builder: (_) =>
                                      Text('${controller.quantity}')),
                              IconButton(
                                  onPressed: controller.increment,
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Pedir')),
                          ],
                        );
                      }),
                  product: controller.bebidas(index),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
