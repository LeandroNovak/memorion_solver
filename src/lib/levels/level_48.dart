import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level48 extends Level {
  Level48() {
    number = 48;
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
    final p = Node('P');
    final q = Node('Q');
    final r = Node('R');
    final s = Node('S');
    final t = Node('T');

    a.neighbors = [b, e, j];
    b.neighbors = [a, c, d];
    c.neighbors = [b, f, g];
    d.neighbors = [b, h, i];
    e.neighbors = [a, f, s];
    f.neighbors = [c, e, k];
    g.neighbors = [c, h, l];
    h.neighbors = [d, g, n];
    i.neighbors = [d, j, o];
    j.neighbors = [a, i, t];
    k.neighbors = [f, l, p];
    l.neighbors = [g, k, m];
    m.neighbors = [l, n, q];
    n.neighbors = [h, m, o];
    o.neighbors = [i, n, r];
    p.neighbors = [k, q, s];
    q.neighbors = [m, p, r];
    r.neighbors = [o, q, t];
    s.neighbors = [e, p, t];
    t.neighbors = [j, r, s];

    initializeNodes(
      [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t],
    );
  }
}
