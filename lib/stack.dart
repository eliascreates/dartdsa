import 'dart:math' as math;

class Stack<T> {
  int _length = 0;

  Node<T>? _head;

  void push({required T item}) {
    final newNode = Node(item);

    _length++;

    if (_head == null) {
      _head = newNode;
      return;
    }

    newNode.previous = _head;
    _head = newNode;
  }

  T? pop() {
    _length = math.max(0, _length - 1);
    if (_head case final head?) {
      final headValue = head.value;
      _head = head.previous;
      return headValue;
    }

    return _head?.value;
  }

  T? peek() => _head?.value;

  int get length => _length;

  @override
  String toString() => 'Stack(length: $length, headNotEmpty: ${_head != null})';
}

class Node<T> {
  final T value;
  Node<T>? previous;

  Node(this.value);
}
