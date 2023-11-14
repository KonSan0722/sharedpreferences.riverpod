import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sharedpreferences_sample/shared_listview.dart';
import 'package:flutter_sharedpreferences_sample/shared_model_state.dart';
import 'package:flutter_sharedpreferences_sample/shared_textform.dart';
import 'package:flutter_sharedpreferences_sample/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final controller = useTextEditingController();
    final models = ref.watch(modelsNotifierProvider);
    final model = ref.watch(sharedModelNotifierProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("sharedpreferences ✖️ riverpod"),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              children: [
                SharedListView(
                  controller: controller,
                ),
                SharedTextform(controller: controller)
              ],
            ),
          ),
        ));
  }
}
