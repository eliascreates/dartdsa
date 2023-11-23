bool linearSearch({required List<num> haystack, required num needle}) {
  for (int i = 0; i < haystack.length; i++) {
    if (haystack[i] == needle) {
      return true;
    }
  }
  return false;
}
