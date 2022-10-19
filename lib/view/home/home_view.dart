import 'package:pedido_digital/controller/home/controller_home.dart';
import 'package:pedido_digital/view/cashier/cashier_view.dart';
import 'package:pedido_digital/view/kitchen/kitchen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'widgets/gridview_tables.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ControllerHome controller = ControllerHome();

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController(initialPage: controller.index);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu principal'),
        centerTitle: true,
      ),
      body: PageView(
        physics:
            const ScrollPhysics().applyTo(const NeverScrollableScrollPhysics()),
        controller: pageViewController,
        onPageChanged: controller.setIndex,
        children: const [GridViewTables(), KitchenView(), CashierView()],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Mesas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.soup_kitchen), label: 'Cozinha'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Caixa'),
          ],
          selectedItemColor: Colors.purple,
          currentIndex: controller.index,
          onTap: (value) {
            controller.setIndex(value);
            pageViewController.animateToPage(value,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          },
        ),
      ),
    );
  }
}
