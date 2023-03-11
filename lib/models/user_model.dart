// Elenco dei componenti da Visualizzare
// e Salvare in Database con JSON

class User {
  final String immagineUtente;
  final String nome;
  final String dataInizio;
  final String pesoIniziale;

  const User({
    required this.immagineUtente,
    required this.nome,
    required this.dataInizio,
    required this.pesoIniziale,
  });

  User copy({
    String? immagineUtente,
    String? nome,
    String? dataInizio,
    String? pesoIniziale,
  }) =>
      User(
        immagineUtente: immagineUtente ?? this.immagineUtente,
        nome: nome ?? this.nome,
        dataInizio: dataInizio ?? this.dataInizio,
        pesoIniziale: pesoIniziale ?? this.pesoIniziale,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        immagineUtente: json['immagineUtente'],
        nome: json['nome'],
        dataInizio: json['dataInizio'],
        pesoIniziale: json['pesoIniziale'],
      );

  Map<String, dynamic> toJson() => {
        'immagineUtente': immagineUtente,
        'nome': nome,
        'dataInizio': dataInizio,
        'pesoIniziale': pesoIniziale,
      };
}
