import 'package:dsa/binary_tree/binary_tree.dart';

void main() {
  final binaryTreeA = BinaryTree<num>();

  final binaryTreeB = BinaryTree<num>();

  binaryTreeA.root = BinaryNode<num>(value: 1);
  binaryTreeA.root?.left = BinaryNode<num>(value: 2);
  binaryTreeA.root?.right = BinaryNode<num>(value: 3);
  binaryTreeA.root?.right?.left = BinaryNode<num>(value: 4);

  binaryTreeB.root = BinaryNode<num>(value: 1);
  binaryTreeB.root?.left = BinaryNode<num>(value: 2);
  binaryTreeB.root?.right = BinaryNode<num>(value: 3);
  binaryTreeB.root?.right?.left = BinaryNode<num>(value: 4);

  print('Binary Tree A: $binaryTreeA');
  print('Binary Tree B: $binaryTreeB');

  final same = compare(binaryTreeA.root, binaryTreeB.root);

  print(same ? 'Tree A & B are equal' : 'Tree A & B are not equal');
}
