import 'package:test/test.dart';
import 'package:dsa/binary_tree/binary_tree.dart';

void main() {
  late BinaryTree<num> binaryTree;
  setUpAll(() {
    binaryTree = BinaryTree<num>();

    binaryTree.root = binaryTree.createNode(65);
    binaryTree.root?.left = binaryTree.createNode(32);
    binaryTree.root?.right = binaryTree.createNode(98);
    binaryTree.root?.left?.left = binaryTree.createNode(21);
    binaryTree.root?.left?.right = binaryTree.createNode(54);
    binaryTree.root?.right?.left = binaryTree.createNode(76);
    binaryTree.root?.right?.right = binaryTree.createNode(109);
    binaryTree.root?.left?.right?.left = binaryTree.createNode(43);
    binaryTree.root?.right?.left?.right = binaryTree.createNode(87);
  });
  test('Breadth-First Search - Return true if value is found', () {
    // Arrange
    const searchNum = 76;

    // Act
    final result = breadthFirstSearch(head: binaryTree.root, needle: searchNum);

    // Assert
    expect(result, isTrue);
  });

  test('Breadth-First Search - Return false if value is not found', () {
    // Arrange
    const searchNum = 120;

    // Act
    final result = breadthFirstSearch(head: binaryTree.root, needle: searchNum);

    // Assert
    expect(result, isFalse);
  });

  test('Breadth-First Search - Return false for an empty tree', () {
    // Arrange
    BinaryTree<num> binaryTree = BinaryTree();

    // Act
    final result = breadthFirstSearch(head: binaryTree.root, needle: 42);

    // Assert
    expect(result, isFalse);
  });
}
