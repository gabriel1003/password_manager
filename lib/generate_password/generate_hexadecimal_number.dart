import 'generate_random_number.dart';

class GenerateHexadecimalNumber {

    String generateHexadecimalNumber() {
        final randomNumberGenerator = GenerateRandomNumber();
        final randomNumber = 100 + randomNumberGenerator.generate();
        final hexadecimalValue = randomNumber.toRadixString(16).toUpperCase();
        return hexadecimalValue;
}
}
