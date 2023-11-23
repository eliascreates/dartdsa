import 'package:dsa/binary_search.dart' as dsa;

void main(List<String> arguments) {
  final List<int> numbers = [1, 14, 16, 23, 32, 45, 58, 60];

  final result = dsa.binarySearch(haystack: numbers, needle: 60);

  print(result ? 'Found' : 'Not Found');
}
