import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level44 extends Level {
  Level44() {
    number = 44;
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
    final k = Node('K');
    final l = Node('L');

    a.neighbors = [e, f, b, h, i];
    b.neighbors = [a, c, d, g];
    c.neighbors = [b, f, g, j];
    d.neighbors = [b, g, h, k];
    e.neighbors = [a, f, l];
    f.neighbors = [a, c, e, j];
    g.neighbors = [b, c, d, j, k];
    h.neighbors = [a, d, i, k];
    i.neighbors = [a, h, l];
    j.neighbors = [c, f, g, l];
    k.neighbors = [d, g, h, l];
    l.neighbors = [e, i, j, k];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k, l]);
  }
}
