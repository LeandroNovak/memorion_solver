import 'package:memorion_solver/common/node.dart';

abstract class Level {
  late final int number;
  late final int optimalMovements;
  late final Map<String, Node> nodes;
  late final Map<String, bool> nodeStatus;
  
  initializeNodes(List<Node> nodeList) {
    nodes = {};
    nodeStatus = {};

    for (var node in nodeList) {
      nodes[node.name] = node;
      nodeStatus[node.name] = false;
    }
  }

  void toggleNode(Node node) {
    nodeStatus[node.name] = !nodeStatus[node.name]!;
    for(final neighbor in node.neighbors) {
      nodeStatus[neighbor.name] = !nodeStatus[neighbor.name]!;
    }
  }

  bool areAllNodesEnabled() {
    return nodeStatus.values.any((isEnabled) => !isEnabled);
  }
}
