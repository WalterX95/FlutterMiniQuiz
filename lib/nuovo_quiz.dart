import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quiz_model.dart';

class NuovoQuiz extends StatefulWidget {
  final String title = '';
  const NuovoQuiz({super.key, required title});

  @override
  State<NuovoQuiz> createState() => _MyNuovoQuiz();
}

class _MyNuovoQuiz extends State<NuovoQuiz> {
  List<Quiz> quizList = [];

  @override
  void initState() {
    super.initState();
    loadQuiz();
  }

  Future<void> loadQuiz() async {
    final String response = await rootBundle.loadString('assets/quiz.json');
    final List data = json.decode(response);
    
    setState(() {
      quizList = data.map((q) => Quiz.fromJson(q['quiz'])).toList();
    });
  }
   
  int nDomande = 0;
  @override
  Widget build(BuildContext context) {
    if (quizList.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
  
    final quiz = quizList[nDomande];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
        bottomOpacity: 0.4,
        shadowColor: Colors.black,
        foregroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(width: 30, height: 30),
            Text(quiz.domanda, style: const TextStyle(fontSize: 22)),
            SizedBox(width: 30, height: 30),
            ...quiz.risposte.map(
              (r) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    final msg = r.isCorrect
                        ? 'Risposta corretta!'
                        : 'Risposta sbagliata!';
                    if (nDomande < quizList.length - 1) {
                      setState(() {
                        nDomande++; // Avanza alla prossima domanda
                      });
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text("Risultato, Quiz Terminato"),
                          content: Text(msg),
                          actions: [
                            TextButton(
                              onPressed: () => {Navigator.pop(context)},
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(r.text),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
