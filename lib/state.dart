import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@riverpod
class ModelsNotifier extends _$ModelsNotifier {
  @override
  List build() {
    return [];
  }

  void input(value) {
    final oldState = state;
    final newState = List.of(oldState);
    newState.add(value);
    state = newState;
  }

  void remove(value) {
    final oldState = state;
    final newState = List.of(oldState);
    newState.removeAt(value);
    state = newState;
  }
}
