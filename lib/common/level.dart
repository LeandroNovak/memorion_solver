import 'package:memorion_solver/common/node.dart';

abstract class Level {
  late final int number;
  late final int optimalMovements;
  late final List<Node> nodes;
}
