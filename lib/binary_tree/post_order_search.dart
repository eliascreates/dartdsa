import 'binary_node.dart';

List<T> _walk<T>(BinaryNode<T>? currentNode, List<T> path) {
  if (currentNode == null) {
    return path;
  }

  _walk(currentNode.left, path);
  _walk(currentNode.right, path);
  path.add(currentNode.value);

  return path;
}

List<T> postOrderSearch<T>({required BinaryNode<T>? binaryNode}) {
  if (binaryNode == null) return [];
  return _walk(binaryNode, []);
}
