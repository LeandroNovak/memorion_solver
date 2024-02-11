import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level18 extends Level {
  Level18() {
    number = 18;
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

    a.neighbors = [b, c];
    b.neighbors = [a, d];
    c.neighbors = [a, d];
    d.neighbors = [b, c, e, f];
    e.neighbors = [d, g];
    f.neighbors = [d, g];
    g.neighbors = [e, f, h];
    h.neighbors = [g, i];
    i.neighbors = [h];

    initializeNodes([a, b, c, d, e, f, g, h, i]);
  }
}
