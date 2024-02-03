import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level6 extends Level {
  Level6() {
    number = 6;
    optimalMovements = 3;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');

    a.neighbors = [c, d];
    b.neighbors = [c, e];
    c.neighbors = [a, b, d, e];
    d.neighbors = [a, c, f];
    e.neighbors = [b, c, f];
    f.neighbors = [d, e];

    initializeNodes([a, b, c, d, e, f]);
  }
}
