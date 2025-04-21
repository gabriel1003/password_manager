import 'generate_hexadecimal_number.dart';
import 'generate_lowercase_letter.dart';
import 'generate_uppercase_letter.dart';
import 'generate_characters.dart';

class Password {
  String generatePassword() {
    final hexadecimalNumber = GenerateHexadecimalNumber();
    final hx1 = hexadecimalNumber.generateHexadecimalNumber();
    final hx2 = hexadecimalNumber.generateHexadecimalNumber();
    final hx3 = hexadecimalNumber.generateHexadecimalNumber();
    final uppercase = GenerateUppercaseLetter();
    final uL1 = uppercase.letterUppercase();
    final uL2 = uppercase.letterUppercase();
    final lowercase = GenerateLowercaseLetter();
    final l1 = lowercase.lowercaseLetter();
    final l2 = lowercase.lowercaseLetter();
    final character = GenerateCharacters();
    final char1 = character.generate();
    final char2 = character.generate();
    final char3 = character.generate();
    return uL1 + l1 + char1 + hx1 + char2 + hx2 + char3 + uL2 + l2 + hx3;
  }
}