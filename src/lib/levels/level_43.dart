import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level43 extends Level {
  Level43() {
    number = 43;
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

    a.neighbors = [b, c];
    b.neighbors = [a, e];
    c.neighbors = [a, d, f, h];
    d.neighbors = [c, d, f, g, i];
    e.neighbors = [b, d, g, j];
    f.neighbors = [c, d, h];
    g.neighbors = [d, e, j];
    h.neighbors = [c, f, i];
    i.neighbors = [d, h, j];
    j.neighbors = [e, g, i];

    initializeNodes([a, b, c, d, e, f, g, h, i, j]);
  }
}
