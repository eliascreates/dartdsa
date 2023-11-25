import 'package:dsa/stack.dart' as dsa;

void main(List<String> arguments) {
  final stack = dsa.Stack<int>();

  stack.push(item:1);
  stack.push(item:2);
  stack.push(item:3);

  print('Stack       : $stack');
  print('Pop         : ${stack.pop()}');
  print('After pop   : $stack');
  
  print('\n');

  print('Peek        : ${stack.peek()}');
  print('Pop         : ${stack.pop()}');
  print('Pop         : ${stack.pop()}');
  print('After pop   : $stack');

  print('Is empty    : ${stack.length == 0}');
  print('Stack length: ${stack.length}');
}
