import 'package:dsa/two_crystal_balls.dart' as dsa;

void main(List<String> arguments) {
  final List<bool> breakpoints = [
    false,
    false,
    false,
    false,
    false,
    false,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];

  final result = dsa.twoCrystalBalls(breaks: breakpoints);

  print('It starts to break on floor: $result');
}
