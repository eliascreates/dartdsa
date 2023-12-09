import 'binary_node.dart';

List<num> _walk(BinaryNode<num>? currentNode, List<num> path) {
  if (currentNode == null) {
    return path;
  }

  _walk(currentNode.left, path);
  _walk(currentNode.right, path);
  path.add(currentNode.value);

  return path;
}

List<num> postOrderSearch({required BinaryNode<num> binaryNode}) {
  return _walk(binaryNode, []);
}
