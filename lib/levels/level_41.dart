import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level41 extends Level {
  Level41() {
    number = 41;
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

    a.neighbors = [b, c];
    b.neighbors = [a, c, d, e, f, h];
    c.neighbors = [a, b, d, f, g, h];
    d.neighbors = [b, c, f];
    e.neighbors = [b, h, i];
    f.neighbors = [b, c, d, h];
    g.neighbors = [c, h, j];
    h.neighbors = [b, c, e, f, g, i, j];
    i.neighbors = [e, h, j, k];
    j.neighbors = [g, h, i, k];
    k.neighbors = [i, j];

    nodes = [a, b, c, d, e, f, g, h, i, j, k];
  }
}
