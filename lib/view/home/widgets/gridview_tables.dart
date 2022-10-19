import 'package:pedido_digital/view/menu_table/menu_table_view.dart';
import 'package:flutter/material.dart';

import 'tables_home.dart';

class GridViewTables extends StatelessWidget {
  const GridViewTables({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
      padding: const EdgeInsets.all(10),
      itemCount: 18,
      itemBuilder: (context, index) => TablesHome(
          ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MenuTableView(table: index + 1))),
          num: index + 1),
    );
  }
}
