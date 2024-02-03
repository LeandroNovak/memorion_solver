import 'package:memorion_solver/levels/level_1.dart';
import 'package:memorion_solver/levels/level_41.dart';
import 'package:memorion_solver/memorion_solver.dart' as memorion_solver;

void main(List<String> arguments) {
  final level41 = Level1();
  level41.toggleNode(level41.nodes['A']!);
  print('level ${level41.number}: ${memorion_solver.solve(level41)}!');
}