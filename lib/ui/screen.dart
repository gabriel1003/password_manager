import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_manager/generate_password/password.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<Screen> {
  String _generatedPassword = '';
  final Password _generatorPassword = Password();

  @override
  void initState() {
    super.initState();
    _generateNewPassword();
  }

  void _generateNewPassword() {
    setState(() {
      _generatedPassword = _generatorPassword.generatePassword();
    });
  }

  void _copyToClipboard() {
    if (_generatedPassword.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: _generatedPassword));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Senha copiada para a área de transferência!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de senhas'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ben-Vidos ao seu melhor gerador de senhas!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'Esta é a sua senha: ',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            SelectableText(
              _generatedPassword,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'monospace',
                letterSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.copy),
              label: const Text('Copiar senha'),
              onPressed: _copyToClipboard,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),)
          ],
        ),
      ),),
    );
  }
}