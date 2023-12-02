import 'package:dsa/bubble_sort.dart';
import 'package:test/test.dart';

void main() {
  late List<num> numbers;

  setUp(() {
    numbers = [32, 98, 21, 43, 65, 76, 54, 87, 109];
  });

  group('Bubble Sort -', () {
    test('Sort Elements of a list', () {
      //Arrange
      const sortedArray = [21, 32, 43, 54, 65, 76, 87, 98, 109];

      //Act
      bubbleSort(numbers);

      //Assert
      expect(sortedArray, numbers);
    });
  });
}
