import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level29 extends Level {
  Level29() {
    number = 29;
    optimalMovements = 4;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');
    final f = Node('F');
    final g = Node('G');

    a.neighbors = [b, c];
    b.neighbors = [a, c, d, e];
    c.neighbors = [a, b, d, f];
    d.neighbors = [b, c, e, f, g];
    e.neighbors = [b, d];
    f.neighbors = [c, d];
    g.neighbors = [d];

    initializeNodes([a, b, c, d, e, f, g]);
  }
}
