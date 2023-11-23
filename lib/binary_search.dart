bool binarySearch({required List<num> haystack, required num needle}) {
  int low = 0, high = haystack.length;

  do {
    final mid = ((low + (high - 1)) / 2).floor();

    if (haystack[mid] == needle) {
      return true;
    } else if (needle > haystack[mid]) {
      low = mid + 1;
    } else {
      high = mid;
    }
  } while (low < high);
  return false;
}
