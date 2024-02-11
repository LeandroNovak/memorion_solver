import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level36 extends Level {
  Level36() {
    number = 36;
    optimalMovements = 5;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');
    final g = Node('G');
    final h = Node('H');

    a.neighbors = [b, d, g];
    b.neighbors = [a, c, d, e];
    c.neighbors = [b, e, h];
    d.neighbors = [a, b, f, g];
    e.neighbors = [b, c, f, h];
    f.neighbors = [d, e, g, h];
    g.neighbors = [a, d, f, h];
    h.neighbors = [c, e, f, g];

    initializeNodes([a, b, c, d, e, f, g, h]);
  }
}
