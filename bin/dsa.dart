import 'package:dsa/doubly_linked_list.dart' as dsa;

void main() {
  final doublyLinkedList = dsa.DoublyLinkedList<int>();

  doublyLinkedList
    ..append(20)
    ..append(40)
    ..append(60)
    ..append(80)
    ..append(100);

  print('Original List: $doublyLinkedList');
  print('Original List Length: ${doublyLinkedList.length}');

  doublyLinkedList.prepend(10);
  doublyLinkedList.insertAt(2, item: 30);
  doublyLinkedList.get(2);
  doublyLinkedList.removeAt(doublyLinkedList.length - 1);

  print('Modified List: $doublyLinkedList');
  print('Modified Length List: ${doublyLinkedList.length}');
}
