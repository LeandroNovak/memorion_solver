import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level5 extends Level {
  Level5() {
    number = 5;
    optimalMovements = 4;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');

    a.neighbors = [b, d];
    b.neighbors = [a, e];
    c.neighbors = [d, e];
    d.neighbors = [a, c, f];
    e.neighbors = [b, c, f];
    f.neighbors = [d, e];

    initializeNodes([a, b, c, d, e, f]);
  }
}
