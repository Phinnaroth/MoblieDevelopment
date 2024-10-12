bool isBalanced(String input) {
  Map<String, String> pairs = {
    '[': ']',
    '{': '}',
    '(': ')',
  };

  List<String> opening = pairs.keys.toList();
  List<String> closing = pairs.values.toList();

  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (opening.contains(char)) {
      stack.add(char);
    } else if (closing.contains(char)) {
      if (stack.isEmpty) {
        return false; 
      }

      String popped = stack.removeLast();
      if (pairs[popped] != char) {
        return false; 
      }
    }
  }

  return stack.isEmpty;
}

String check(String input) {
  if (isBalanced(input)) {
    return 'Balanced';
  } else {
    return 'Not balanced';
  }
}

void main() {
  String i1 = '{what is (42)}?'; 
  String i2 = '[text}';         
  String i3 = '{[[(a)b]c]d}';   
  print('${i1}: ${check(i1)}');
  print('${i2}: ${check(i2)}');
  print('${i3}: ${check(i3)}');
}