import 'dart:math' as math;

num twoCrystalBalls({required List<bool> breaks}) {
  final int jumpAmount = math.sqrt(breaks.length).floor();

  int i = jumpAmount;

  for (; i < breaks.length; i += jumpAmount) {
    if (breaks[i]) {
      break;
    }
  }

  i -= jumpAmount;

  for (int j = 0; j <= jumpAmount && i < breaks.length; j++, i++) {
    if (breaks[i]) {
      return i;
    }
  }
  return -1;
}
