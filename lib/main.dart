import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'MyApp.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: MyApp())));
}
