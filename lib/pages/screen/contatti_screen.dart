import 'package:flutter/material.dart';
import 'package:homeworkout_vg/models/collegamento_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeworkout_vg/models/top_screen_model.dart';

class Contatti extends StatelessWidget {
  const Contatti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri mail = Uri.parse('mailto:vincenzo.gandolfo7@gmail.com');
    final Uri whatsApp = Uri.parse('whatsapp://send?phone=393471731213');
    final Uri amazon = Uri.parse(
        'https://www.amazon.it/s?k=set+elastici+fitness&crid=JZMB7C8VO7CL&sprefix=%2Caps%2C144&ref=nb_sb_ss_recent_1_0_recent');

    return Scaffold(
      body: Column(
        children: [
          const TopScreenModel(
            title: 'Contatti',
            subtitle: 'Hai bisogno di una scheda di allenamento su misura?',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CollegamentoModel(
                        nomeCollegamento: 'E-Mail',
                        iconaCollegamento: Icons.mail_outline,
                        tipoCollegamento: mail,
                      ),
                      CollegamentoModel(
                        nomeCollegamento: 'WhatsApp',
                        iconaCollegamento: FontAwesomeIcons.whatsapp,
                        tipoCollegamento: whatsApp,
                      ),
                      CollegamentoModel(
                        nomeCollegamento: 'Amazon',
                        iconaCollegamento: FontAwesomeIcons.amazon,
                        tipoCollegamento: amazon,
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
