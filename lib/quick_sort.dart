void qs(List<num> numbers, {required int low, required int high}) {
  if (low >= high) {
    return;
  }

  final pivotIdx = partition(numbers, low: low, high: high);

  qs(numbers, low: low, high: pivotIdx - 1);
  qs(numbers, low: pivotIdx + 1, high: high);
}

int partition(List<num> numbers, {required int low, required int high}) {
  num pivot = numbers[high];

  int idx = low - 1;

  for (int i = low; i < high; ++i) {
    if (numbers[i] < pivot) {
      idx++;
      final temp = numbers[i];
      numbers[i] = numbers[idx];
      numbers[idx] = temp;
    }
  }

  idx++;
  numbers[high] = numbers[idx];
  numbers[idx] = pivot;

  return idx;
}

void quickSort(List<num> numbers) {
  qs(numbers, low: 0, high: numbers.length - 1);
}
