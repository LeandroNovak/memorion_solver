import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level14 extends Level {
  Level14() {
    number = 14;
    optimalMovements = 3;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');

    a.neighbors = [b, e, f];
    b.neighbors = [a, c, d];
    c.neighbors = [b, e, d];
    d.neighbors = [b, c, f];
    e.neighbors = [a, c, f];
    f.neighbors = [a, d, e];

    initializeNodes([a, b, c, d, e, f]);
  }
}
