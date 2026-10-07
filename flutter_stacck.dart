void main() {
  Stack<String> stack = Stack<String>();

  stack.push('Page A');
  stack.push('Page B');
  stack.push('Page C');

  print('Stack: $stack');
  print('Top: ${stack.peek}');

  print('Pop: ${stack.pop()}');
  print('After pop: $stack');
}

class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }

    return _items.removeLast();
  }

  T get peek {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }

    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;

  @override
  String toString() => _items.toString();
}
