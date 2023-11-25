import 'package:dsa/queue.dart';
import 'package:test/test.dart';

void main() {
  late Queue<int> queue;

  setUp(() {
    queue = Queue<int>();
  });

  group('Queue Data Structure', () {
    test('When enqueue is called the length of the queue should be 1', () {
      //Arrange
      const testlength = 1;
      //Act
      queue.enqueue(item: 5);

      //Assert
      expect(queue.length, testlength);
      expect(queue.peek(), null);
    });

    group('When Dequeue method is called -', () {
      test('on an empty queue, StateError should be thrown', () {
        //Act & Assert
        final result = queue.dequeue;

        expect(() => result(), throwsA(TypeMatcher<StateError>()));
      });

      test('on a queue with data, Should return value of the node removed', () {
        //Arrange
        queue.enqueue(item: 5);
        const testValue = 5;

        //Act
        final result = queue.dequeue();

        //Assert
        expect(result, testValue);
      });
    });

    group('When Peek method is called -', () {
      test('on queue with data it should return value of next node', () {
        //Arrange
        queue.enqueue(item: 5);
        queue.enqueue(item: 8);

        const testPeek = 8;

        //Act
        final result = queue.peek();

        //Assert
        expect(result, testPeek);
      });

      test('on an empty queue, should return null', () {
        //Act
        final result = queue.peek();

        //Assert
        expect(result, isNull);
      });
    });

    group('When length getter is accessed - ', () {
      test('on an empty queue, should return 0', () {
        //Arrange
        const testLength = 0;

        //Act
        final result = queue.length;

        //Assert
        expect(result, testLength);
      });
      test('on a queue with a signle element, should return 1', () {
        //Arrange
        queue.enqueue(item: 5);
        const testLength = 1;

        //Act
        final result = queue.length;

        //Assert
        expect(result, testLength);
      });
    });
  });
}
