import 'dart:math';

class GenerateRandomNumber {

    int generate() {
        final random = Random();
        return 100 + random.nextInt(26 + 1);
    }
}