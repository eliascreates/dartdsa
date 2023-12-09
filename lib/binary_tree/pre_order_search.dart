import 'binary_node.dart';

List<num> _walk(BinaryNode<num>? currentNode, List<num> path) {
  if (currentNode == null) {
    return path;
  }

  path.add(currentNode.value);
  _walk(currentNode.left, path);
  _walk(currentNode.right, path);

  return path;
}

List<num> preOrderSearch({required BinaryNode<num> binaryNode}) {
  return _walk(binaryNode, []);
}
