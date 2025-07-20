# 📱 Flutter Quiz App

Un'applicazione **Flutter** semplice e intuitiva per la gestione di quiz a scelta multipla, con caricamento da file JSON e valutazione delle risposte in tempo reale.

## ✨ Funzionalità

- **Caricamento dinamico** delle domande da un file JSON
- **Visualizzazione** di una domanda alla volta
- **Pulsanti interattivi** per ogni risposta con valutazione istantanea
- **Feedback testuale** corretto/sbagliato in tempo reale
- **Finestra di dialogo** finale al termine del quiz

## 📂 Struttura del progetto

```
/lib
├── main.dart           # Entry point dell'app
├── nuovo_quiz.dart     # Interfaccia utente e logica del quiz
└── quiz_model.dart     # Modello dati per quiz e risposte

/assets
└── quiz.json           # File contenente tutte le domande
```

## 🚀 Come avviare il progetto

### 1. Clona il repository
```bash
git clone https://github.com/WalterX95/FlutterMiniQuiz
cd FlutterMiniQuiz
```

### 2. Installa le dipendenze
```bash
flutter pub get
```

### 3. Configura gli assets
Assicurati che il file `quiz.json` sia incluso nel file `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/quiz.json
```

### 4. Avvia l'app
```bash
flutter run
```

## 🛠️ Tecnologie utilizzate

- **Flutter** 3+
- **Dart** 
- **JSON** (parsing da file statico)
- **StatefulWidget** per la gestione dello stato
- **Material Design** per l'interfaccia utente

## 🧠 Roadmap e miglioramenti futuri

- [ ] Mostrare il punteggio finale all'utente
- [ ] Supporto per categorie diverse di quiz
- [ ] Aggiunta di un timer per ogni domanda
- [ ] Navigazione fluida tra le domande
- [ ] Integrazione Firebase o database locale
- [ ] Modalità offline completa
- [ ] Statistiche e cronologia dei risultati

## ✅ Requisiti di sistema

- **Flutter SDK** ≥ 3.0.0
- **Dart** ≥ 3.0.0
- **Android Studio** / **VS Code** / qualsiasi IDE compatibile con Flutter
- **Dispositivo Android/iOS** o emulatore per il testing

## 📊 Screenshot

_Aggiungi qui degli screenshot dell'app in azione_

## 🤝 Come contribuire

1. Fai un fork del progetto
2. Crea un branch per la tua feature (`git checkout -b feature/AmazingFeature`)
3. Commit delle tue modifiche (`git commit -m 'Add some AmazingFeature'`)
4. Push al branch (`git push origin feature/AmazingFeature`)
5. Apri una Pull Request

## 📄 Licenza

Questo progetto è distribuito sotto licenza **MIT**. Consulta il file [LICENSE](LICENSE) per ulteriori dettagli.

## 📞 Contatti

**Walter** - Creato con passione ❤️

- GitHub: [@WalterX95](https://github.com/WalterX95)
- Progetto: [FlutterMiniQuiz](https://github.com/WalterX95/FlutterMiniQuiz)

---

⭐ Se questo progetto ti è stato utile, non dimenticare di mettere una stella!