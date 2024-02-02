class Node {
  Node(this.name, [this.neighbors = const [], this.isActive = false]);

  final String name;

  List<Node> neighbors;
  bool isActive;

  @override
  String toString() {
    return name;
  }
}
