import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sharedpreferences_sample/state.dart';

import 'bookmark_model.dart';

class BookMarkListTile extends ConsumerWidget {
  const BookMarkListTile(
      {super.key,
      required this.model,
      required this.number,
      required this.controller});
  final TextEditingController controller;
  final BookmarkModel model;
  final int number;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modelState = ref.watch(modelsNotifierProvider);
    final num = number + 1;
    return ListTile(
      title: Text(
        "$num:  ${model.text}",
        style: TextStyle(color: Colors.black),
      ),
      leading: const Icon(
        Icons.comment,
        color: Colors.black,
      ),
      onTap: () {},
    );
  }
}
