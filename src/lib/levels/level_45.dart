import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

// Not working
class Level45 extends Level {
  Level45() {
    number = 45;
    optimalMovements = 3;

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

    a.neighbors = [b, c, e];
    b.neighbors = [a, d, f];
    c.neighbors = [a, g];
    d.neighbors = [b, i];
    e.neighbors = [a, f, g, h];
    f.neighbors = [b, e, h, i];
    g.neighbors = [c, e, j];
    h.neighbors = [e, f, j, k];
    i.neighbors = [d, f, k];
    j.neighbors = [g, h];
    k.neighbors = [h, i];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k]);
  }
}
