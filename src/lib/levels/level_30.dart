import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level30 extends Level {
  Level30() {
    number = 30;
    optimalMovements = 5;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');
    final g = Node('G');

    a.neighbors = [b, c];
    b.neighbors = [a, d, e];
    c.neighbors = [a, d, f];
    d.neighbors = [b, c];
    e.neighbors = [b, f, g];
    f.neighbors = [c, e, g];
    g.neighbors = [e, f];

    initializeNodes([a, b, c, d, e, f, g]);
  }
}
