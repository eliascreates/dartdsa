import 'package:dsa/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack Tests', () {
    late Stack<int> stack;

    setUp(() {
      stack = Stack<int>();
    });

    group('Stack Data Structure -', () {
      test('When push is called, add item to the stack. Increment length', () {
        //Arrange
        const testLength = 3;

        //Act
        stack.push(item: 1);
        stack.push(item: 2);
        stack.push(item: 3);

        //Assert
        expect(stack.length, testLength);
      });

      group('When pop method is called - ', () {
        test('on stack with data, should return value of the removed item', () {
          //Arrange
          stack.push(item: 1);
          stack.push(item: 2);
          stack.push(item: 3);

          //Act
          final result = stack.pop();
          expect(result, 3);
          expect(stack.length, 2);
        });
        test('on an empty stack, should show null', () {
          //Act
          final result = stack.pop();

          //Assert
          expect(result, isNull);
          expect(stack.length, 0);
        });
      });

      group('When peek method is called -', () {
        test('on a stack with data, should return the last node value', () {
          //Arrange
          stack.push(item: 42);
          const testPeek = 42;

          //Act
          final result = stack.peek();

          //Assert
          expect(result, testPeek);
        });
        test('on an empty stack, should return a null', () {
          //Act
          final result = stack.peek();

          //Assert
          expect(result, isNull);
        });
      });
    });
  });
}
