# 📱 Flutter Quiz App

Un'applicazione **Flutter** semplice e intuitiva per la gestione di quiz a scelta multipla, con caricamento da file JSON e valutazione delle risposte in tempo reale.

## ✨ Funzionalità

- Caricamento dinamico delle domande da un file JSON
- Visualizzazione di una domanda alla volta
- Pulsanti per ogni risposta con valutazione istantanea
- Feedback testuale corretto/sbagliato
- Finestra di dialogo finale al termine del quiz

## 📂 Struttura del progetto

/lib
├── main.dart # Entry point dell'app
├── nuovo_quiz.dart # Interfaccia utente e logica del quiz
├── quiz_model.dart # Modello dati per quiz e risposte
/assets
└── quiz.json # File contenente tutte le domande

pgsql
Copy
Edit

## 📄 Esempio JSON (`assets/quiz.json`)

```json
[
  {
    "quiz": {
      "id": 0,
      "Domanda": "Qual è il primo presidente della Federazione Russa?",
      "Risposte": [
        { "testo": "Vladimir Putin", "isCorrect": false },
        { "testo": "Boris Yeltsin", "isCorrect": true },
        { "testo": "Nikita Krusciov", "isCorrect": false },
        { "testo": "Margaret Thatcher", "isCorrect": false }
      ]
    }
  },
  {
    "quiz": {
      "id": 1,
      "Domanda": "In che anno è avvenuto lo sbarco sulla Luna?",
      "Risposte": [
        { "testo": "1965", "isCorrect": false },
        { "testo": "1969", "isCorrect": true },
        { "testo": "1971", "isCorrect": false },
        { "testo": "1959", "isCorrect": false }
      ]
    }
  },
  {
    "quiz": {
      "id": 2,
      "Domanda": "Chi ha scritto 'La Divina Commedia'?",
      "Risposte": [
        { "testo": "Dante Alighieri", "isCorrect": true },
        { "testo": "Giovanni Boccaccio", "isCorrect": false },
        { "testo": "Francesco Petrarca", "isCorrect": false },
        { "testo": "Ludovico Ariosto", "isCorrect": false }
      ]
    }
  }
]

🚀 Come avviare il progetto
Clona il repository:

bash
Copy
Edit
git clone https://github.com/WalterX95/FlutterMiniQuiz
cd FlutterMiniQuiz
Installa le dipendenze:

bash
Copy
Edit
flutter pub get
Avvia l'app:

bash
Copy
Edit
flutter run
Assicurati che il file quiz.json sia incluso nel file pubspec.yaml:

yaml
Copy
Edit
flutter:
  assets:
    - assets/quiz.json
🛠️ Tecnologie utilizzate
Flutter 3+

Dart

JSON (parsing da file statico)

StatefulWidget

Material Design

🧠 Estensioni e miglioramenti futuri
 Mostrare il punteggio finale all'utente

 Supporto per categorie diverse di quiz

 Aggiunta di un timer per ogni domanda

 Navigazione fluida tra le domande

 Integrazione Firebase o database locale

✅ Requisiti
Flutter SDK ≥ 3.0.0

Dart ≥ 3.0.0

Android Studio / VS Code / qualsiasi IDE compatibile con Flutter

📄 Licenza
Questo progetto è distribuito sotto licenza MIT. Consulta il file LICENSE per ulteriori dettagli.

🧑‍💻 Creato con passione da Walter
