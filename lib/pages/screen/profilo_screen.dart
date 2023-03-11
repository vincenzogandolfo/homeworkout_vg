import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import '../../utils/user_preferences.dart';
import '../../widgets/profilo_widget.dart';
import '../modifica_profilo_page.dart';

// Schermata Principale Utente
// mostra immagine e dati inseriti
// dopo click sul tasto "Salva"

class Profilo extends StatefulWidget {
  const Profilo({Key? key}) : super(key: key);

  @override
  State<Profilo> createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Mostra l'Immagine scelta dalla Galleria

          ProfiloWidget(
            immagineProfilo: user.immagineUtente,
            onClicked: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ModificaProfiloPage(),
                ),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 24),

          // Mostra i Dati Utente inseriti

          buildUser(user),
        ],
      ),
    );
  }

  Widget buildUser(User user) => Column(
        children: [
          Text(
            user.nome,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(height: 4),
          Text(
            user.dataInizio,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          Text(
            user.pesoIniziale,
            style: const TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      );
}
