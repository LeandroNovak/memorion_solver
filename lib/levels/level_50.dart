import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level50 extends Level {
  Level50() {
    number = 50;
    optimalMovements = 6;

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
    final o = Node('O');

    a.neighbors = [b, c, d];
    b.neighbors = [a, e, f];
    c.neighbors = [a, d, g];
    d.neighbors = [c, a, h];
    e.neighbors = [b, f, h];
    f.neighbors = [b, e, i];
    g.neighbors = [c, h, m];
    h.neighbors = [d, e, g, i, j, k, l];
    i.neighbors = [f, h, o];
    j.neighbors = [h, l, m];
    k.neighbors = [h, l, o];
    l.neighbors = [h, j, k, n];
    m.neighbors = [g, j, n];
    n.neighbors = [l, m, o];
    o.neighbors = [i, k, n];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k, l, m, n, o]);
  }
}
