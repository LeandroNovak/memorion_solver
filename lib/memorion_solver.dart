import 'package:memorion_solver/common/level.dart';
import 'package:trotter/trotter.dart';

List<String> solve(Level level) {
  final nodes = level.nodes.keys.toList();
  final optimalMovements = level.optimalMovements;
  final buffer = StringBuffer();

  final permutations = a(nodes, 4);
  for (final permutation in permutations) {
    print(permutation);
  }

  // for (var i = 0; i < nodes.length; i++) {
  //   for (var j = 0; j < optimalMovements; j++) {
  //     buffer.write(nodes[i]);
  //     //print(nodes[i]);
  //   }
  //   print(buffer.toString());
  // } 
  return [];
}

List<List<String>> a(List<String> list, int size) {
  var output = <List<String>>[];
  permute(list, size, [], 0, output);
  return output;
}

void permute(
  List<String> list, 
  int size, 
  List<String> result, 
  int level, 
  List<List<String>> output,
) {
  if (level == size) {
    print(result);
    output.add(result);
    return;
  }

  for (int i = 0; i < list.length; i++) {
    result.add(list[i]);
    permute(list, size, result, level + 1, output);
    result.removeLast();
  }
}
