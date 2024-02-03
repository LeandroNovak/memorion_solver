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

    a.neighbors = [];
    b.neighbors = [];
    c.neighbors = [];
    d.neighbors = [];
    e.neighbors = [];
    f.neighbors = [];
    g.neighbors = [];
    h.neighbors = [];
    i.neighbors = [];
    j.neighbors = [];
    k.neighbors = [];
    l.neighbors = [];
    m.neighbors = [];
    n.neighbors = [];
    o.neighbors = [];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k, l, m, n, o]);
  }
}
