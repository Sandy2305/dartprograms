import "dart:io";
import "dart:math";

enum Move { rock, paper, scissors }
void main() {
  final rng = Random();
  while (true) {
    stdout.write('rock,paper or scissors? (r/p/s)');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playermove;
      if (input == 'r') {
        playermove = Move.rock;
      } else if (input == 'p') {
        playermove = Move.paper;
      } else {
        playermove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      if (playermove == aiMove) {
        print('draw');
      } else if (playermove == Move.rock && aiMove == Move.scissors ||
          playermove == Move.paper && aiMove == Move.rock ||
          playermove == Move.scissors && aiMove == Move.paper) {
        print('win');
      } else {
        print('lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('invalid');
    }
  }
}
