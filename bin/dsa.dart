import 'package:dsa/binary_tree/binary_node.dart';
import 'package:dsa/binary_tree/binary_tree.dart' as dsa;

void main() {
  final binaryTreeA = dsa.BinaryTree<num>();

  final binaryTreeB = dsa.BinaryTree<num>();

  binaryTreeA.root = BinaryNode<num>(value: 1);
  binaryTreeA.root?.left = BinaryNode<num>(value: 2);
  binaryTreeA.root?.right = BinaryNode<num>(value: 3);
  binaryTreeA.root?.right?.left = BinaryNode<num>(value: 4);

  binaryTreeB.root = BinaryNode<num>(value: 1);
  binaryTreeB.root?.left = BinaryNode<num>(value: 2);
  binaryTreeB.root?.right = BinaryNode<num>(value: 3);
  binaryTreeB.root?.left?.left = BinaryNode<num>(value: 4);

  print('Binary Tree A: $binaryTreeA');
  print('Binary Tree B: $binaryTreeB');

  final same = dsa.compare(binaryTreeA.root, binaryTreeB.root);

  print(same ? 'Tree A & B are equal' : 'Tree A & B are not equal');
}
