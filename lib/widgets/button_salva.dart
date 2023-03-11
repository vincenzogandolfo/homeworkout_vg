import 'package:flutter/material.dart';

// Pulsante che Salva i dati nel Database
// e li trasferisce alla schermata ProfilePage

class ButtonSalva extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonSalva({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        onPressed: onClicked,
        child: Text(text),
      );
}
