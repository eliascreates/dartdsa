import 'package:dsa/quick_sort.dart' as dsa;

void main() {

  List<int> arr = [7, 2, 1, 6, 8, 5, 3, 4];
  print('Original Array: $arr');

  dsa.quickSort(arr);

  print('Sorted Array: $arr');
}
