import 'dart:math';

const directions = [
  Point(0, -1),
  Point(0, 1),
  Point(-1, 0),
  Point(1, 0),
];

bool walk({
  required List<String> maze,
  required String wall,
  required Point<int> curr,
  required Point<int> end,
  required List<List<bool>> seen,
  required List<Point> path,
}) {
  if (_isOffTheMap(curr, maze)) return false;

  if (maze[curr.y][curr.x] == wall) return false;

  if (curr == end) {
    path.add(curr);
    return true;
  }

  if (seen[curr.y][curr.x]) return false;

  seen[curr.y][curr.x] = true;
  path.add(curr);

  for (int i = 0; i < directions.length; i++) {
    final dirPath = directions[i];

    if (walk(
      maze: maze,
      wall: wall,
      curr: curr + dirPath,
      end: end,
      seen: seen,
      path: path,
    )) {
      return true;
    }
  }
  path.removeLast();
  return false;
}

List<Point<int>> solveMaze({
  required List<String> maze,
  required String wall,
  required Point<int> start,
  required Point<int> end,
}) {
  final List<List<bool>> seen = [];
  final List<Point<int>> path = [];

  for (int i = 0; i < maze.length; i++) {
    seen.add(List.filled(maze[0].length, false));
  }
  walk(maze: maze, wall: wall, curr: start, end: end, seen: seen, path: path);

  return path;
}

bool _isOffTheMap(Point<int> curr, List<String> maze) {
  return curr.x < 0 ||
      curr.x >= maze[0].length ||
      curr.y < 0 ||
      curr.y >= maze.length;
}
