import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sharedpreferences_sample/shared_listview.dart';
import 'package:flutter_sharedpreferences_sample/shared_textform.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height / 10 * 1),
            child: AppBar(
              title: const Text("sharedpreferences ✖️ riverpod"),
            )),
        body: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              children: [SharedListView(), const SharedTextform()],
            ),
          ),
        ));
  }
}
