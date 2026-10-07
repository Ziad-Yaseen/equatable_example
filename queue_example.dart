import 'dart:collection';

void main() {
  Queue<String> queue = Queue<String>();

  queue.add('Customer 1');
  queue.add('Customer 2');
  queue.add('Customer 3');

  print('Queue: $queue');
  print('First: ${queue.first}');

  final served = queue.removeFirst();

  print('Served: $served');
  print('Remaining: $queue');
  
}
