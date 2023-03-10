import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class CollegamentoModel extends StatelessWidget {
  final String nomeCollegamento;
  final IconData iconaCollegamento;
  final dynamic tipoCollegamento;

  const CollegamentoModel({
    super.key,
    required this.nomeCollegamento,
    required this.iconaCollegamento,
    required this.tipoCollegamento,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
          color: Colors.greenAccent,
          child: ListTile(
            leading: Icon(
              //Icons.mail_outline,
              iconaCollegamento,
              color: Colors.white,
              size: 36,
            ),
            title: Text(
              nomeCollegamento,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
      onTap: () {
        launchUrl(tipoCollegamento);
      },
    );
  }
}
