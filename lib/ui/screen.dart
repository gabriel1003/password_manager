import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_manager/generate_password/password.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenPasswordState createState() => _ScreenPasswordState();
}

class _ScreenPasswordState extends State<Screen> {
  final FocusNode _copyButtonFocusNode = FocusNode();
  String _generatedPassword = '';
  final Password _passwordGenerator = Password();

  @override
  void initState() {
    super.initState();
    _generateNewPassword();
  }

  @override
  void dispose() {
    _copyButtonFocusNode.dispose();
    super.dispose();
  }

  void _generateNewPassword() {
    setState(() {
      _generatedPassword = _passwordGenerator.generatePassword();
    });
  }

  void _copytoClipboard() {
    if (_generatedPassword.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: _generatedPassword)).then((_) {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('Sucesso'),
            content: const Text('Senha copiada para a área de transferência'),
            actions: <CupertinoDialogAction>[
              CupertinoDialogAction(
                child: const Text('ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ],
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Gerador de senhas'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Olá sejá bem-vindo ao seu gerador de senhas',
                  style: TextStyle(
                    fontSize: 18,
                    color: CupertinoColors.systemGrey.resolveFrom(context),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: SelectableText(
                  _generatedPassword.isEmpty ? 'Sua senha aparecera aqui' : _generatedPassword,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.label.resolveFrom(context),
                  ),
                  textAlign: TextAlign.center,
                ),
                ),
                CupertinoButton.filled(
                  focusNode: _copyButtonFocusNode,
                  child: const Text('copiar senha'),
                  onPressed: _generatedPassword.isEmpty ? null : _copytoClipboard,
                ),
            ],
          ),
          ),
      ),
    );
  }
}