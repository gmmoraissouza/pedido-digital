import 'package:flutter/material.dart';

class TablesHome extends StatelessWidget {
  const TablesHome({
    Key? key,
    required this.ontap,
    required this.num,
  }) : super(key: key);

  final VoidCallback ontap;
  final int num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              '$num',
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
