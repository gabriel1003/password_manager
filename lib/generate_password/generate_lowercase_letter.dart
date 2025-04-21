
import 'generate_random_number.dart';

class GenerateLowercaseLetter {
  String lowercaseLetter() {
    final lowercaseLetters = [
      'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
      'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    ];
    final randomNumberGenerator = GenerateRandomNumber();
    final randomIndex = randomNumberGenerator.generate();

    if (randomIndex >= 0 && randomIndex < lowercaseLetters.length) {
      return lowercaseLetters[randomIndex];
    } else {
      return '';
    }
  }
}