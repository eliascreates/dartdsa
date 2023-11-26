import 'dart:math';
import 'package:dsa/maze_solver.dart';
import 'package:test/test.dart';

void main() {
  late List<String> maze;

  setUp(() => maze = []);

  group('When Maze Solver is called - ', () {
    test(
        'should return a solution path when if it can find it from Start to End',
        () {
      //Arrange
      maze = [
        '#############',
        '            #',
        '# ####### # #',
        '# #       # #',
        '# # ####### #',
        '#   #       #',
        '##### #######',
        '#           #',
        '# ####### # #',
        '#       #    ',
        '#############',
      ];

      const Point<int> start = Point(0, 1);
      const Point<int> end = Point(11, 9);
      const String wall = '#';

      //Act
      final List<Point<int>> result = solveMaze(
        maze: maze,
        wall: wall,
        start: start,
        end: end,
      );

      // Assert
      expect(result.isNotEmpty, isTrue);
      expect(result.first, start);
      expect(result.last, end);
    });

    test('should return [] when there is no valid path from Start to End', () {
      //Arrange
      maze = [
        '#############',
        '            #',
        '# ########  #',
        '# #         #',
        '# ###########',
        '# #          ',
        '# ###########',
      ];

      const Point<int> start = Point(0, 1);
      const Point<int> end = Point(11, 5);
      const String wall = '#';

      //Act
      final List<Point<int>> result = solveMaze(
        maze: maze,
        wall: wall,
        start: start,
        end: end,
      );

      // Assert
      expect(result.isEmpty, isTrue);
    });
  });
}
