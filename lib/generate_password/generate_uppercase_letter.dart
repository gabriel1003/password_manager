import 'generate_random_number.dart';

class GenerateUppercaseLetter {
  String letterUppercase() {
    final uppercaseLetters = [
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
        'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
    ];
    final randomNumberGenerator = GenerateRandomNumber();
    final index = randomNumberGenerator.generate();

    if (index >= 0 && index < uppercaseLetters.length) {
        return uppercaseLetters[index];
    } else {
        return '';
    }
  }
}
