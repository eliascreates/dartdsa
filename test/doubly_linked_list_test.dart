import 'package:test/test.dart';
import 'package:dsa/doubly_linked_list.dart';

void main() {
  late DoublyLinkedList<num> list;

  group('Doubly Linked List -', () {
    setUp(() => list = DoublyLinkedList());

    test('append method', () {
      //Act
      list.append(1);
      list.append(2);
      
      //Assert
      expect(list.length, 2);
      expect(list.get(0), 1);
      expect(list.get(1), 2);
    });

    test('prepend method', () {
      //Arrange
      list.prepend(1);
      list.prepend(2);
      
      //Assert
      expect(list.length, 2);
      expect(list.get(0), 2);
      expect(list.get(1), 1);
    });

    test('insertAt method', () {
      //Arrange
      list.append(1);
      list.append(3);
      list.insertAt(1, item: 2);
      
      //Assert
      expect(list.length, 3);
      expect(list.get(0), 1);
      expect(list.get(1), 2);
      expect(list.get(2), 3);
    });

    test('get method', () {
      //Arrange
      list.append(1);
      list.append(2);
      list.append(3);
      
      //Assert
      expect(list.get(1), 2);
    });

    test('remove method', () {
      //Arrange
      list.append(1);
      list.append(2);
      list.append(3);
      list.remove(2);
      
      //Assert
      expect(list.length, 2);
      expect(list.get(0), 1);
      expect(list.get(1), 3);
    });

    test('removeAt method', () {
      //Arrange
      list.append(1);
      list.append(2);
      list.append(3);
      list.removeAt(1);
      
      //Assert
      expect(list.length, 2);
      expect(list.get(0), 1);
      expect(list.get(1), 3);
    });
  });
}
