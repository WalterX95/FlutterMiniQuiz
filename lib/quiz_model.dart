class Risposta {
  final String text;
  final bool isCorrect;

  Risposta({required this.text, required this.isCorrect});

  factory Risposta.fromJson(Map<String, dynamic> json) {
    return Risposta(
      text: json['text'],
      isCorrect: json['isCorrect'],
    );
  }
}

class Quiz {
  final int id;
  final String domanda;
  final List<Risposta> risposte;

  Quiz({required this.id, required this.domanda, required this.risposte});

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      id: json['id'],
      domanda: json['Domanda'],
      risposte: (json['Risposte'] as List)
          .map((r) => Risposta.fromJson(r))
          .toList(),
    );
  }
}
