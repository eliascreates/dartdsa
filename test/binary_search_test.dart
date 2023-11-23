import 'package:dsa/binary_search.dart';
import 'package:test/test.dart';

void main() {
  late List<num> numbers;

  setUp(() {
    numbers = [21, 32, 43, 54, 65, 76, 87, 98, 109];
  });

  group('Binary Search', () {
    test('Return true if value is found', () async {
      //Arrange
      const testNumber = 98;

      //Act
      final result = binarySearch(haystack: numbers, needle: testNumber);

      //Assert
      expect(result, true);
    });
    test('Return true if value is not found', () async {
      //Arrange
      const testNumber = 120;

      //Act
      final result = binarySearch(haystack: numbers, needle: testNumber);

      //Assert
      expect(result, false);
    });
  });
}
