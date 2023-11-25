import 'package:dsa/bubble_sort.dart' as dsa;

void main(List<String> arguments) {
  final List<int> numbers = [32, 98, 109, 21, 43, 65, 76, 54, 87, 22, 11, 9, 4];

  print('Unsorted array: $numbers ');
  dsa.bubbleSort(numbers);
  print('Sorted array  : $numbers ');
}
