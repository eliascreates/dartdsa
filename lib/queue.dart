class Queue<T> {
  int _length = 0;
  Node<T>? _head;
  Node<T>? _tail;

  void enqueue({required T item}) {
    _length++;

    final newNode = Node(value: item);

    if (_queueIsNotEmpty()) {
      _tail?.nextNode = newNode;
      _tail = newNode;
      return;
    }

    _head = newNode;
    _tail = newNode;
  }

  T dequeue() {
    if (_head case final head?) {
      _length--;
      _head = head.nextNode;
      if (_queueIsEmpty()) _tail = null;
      return head.value;
    }

    throw StateError('Queue is Empty');
  }

  T? peek() => this._head?.nextNode?.value;

  int get length => _length;

  bool _queueIsEmpty() => _head == null;
  bool _queueIsNotEmpty() => _head != null;

  @override
  String toString() {
    Node<T>? currentNode = _head;
    List<T?> output = [];

    for (int i = 0; i < _length; i++) {
      output.add(currentNode?.value);
      currentNode = currentNode?.nextNode;
    }

    return '$output';
  }

  // @override
  // String toString() => 'Queue(length: $_length, headNotEmpty: ${_queueIsNotEmpty()}, tailNotEmpty: ${_tail != null})';
}

class Node<T> {
  final T value;
  Node<T>? nextNode;

  Node({required this.value});
}
