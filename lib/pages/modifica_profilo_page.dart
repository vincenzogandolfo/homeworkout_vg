import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homeworkout_vg/models/modifica_text_model.dart';
import 'package:homeworkout_vg/widgets/button_salva.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../models/user_model.dart';
import '../utils/user_preferences.dart';
import '../widgets/profilo_widget.dart';

// Schermata dove Modificare e Salvare i Dati Utente
class ModificaProfiloPage extends StatefulWidget {
  const ModificaProfiloPage({super.key});

  @override
  _ModificaProfiloPageState createState() => _ModificaProfiloPageState();
}

class _ModificaProfiloPageState extends State<ModificaProfiloPage> {
  late User user;

  @override
  void initState() {
    super.initState();

    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 12),

                  // Inserimento Immagine dalla Galleria

                  ProfiloWidget(
                    immagineProfilo: user.immagineUtente,
                    isEdit: true,
                    onClicked: () async {
                      final image = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (image == null) return;
                      final directory =
                          await getApplicationDocumentsDirectory();
                      final name = basename(image.path);
                      final imageFile = File('${directory.path}/$name');
                      final newImage =
                          await File(image.path).copy(imageFile.path);
                      setState(() =>
                          user = user.copy(immagineUtente: newImage.path));
                    },
                  ),
                  const SizedBox(height: 24),

                  // Inserimento Dati Utente con Tastiera

                  ModificaTextModel(
                    label: 'Nome e Cognome',
                    text: user.nome,
                    onChanged: (nome) => user = user.copy(nome: nome),
                  ),
                  const SizedBox(height: 24),
                  ModificaTextModel(
                    label: 'Data inizio',
                    text: user.dataInizio,
                    onChanged: (dataInizio) =>
                        user = user.copy(dataInizio: dataInizio),
                  ),
                  const SizedBox(height: 24),
                  ModificaTextModel(
                    label: 'Peso iniziale',
                    text: user.pesoIniziale,
                    onChanged: (pesoIniziale) =>
                        user = user.copy(pesoIniziale: pesoIniziale),
                  ),
                  const SizedBox(height: 24),

                  // Pulsante che Salva i dati nel Database
                  // e li trasferisce alla schermata ProfilePage

                  ButtonSalva(
                    text: 'Salva',
                    onClicked: () {
                      UserPreferences.setUser(user);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
