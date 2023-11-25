void bubbleSort(List<num> numbers) {
  // if (numbers.isEmpty) return;

  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length - 1 - i; j++) {
      if (numbers[j] > numbers[j + 1]) {
        final temp = numbers[j + 1];
        numbers[j + 1] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
}
