class BinaryNode<T> {
  final T value;
  BinaryNode<T>? left;
  BinaryNode<T>? right;

  BinaryNode({required this.value});

  @override
  String toString() => 'BinaryNode(value: $value)';
}