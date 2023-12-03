abstract interface class LinkedList<T> {
  int get length;
  T? insertAt(int index, {required T item});
  T? remove(T item);
  T? removeAt(int index);
  void append(T item);
  void prepend(T item);
  T? get(int index);
}

class Node<T> {
  final T value;
  Node<T>? prev;
  Node<T>? next;

  Node({required this.value});
}

class DoublyLinkedList<T> implements LinkedList<T> {
  int _length = 0;
  Node<T>? _head;
  Node<T>? _tail;

  @override
  void append(T item) {
    _length++;

    final newNode = Node<T>(value: item);

    if (_head != null) {
      newNode.prev = _tail;
      _tail?.next = newNode;

      _tail = newNode;
      return;
    }

    _head ??= _tail = newNode;
  }

  @override
  void prepend(T item) {
    final newNode = Node(value: item);
    _length++;
    if (_head != null) {
      newNode.next = _head;
      _head?.prev = newNode;
      _head = newNode;
      return;
    }

    _head ??= _tail = newNode;
  }

  @override
  T? get(int index) {
    final currentNode = _getAt(index);

    return currentNode?.value;
  }

  @override
  T? insertAt(int index, {required T item}) {
    final newNode = Node(value: item);
    if (index > length || index < 0) {
      throw StateError('Out of bounds');
    } else if (index == _length) {
      append(item);
      return newNode.value;
    } else if (index == 0) {
      prepend(item);
      return newNode.value;
    }

    _length++;

    Node<T>? currentNode = this._head;
    for (int i = 0; currentNode != null && i < index; ++i) {
      currentNode = currentNode.next;
    }

    newNode.next = currentNode;
    newNode.prev = currentNode?.prev;

    currentNode?.prev?.next = newNode;
    currentNode?.prev = newNode;

    return newNode.value;
  }

  @override
  int get length => _length;

  @override
  T? remove(T item) {
    Node<T>? currentNode = this._head;

    for (int i = 0; currentNode != null && i < _length; ++i) {
      if (currentNode.value == item) {
        break;
      }
      currentNode = currentNode.next;
    }

    if (currentNode == null) {
      throw StateError('element does not exist in this list');
    }

    _length--;

    final value = currentNode.value;

    if (currentNode.prev == null) {
      _head = currentNode.next;
      currentNode.next = null;
      _head?.prev = null;
      return value;
    }

    if (currentNode.next == null) {
      _tail = currentNode.prev;
      currentNode.prev = null;
      _tail?.next = null;
      return value;
    }

    currentNode.prev?.next = currentNode.next;
    currentNode.next?.prev = currentNode.prev;

    currentNode.next = null;
    currentNode.prev = null;

    return value;
  }

  @override
  T? removeAt(int index) {
    final currentNode = _getAt(index);

    if (currentNode == null) {
      throw StateError('Value does not exist');
    }

    _length--;

    final value = currentNode.value;

    if (currentNode.prev == null) {
      _head = currentNode.next;
      currentNode.next = null;
      _head?.prev = null;
      return value;
    }

    if (currentNode.next == null) {
      _tail = currentNode.prev;
      currentNode.prev = null;
      _tail?.next = null;
      return value;
    }

    currentNode.prev?.next = currentNode.next;
    currentNode.next?.prev = currentNode.prev;

    currentNode.next = null;
    currentNode.prev = null;

    return value;
  }

  Node<T>? _getAt(int index) {
    if (index >= _length || index < 0) {
      throw StateError('Went off the list');
    }

    Node<T>? currentNode = _head;

    for (int i = 0; i < index; ++i) {
      currentNode = currentNode?.next;
    }

    return currentNode;
  }

  @override
  String toString() {
    Node<T>? currentNode = _head;
    List<T?> output = [];

    for (int i = 0; i < _length; i++) {
      output.add(currentNode?.value);
      currentNode = currentNode?.next;
    }

    return '$output';
  }
}
