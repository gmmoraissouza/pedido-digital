import 'package:pedido_digital/util/theme.dart';
import 'package:flutter/material.dart';

import 'view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedido Digital',
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: theme(),
    );
  }
}
