import 'package:memorion_solver/common/algorithms.dart';
import 'package:memorion_solver/common/level.dart';

List<String> solve(Level level) {
  final nodes = level.nodes.keys.toList();
  final optimalMovements = level.optimalMovements;

  final permutations = permutationOf(nodes, optimalMovements);
  print('number of permutations: ${permutations.length}');

  for (final permutation in permutations) {
    for (final node in permutation) {
      level.toggleNode(node);
    }

    if (level.isCompleted()) {
      return permutation;
    }

    level.reset();
  }

  return [];
}

Future<void> a(Level level) async {
  final nodes = level.nodes.keys.toList();
  final optimalMovements = level.optimalMovements;

  streammedPermutationOf(nodes, optimalMovements).listen(
    (permutation) {
      for (final node in permutation) {
        level.toggleNode(node);
      }

      if (level.isCompleted()) {
        print('solution: ${permutation}');
        throw 'a';
      }

      level.reset();
    },
  );
}
