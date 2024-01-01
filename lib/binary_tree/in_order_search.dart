import 'binary_node.dart';

List<num> _walk(BinaryNode<num>? currentNode, List<num> path) {
  if (currentNode == null) {
    return path;
  }

  _walk(currentNode.left, path);
  path.add(currentNode.value);
  _walk(currentNode.right, path);

  return path;
}

List<num> inOrderSearch({required BinaryNode<num>? binaryNode}) {
  if (binaryNode == null) return [];
  return _walk(binaryNode, []);
}
