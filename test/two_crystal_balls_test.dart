import 'package:dsa/two_crystal_balls.dart';
import 'package:test/test.dart';

void main() {
  late List<bool> breakpoints;

  group('Two Crystal Balls', () {
    test('Return an index of an exact breaking point when found', () async {
      //Arrange
      breakpoints = [
        ...List.generate(5, (_) => false),
        ...List.generate(5, (_) => true)
      ];

      //Act
      final result = twoCrystalBalls(breaks: breakpoints);

      //Assert
      expect(result, 5);
    });

    test('Return an -1 if there is no breaking point', () async {
      //Arrange
      breakpoints = [...List.generate(10, (_) => false)];

      //Act
      final result = twoCrystalBalls(breaks: breakpoints);

      //Assert
      expect(result, -1);
    });
  });
}
