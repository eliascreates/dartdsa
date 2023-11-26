import 'dart:math';
import 'package:dsa/maze_solver.dart' as dsa;

void main() {
  // Define the maze
  List<String> maze = [
    '##########',
    '         #',
    '#   ##   #',
    '#   ##   #',
    '#         ',
    '##########',
  ];

  Point<int> start = Point(0, 1);
  Point<int> end = Point(9, 4);

  String wall = '#';

  List<Point<int>> solutionPath = dsa.solveMaze(
    maze: maze,
    wall: wall,
    start: start,
    end: end,
  );
  print(solutionPath);
}
