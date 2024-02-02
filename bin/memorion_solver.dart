import 'package:memorion_solver/levels/level_41.dart';
import 'package:memorion_solver/memorion_solver.dart' as memorion_solver;

// void main(List<String> arguments) {
//   final level41 = Level41();
//   print('level ${level41.number}: ${memorion_solver.solve(level41)}!');
// }

List<List<T>> generateCombinations<T>(List<T> list, int size) {
  List<List<T>> result = [];
  _combine<T>(list, size, 0, [], result);
  return result;
}

void _combine<T>(
  List<T> list,
  int length,
  int currentIndex,
  List<T> currentList,
  List<List<T>> result,
) {
  if (length == 0) {
    final a = List<T>.from(currentList);
    print(a.runtimeType);
    print(result.runtimeType);
    result.add(a);
    return;
  }
  if (currentIndex == list.length) {
    return;
  }
  for (int i = 0; i < length; i++) {
    currentList.add(list[currentIndex]);
    _combine<T>(list, length - 1, currentIndex, currentList, result);
    currentList.removeLast();
  }
  _combine<T>(list, length, currentIndex + 1, List.from(currentList), result);
}

void main() {
  final combinations = generateCombinations<String>(['1', '2', '3'], 4);
  for (final combination in [...combinations, ...combinations.reversed]) {
    print(combination);
  }

//   final list = ['a','b','d','b','d','a','c'];
//   print(list);
//   print(list.toSet().toList());
}
