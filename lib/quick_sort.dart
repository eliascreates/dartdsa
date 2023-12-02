void _quickSort(List<num> numbers, {required int low, required int high}) {
  if (low >= high) {
    return;
  }

  final pivotIdx = partition(numbers, low: low, high: high);
  _quickSort(numbers, low: low, high: pivotIdx - 1);
  _quickSort(numbers, low: pivotIdx + 1, high: high);
}

int partition(List<num> numbers, {required int low, required int high}) {
  num pivot = numbers[high];

  int index = low - 1;

  for (int i = low; i < high; ++i) {
    if (numbers[i] <= pivot) {
      index++;
      final temp = numbers[i];
      numbers[i] = numbers[index];
      numbers[index] = temp;
    }
  }

  index++;
  numbers[high] = numbers[index];
  numbers[index] = pivot;

  return index;
}

void quickSort(List<num> numbers) {
  _quickSort(numbers, low: 0, high: numbers.length - 1);
}


