import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level46 extends Level {
  Level46() {
    number = 46;
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

    a.neighbors = [b, c, d, h];
    b.neighbors = [a, c, f, i];
    c.neighbors = [a, b, d, f];
    d.neighbors = [a, c, e, g, h];
    e.neighbors = [d, f, g];
    f.neighbors = [b, c, e, g, i];
    g.neighbors = [d, e, f, h, i];
    h.neighbors = [a, d, g, i];
    i.neighbors = [b, f, g, h];

    initializeNodes([a, b, c, d, e, f, g, h, i]);
  }
}
