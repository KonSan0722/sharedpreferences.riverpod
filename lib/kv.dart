import 'package:flutter_sharedpreferences_sample/bookmark_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveBookmark(String value) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> bookMark = <String>[];
  bookMark.add(value);
  await prefs.setStringList(
    'book',
    bookMark,
  );
}

Future<List<String>> loadBookmark() async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getStringList('book');
  return value ?? [];
}
