import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level3 extends Level {
  Level3() {
    number = 1;
    optimalMovements = 1;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');

    a.neighbors = [b, c];
    b.neighbors = [a];
    c.neighbors = [a];

    initializeNodes([a, b, c]);
  }
}
