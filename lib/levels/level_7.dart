import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level7 extends Level {
  Level7() {
    number = 7;
    optimalMovements = 3;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');

    a.neighbors = [b, c];
    b.neighbors = [a, c, d];
    c.neighbors = [a, b, e];
    d.neighbors = [b, e];
    e.neighbors = [c, d];

    initializeNodes([a, b, c, d, e]);
  }
}
