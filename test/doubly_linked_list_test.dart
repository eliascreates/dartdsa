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

    group('insertAt method - ', () {
      test('insertAt method - in bounds', () {
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

      test('insertAt method - out of bounds', () {
        // Arrange
        list.append(1);

        // Act & Assert
        expect(() => list.insertAt(2, item: 2), throwsA(isA<StateError>()));
        expect(() => list.insertAt(-1, item: 2), throwsA(isA<StateError>()));
      });
    });

    group('get method -', () {
      test('get method', () {
        //Arrange
        list.append(1);
        list.append(2);
        list.append(3);

        //Assert
        expect(list.get(1), 2);
      });
    });

    group('remove method - ', () {
      test('element in list', () {
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

      test('removing the last element', () {
        // Arrange
        list.append(1);

        // Act
        final removed = list.remove(1);

        // Assert
        expect(list.length, 0);
        expect(removed, 1);
      });

      test('element not in list', () {
        // Arrange
        list.append(1);
        list.append(2);

        // Act & Assert
        expect(() => list.remove(3), throwsA(isA<StateError>()));
      });
    });

    group('removeAt method -', () {
      test('index within bounds', () {
        //Arrange
        list.append(1);
        list.append(2);
        list.append(3);

        //Act
        list.removeAt(1);

        //Assert
        expect(list.length, 2);
        expect(list.get(0), 1);
        expect(list.get(1), 3);
      });

      test('removing the last element', () {
        // Arrange
        list.append(1);

        // Act
        final removed = list.removeAt(0);

        // Assert
        expect(list.length, 0);
        expect(removed, 1);
      });

      test('index out of bounds', () {
        // Arrange
        list.append(1);

        // Act & Assert
        expect(() => list.removeAt(1), throwsA(isA<StateError>()));
        expect(() => list.removeAt(-1), throwsA(isA<StateError>()));
      });
    });

    test('toString method', () {
      // Arrange
      list.append(1);
      list.append(2);

      // Act
      final result = list.toString();

      // Assert
      expect(result, '[1, 2]');
    });
  });
}
