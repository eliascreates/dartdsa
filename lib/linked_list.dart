abstract interface class LinkedList<T> {
  int get length;
  T? insertAt(T item);
  T? remove(T item);
  T? removeAt(int index);
  void append(T item);
  void prepend(T item);
  T? get(int index);
}
