import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level49 extends Level {
  Level49() {
    number = 49;
    optimalMovements = 7;

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
    final m = Node('M');
    final n = Node('N');

    a.neighbors = [b, d, e];
    b.neighbors = [a, c, f];
    c.neighbors = [b, g, h];
    d.neighbors = [a, i];
    e.neighbors = [a, f, i, j];
    f.neighbors = [b, e, g, j, k];
    g.neighbors = [c, f, k, l];
    h.neighbors = [c, l];
    i.neighbors = [d, e, m];
    j.neighbors = [e, f, k, m];
    k.neighbors = [f, g, j, n];
    l.neighbors = [g, h, n];
    m.neighbors = [i, j, n];
    n.neighbors = [k, l, m];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k, l, m, n]);
  }
}
