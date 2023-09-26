import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sharedpreferences_sample/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:status_alert/status_alert.dart';

import 'bookmark_model.dart';
import 'nextpage.dart';

class SharedTextform extends HookConsumerWidget {
  SharedTextform({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final models = ref.watch(modelsNotifierProvider);
    void addBookmark(String text) {
      final notifier = ref.read(modelsNotifierProvider.notifier);
      notifier.input(BookmarkModel(text));
    }

    return Container(
        height: height / 10 * 2,
        width: width,
        child: Row(
          children: [
            Flexible(
                child: TextFormField(
              controller: controller,
            )),
            ElevatedButton(
                onPressed: () {
                  addBookmark(controller.text);
                  StatusAlert.show(context,
                      duration: const Duration(seconds: 2),
                      title: '保存完了',
                      configuration: const IconConfiguration(icon: Icons.done),
                      maxWidth: 260);
                },
                child: const Text("リストに追加"))
          ],
        ));
  }
}
