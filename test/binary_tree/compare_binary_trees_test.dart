import 'package:test/test.dart';
import 'package:dsa/binary_tree/binary_tree.dart';

void main() {
  late BinaryTree<num> binaryTreeA;
  late BinaryTree<num> binaryTreeB;

  group('Binary Tree compare function', () {
    setUpAll(() {
      binaryTreeA = BinaryTree();
      binaryTreeA.root = binaryTreeA.createNode(65);
      binaryTreeA.root?.left = binaryTreeA.createNode(32);
      binaryTreeA.root?.right = binaryTreeA.createNode(98);
      binaryTreeA.root?.left?.left = binaryTreeA.createNode(21);
      binaryTreeA.root?.left?.right = binaryTreeA.createNode(54);
      binaryTreeA.root?.right?.left = binaryTreeA.createNode(76);
      binaryTreeA.root?.right?.right = binaryTreeA.createNode(109);
      binaryTreeA.root?.left?.right?.left = binaryTreeA.createNode(43);
      binaryTreeA.root?.right?.left?.right = binaryTreeA.createNode(87);

      binaryTreeB = BinaryTree();
      binaryTreeB.root = binaryTreeB.createNode(65);
      binaryTreeB.root?.left = binaryTreeB.createNode(32);
      binaryTreeB.root?.right = binaryTreeB.createNode(98);
      binaryTreeB.root?.left?.left = binaryTreeB.createNode(21);
      binaryTreeB.root?.left?.right = binaryTreeB.createNode(54);
      binaryTreeB.root?.right?.left = binaryTreeB.createNode(76);
      binaryTreeB.root?.right?.right = binaryTreeB.createNode(109);
      binaryTreeB.root?.left?.right?.left = binaryTreeB.createNode(43);
      binaryTreeB.root?.right?.left?.right = binaryTreeB.createNode(87);
    });

    test('Compare - Return true for two identical trees', () {
      // Act
      final result = compare(binaryTreeA.root, binaryTreeB.root);

      // Assert
      expect(result, isTrue);
    });

    test('Compare - Return false for two different trees', () {
      // Arrange
      binaryTreeB.root?.right?.right = binaryTreeB.createNode(110);

      // Act
      final result = compare(binaryTreeA.root, binaryTreeB.root);

      // Assert
      expect(result, isFalse);
    });

    test('Compare - Return false for trees with different structures', () {
      // Arrange
      BinaryTree<num> treeA = BinaryTree();
      treeA.root = treeA.createNode(65);
      treeA.root?.left = treeA.createNode(32);
      treeA.root?.right = treeA.createNode(98);
      treeA.root?.left?.left = treeA.createNode(21);
      treeA.root?.left?.right = treeA.createNode(54);

      BinaryTree<num> treeB = BinaryTree();
      treeB.root = treeB.createNode(65);
      treeB.root?.left = treeB.createNode(32);
      treeB.root?.right = treeB.createNode(98);
      treeB.root?.left?.left = treeB.createNode(21);
      treeB.root?.right?.right = treeB.createNode(87);

      // Act
      final result = compare(treeA.root, treeB.root);

      // Assert
      expect(result, isFalse);
    });

    test('Compare - Return true for two empty trees', () {
      // Arrange
      BinaryTree<num> treeA = BinaryTree();
      BinaryTree<num> treeB = BinaryTree();

      // Act
      final result = compare(treeA.root, treeB.root);

      // Assert
      expect(result, isTrue);
    });
  });
}
