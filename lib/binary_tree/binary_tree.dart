import 'package:dsa/binary_tree/binary_node.dart';

import 'pre_order_search.dart';

export 'binary_node.dart';
export 'binary_tree.dart';
export 'breadth_first_search.dart';
export 'compare_binary_trees.dart';
export 'in_order_search.dart';
export 'post_order_search.dart';
export 'pre_order_search.dart';

class BinaryTree<T> {
  BinaryNode<T>? root;

  BinaryNode<T>? createNode(T value) {
    return BinaryNode(value: value);
  }

  @override
  String toString() {
    final path = preOrderSearch(binaryNode: root);
    return '$path';
  }
}
