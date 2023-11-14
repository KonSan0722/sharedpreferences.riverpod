import 'package:flutter_sharedpreferences_sample/kv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'shared_model_state.g.dart';

@riverpod
class SharedModelNotifier extends _$SharedModelNotifier {
  @override
  Future<List> build() async {
    return loadBookmark();
  }

  Future<void> input(value) async {
    await saveBookmark(value);
    state = AsyncData(value);
    
  }

  // void remove(value) {
  //   final oldState = state;
  //   final newState = List.of(oldState);
  //   newState.removeAt(value);
  //   state = newState;
  // }
}
