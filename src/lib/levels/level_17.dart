import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level17 extends Level {
  Level17() {
    number = 17;
    optimalMovements = 5;

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

    a.neighbors = [b, d];
    b.neighbors = [a, c, e, g];
    c.neighbors = [b, d, e, f];
    d.neighbors = [a, c, f, i];
    e.neighbors = [b, c, f, g, h];
    f.neighbors = [c, d, e, h, i];
    g.neighbors = [b, e, j];
    h.neighbors = [e, f, j, k];
    i.neighbors = [d, f, k];
    j.neighbors = [g, h, k];
    k.neighbors = [h, i, j];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k]);
  }
}
