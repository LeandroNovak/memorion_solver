import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level42 extends Level {
  Level42() {
    number = 42;
    optimalMovements = 4;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');
    final g = Node('G');
    final h = Node('H');

    a.neighbors = [b, c, d, g, h];
    b.neighbors = [a, c, d, e];
    c.neighbors = [a, b, e, f, g];
    d.neighbors = [a, b, e, f, h];
    e.neighbors = [a, b, c, d, f];
    f.neighbors = [c, d, e, g, h];
    g.neighbors = [a, c, f, h];
    h.neighbors = [a, d, f, g];

    initializeNodes([
      a,
      b,
      c,
      d,
      e,
      f,
      g,
      h,
    ]);
  }
}
