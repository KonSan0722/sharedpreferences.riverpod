import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SharedTextform extends StatelessWidget {
  const SharedTextform({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
        height: height / 10 * 2,
        width: width,
        child: Row(
          children: [
            Flexible(child: TextFormField()),
            ElevatedButton(onPressed: () {}, child: const Text("リストに追加"))
          ],
        ));
  }
}
