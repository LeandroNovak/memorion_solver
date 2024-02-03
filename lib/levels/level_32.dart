import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level32 extends Level {
  Level32() {
    number = 32;
    optimalMovements = 9;

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

    a.neighbors = [g];
    b.neighbors = [d, g];
    c.neighbors = [g, e];
    d.neighbors = [b, f];
    e.neighbors = [c, h];
    f.neighbors = [d, g];
    g.neighbors = [a, b, c, f, h, i];
    h.neighbors = [e, g];
    i.neighbors = [g, j, k];
    j.neighbors = [i];
    k.neighbors = [i];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k]);
  }
}
