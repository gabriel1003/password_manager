import 'generate_random_number.dart';

class GenerateCharacters {
  String generate() {
    final characters = [
      '!', '@', '#', '&', '*', '-', '+', '_', '/', ':', '?'
    ];
    final randomGenerator = GenerateRandomNumber();
    final index = randomGenerator.generate();
    if (index <= characters.length) {
      return characters[index];
    } else if (index > 10 || index < 21) {
      int value = index - 10;
      return characters[value];
    } else {
      int value = index - 15;
      return characters[value];
    }
  }
}
