import 'package:dsa/quick_sort.dart';
import 'package:test/test.dart';

void main() {
  group('Quick Sort -', () {
    late List<num> unsortedArray;

    setUp(() {
      unsortedArray = [8, 3, 1, 7, 0, 10, 2, 5, 4, 6];
    });

    test('Sort Elements of a list', () {
      // Arrange
      List<num> sortedArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 10];

      // Act
      quickSort(unsortedArray);

      // Assert
      expect(unsortedArray, sortedArray);

      print('Sorted Array: $unsortedArray');
    });
  });
}
