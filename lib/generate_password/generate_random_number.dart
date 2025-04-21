import 'dart:math';

class GenerateRandomNumber {

    int generate() {
        final random = Random();
        return random.nextInt(26);
    }
}