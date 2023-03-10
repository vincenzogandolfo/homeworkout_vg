import 'package:flutter/material.dart';

class TypeButtonModel extends StatelessWidget {
  final String tipo;
  const TypeButtonModel(this.tipo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextButton(
          onPressed: () {},
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
