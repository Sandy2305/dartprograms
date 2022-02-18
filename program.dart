import "dart:io";

void main() {
  while (true) {
    stdout.write('rock,paper or scissors? (r/p/s)');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      print('selected: $input');
    } else if (input == 'q') {
      break;
    } else {
      print('invalid');
    }
  }
}
