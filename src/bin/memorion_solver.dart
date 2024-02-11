import 'package:memorion_solver/levels/level_32.dart';
import 'package:memorion_solver/levels/level_36.dart';
import 'package:memorion_solver/memorion_solver.dart' as memorion_solver;

void main(List<String> arguments) {
  final level = Level36();
  print('level ${level.number}: ${memorion_solver.solve(level)}!');
}
