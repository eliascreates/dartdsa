import 'package:dsa/queue.dart' as dsa;

void main(List<String> arguments) {
  var queue = dsa.Queue<String>();

  queue.enqueue(item: 'I');
  queue.enqueue(item: 'Learned');
  queue.enqueue(item: 'Queues');

  print('Queue: $queue');
  print('Dequeue: ${queue.dequeue()}');
  print('Queue after dequeue: $queue');
  print('Peek: ${queue.peek()}');

  print('Is empty: ${queue.length == 0}');
  print('Queue length: ${queue.length}');
}
