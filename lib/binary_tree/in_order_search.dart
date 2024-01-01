import 'binary_node.dart';

List<T> _walk<T>(BinaryNode<T>? currentNode, List<T> path) {
  if (currentNode == null) {
    return path;
  }

  _walk(currentNode.left, path);
  path.add(currentNode.value);
  _walk(currentNode.right, path);

  return path;
}

List<T> inOrderSearch<T>({required BinaryNode<T>? binaryNode}) {
  if (binaryNode == null) return [];
  return _walk(binaryNode, []);
}
