import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sharedpreferences_sample/state.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bookmark_listtile.dart';

class SharedListView extends HookConsumerWidget {
  SharedListView({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final modelState = ref.watch(modelsNotifierProvider);
    final list = ListView.builder(
        itemCount: modelState.length,
        itemBuilder: (context, index) {
          return Slidable(
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) {
                    final notifier = ref.read(modelsNotifierProvider.notifier);
                    notifier.remove(index);
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: BookMarkListTile(
              model: modelState[index],
              number: index,
              controller: controller,
            ),
          );
        });
    final con = Center(
      child: SizedBox(height: height / 10 * 7, width: width, child: list),
    );
    return con;
  }
}
