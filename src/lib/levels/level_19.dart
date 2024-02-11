import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level19 extends Level {
  Level19() {
    number = 19;
    optimalMovements = 4;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');
    final g = Node('G');
    final h = Node('H');
    final i = Node('I');
    final j = Node('J');

    a.neighbors = [b];
    b.neighbors = [a, d, e];
    c.neighbors = [d];
    d.neighbors = [b, c, g];
    e.neighbors = [b, f, g];
    f.neighbors = [e];
    g.neighbors = [d, e, h];
    h.neighbors = [g, i, j];
    i.neighbors = [h];
    j.neighbors = [h];

    initializeNodes([a, b, c, d, e, f, g, h, i, j]);
  }
}
