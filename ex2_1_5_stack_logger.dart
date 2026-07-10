mixin Loggable {
  void log(String msg){
    DateTime now = DateTime.now();
    print("[$now] LOG: $msg");
  }
}

class Stack<T> with Loggable{
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log("Push element: $element");
  }
  
  T pop() {
    var removeElement = _storage.removeLast();
    log('Pop : ${removeElement}');
    return removeElement;
  }

  void display() {
    print(_storage);
  }
}

void main() {
  var stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(9);
 
  stack.pop();
  stack.display();
}