import 'package:dsa/linear_search.dart';
import 'package:test/test.dart';

void main() {
  late List<num> numbers;

  setUp(() {
    numbers = [1, 4, 8, 5, 9.5, 12, 160, 54.5];
  });

  group('Linear Search', () {
    test('Return [true] if element is found', () {
      //Arrange
      const testNumber = 9.5;

      //Act
      final result = linearSearch(haystack: numbers, needle: testNumber);

      //Assert
      expect(result, true);
    });

    test('Return [false] if element is not found', () {
      //Arrange
      const testNumber = 55;

      //Act
      final result = linearSearch(haystack: numbers, needle: testNumber);

      //Assert
      expect(result, false);
    });
  });
}
