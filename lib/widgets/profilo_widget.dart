import 'dart:io';

import 'package:flutter/material.dart';

class ProfiloWidget extends StatelessWidget {
  final String immagineProfilo;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfiloWidget({
    Key? key,
    required this.immagineProfilo,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          // Immagine Utente
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,

            // Icona (Blu) di Modifica in Basso a Dx
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  // Struttura dell' Immagine profilo
  // Inizialmente con Image dal Web (NetworkImage)
  // Successivamente con Image dalla Galleria (FileImage)

  Widget buildImage() {
    final image = immagineProfilo.contains('https://')
        ? NetworkImage(immagineProfilo)
        : FileImage(File(immagineProfilo));

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image as ImageProvider,
          fit: BoxFit.cover,
          width: 130,
          height: 130,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  // Struttura Icona (Blu) per Modificare Utente

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 2,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 16,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
