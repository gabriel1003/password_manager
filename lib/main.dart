import 'package:flutter/cupertino.dart';
import 'package:password_manager/ui/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return  CupertinoApp(
      title: 'gerador de senhas',
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}