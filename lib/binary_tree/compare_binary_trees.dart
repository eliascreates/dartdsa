import 'binary_node.dart';

bool compare(BinaryNode<num>? a, BinaryNode<num>? b) {
  if (a == null && b == null) {
    return true;
  }

  if (a == null || b == null) {
    return false;
  }

  if (a.value != b.value) {
    return false;
  }

  return compare(a.left, b.left) && compare(a.right, b.right);
}
