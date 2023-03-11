import 'package:flutter/material.dart';

// Struttura e Funzionalità dei TextField
// ovvero dove vengono inseriti i Dati con Tastiera

class ModificaTextModel extends StatefulWidget {
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;

  const ModificaTextModel({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ModificaTextModelState createState() => _ModificaTextModelState();
}

class _ModificaTextModelState extends State<ModificaTextModel> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titolo
          Text(
            widget.label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),

          // Casella di Inserimento
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            maxLines: widget.maxLines,
            onChanged: widget.onChanged,
          ),
        ],
      );
}