import 'dart:io';
import "dart:math";

void main() {
  var list = ['📄','✂','🥌'];
  var round1 = getRandomElement(list);
  var round2 = getRandomElement(list);
  var round3 = getRandomElement(list);
  var userscore=0;
  var botscore=0;

  print('Round 1:');
  stdout.writeln("Papel, Gunting, Bato! What's your Pick? ");
  String input1 = stdin.readLineSync().toLowerCase();
  if(input1=='papel'&&round1=='📄'||input1=='gunting'&&round1=='✂'||input1=='bato'&&round1=='🥌'){
    print('Bot: ' + round1 + " - It's a draw!");
  }
  else if(input1=='papel'&&round1=='✂'||input1=='gunting'&&round1=='🥌'||input1=='bato'&&round1=='📄'){
    print('Bot: ' + round1 + " - You Lose!");
    botscore++;
  }
  else{
    print('Bot: ' + round1 + " - You Win!");
    userscore++;
  }

  print('');
  print('Round 2:');
  stdout.writeln("Papel, Gunting, Bato! What's your Pick? ");
  String input2 = stdin.readLineSync().toLowerCase();
  if(input2=='papel'&&round2=='📄'||input2=='gunting'&&round2=='✂'||input2=='bato'&&round2=='🥌'){
    print('Bot: ' + round2 + " - It's a draw!");
  }
  else if(input2=='papel'&&round2=='✂'||input2=='gunting'&&round2=='🥌'||input2=='bato'&&round2=='📄'){
    print('Bot: ' + round2 + " - You Lose!");
    botscore++;
  }
  else{
    print('Bot: ' + round2 + " - You Win!");
    userscore++;
  }

  print('');
  print('Round 3:');
  stdout.writeln("Papel, Gunting, Bato! What's your Pick? ");
  String input3 = stdin.readLineSync().toLowerCase();
  if(input3=='papel'&&round3=='📄'||input3=='gunting'&&round3=='✂'||input3=='bato'&&round3=='🥌'){
    print('Bot: ' + round3 + " - It's a draw!");
  }
  else if(input3=='papel'&&round3=='✂'||input3=='gunting'&&round3=='🥌'||input3=='bato'&&round3=='📄'){
    print('Bot: ' + round3 + " - You Lose!");
    botscore++;
  }
  else{
    print('Bot: ' + round3 + " - You Win!");
    userscore++;
  }

  print('');
  if(userscore==botscore){
    print("It's a draw! Bot: $botscore, You: $userscore");
  }
  else if(userscore<botscore){
    print("You lose! Bot: $botscore, You: $userscore");
  }
  else{
    print("You win! Bot: $botscore, You: $userscore");
  }
}

T getRandomElement<T>(List<T> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}
