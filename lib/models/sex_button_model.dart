import 'package:flutter/material.dart';

class SexButtonModel extends StatelessWidget {
  final String tipo;
  final Widget sexPage;

  const SexButtonModel(this.tipo, this.sexPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => sexPage,
              ),
            );
          },
          child: Text(
            tipo,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
