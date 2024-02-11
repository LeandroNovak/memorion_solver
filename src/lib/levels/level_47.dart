import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level47 extends Level {
  Level47() {
    number = 47;
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

    a.neighbors = [b, c, d, e, g, h];
    b.neighbors = [a, e, f];
    c.neighbors = [a, f, g];
    d.neighbors = [a, e, k];
    e.neighbors = [a, b, d, f, i, k];
    f.neighbors = [a, b, c, e, g, i, j, k];
    g.neighbors = [a, c, f, h, j, k];
    h.neighbors = [a, g, k];
    i.neighbors = [e, f, k];
    j.neighbors = [f, g, k];
    k.neighbors = [d, e, i, f, g, h, i, j];

    initializeNodes([a, b, c, d, e, f, g, h, i, j, k]);
  }
}
