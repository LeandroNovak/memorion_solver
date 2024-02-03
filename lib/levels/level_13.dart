import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level13 extends Level {
  Level13() {
    number = 13;
    optimalMovements = 3;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');

    a.neighbors = [b, c, e];
    b.neighbors = [a, c, f];
    c.neighbors = [a, b, d];
    d.neighbors = [c, e, f];
    e.neighbors = [a, d, f];
    f.neighbors = [b, d, e];

    initializeNodes([a, b, c, d, e, f]);
  }
}
