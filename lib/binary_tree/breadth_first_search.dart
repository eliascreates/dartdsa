import 'package:dsa/binary_tree/binary_node.dart';
import 'package:dsa/queue.dart';

bool breadthFirstSearch({
  required BinaryNode<num> head,
  required num needle,
}) {
  final q = Queue<BinaryNode<num>?>();
  q.enqueue(item: head);
  while (q.length > 0) {
    final node = q.dequeue() as BinaryNode<num>;

    if (node.value == needle) {
      return true;
    }
    if (node.left case final leftNode?) q.enqueue(item: leftNode);
    if (node.right case final rightNode?) q.enqueue(item: rightNode);
  }
  return false;
}
