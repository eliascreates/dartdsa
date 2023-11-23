import 'package:dsa/linear_search.dart' as dsa;

void main(List<String> arguments) {
  final List<int> numbers = [1, 4, 6, 3, 2, 5, 8, 10];

  final result = dsa.linearSearch(haystack: numbers, needle: 7);

  print(result ? 'Found': 'Not Found');
}
