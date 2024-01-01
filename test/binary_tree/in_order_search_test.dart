import 'package:test/test.dart';
import 'package:dsa/binary_tree/binary_tree.dart';

void main() {
  group('In-Order Search - ', () {
    test('Return sorted list of values', () async {
      // Arrange
      BinaryTree<num> binaryTree = BinaryTree();
      binaryTree.root = binaryTree.createNode(65);
      binaryTree.root?.left = binaryTree.createNode(32);
      binaryTree.root?.right = binaryTree.createNode(98);
      binaryTree.root?.left?.left = binaryTree.createNode(21);
      binaryTree.root?.left?.right = binaryTree.createNode(54);
      binaryTree.root?.right?.left = binaryTree.createNode(76);
      binaryTree.root?.right?.right = binaryTree.createNode(109);
      binaryTree.root?.left?.right?.left = binaryTree.createNode(43);
      binaryTree.root?.right?.left?.right = binaryTree.createNode(87);

      // Act
      List<num> result = inOrderSearch(binaryNode: binaryTree.root);

      // Assert
      expect(result, [21, 32, 43, 54, 65, 76, 87, 98, 109]);
    });

    test('Return empty list for an empty tree', () {
      // Arrange
      BinaryTree<num> binaryTree = BinaryTree();

      // Act
      List<num> result = inOrderSearch(binaryNode: binaryTree.root);

      // Assert
      expect(result, []);
    });
  });
}
