import 'package:memorion_solver/common/level.dart';
import 'package:memorion_solver/common/node.dart';

class Level11 extends Level {
  Level11() {
    number = 11;
    optimalMovements = 4;

    final a = Node('A');
    final b = Node('B');
    final c = Node('C');
    final d = Node('D');
    final e = Node('E');

    a.neighbors = [b, d];
    b.neighbors = [a, c, e];
    c.neighbors = [b, d, e];
    d.neighbors = [a, c, e];
    e.neighbors = [b, c, d];

    initializeNodes([a, b, c, d, e]);
  }
}
