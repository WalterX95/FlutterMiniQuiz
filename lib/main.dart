import 'package:flutter/material.dart';
import 'package:simple_quiz/nuovo_quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wally Quiz !',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        elevatedButtonTheme: ElevatedButtonThemeData(
           style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber))
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
   final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Widget _bottoneMenu(BuildContext context, String testo, VoidCallback voidCallBack) {

      return SizedBox(
        width: 200,
        height: 70,
        child: FloatingActionButton(
          tooltip: testo,
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.orange, 
          onPressed: voidCallBack,
          child: Text(testo),
          ),
      );
  }

 Widget _tolltipBottone(BuildContext context, String testo, String testoNotifica) {
     
 return Tooltip(
        message: 'Messaggio Effettuato Tasto premuto',
        textAlign: TextAlign.center,
        padding: EdgeInsets.all(8),
        textStyle: TextStyle(fontSize: 18),
          child: ElevatedButton(
            onPressed: () => {
               showDialog(context: context, builder: (_) => AlertDialog(
                title: Text(testoNotifica),
                content: Text('Messaggio per te',
                textAlign: TextAlign.center,
                ),
                actions: [
                   TextButton(onPressed:() => Navigator.pop(context), child: Text('Vai avanti'))
                ],
               ))
            },
            child: Text(testo),
          ),
);

}

void _torna() {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
    print('È tornato indietro');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Non ci sono altre schermate da cui tornare.'),
      ),
    );
  }
}

void _nuovaPagina(BuildContext context, Widget pagina) {
   Navigator.push(context, MaterialPageRoute(builder: (context) => pagina));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              SizedBox(width: 30, height: 30),
              Text('Benvenuto su Mega Quiz',style: TextStyle(fontSize: 24)),
              SizedBox(width: 30, height: 30,),
              _bottoneMenu(context, 'Nuovo Quiz', () => _nuovaPagina(context, const NuovoQuiz(title: 'My Quiz'))),
              SizedBox(width: 30, height: 30,),
              _bottoneMenu(context, 'Impostazioni', _torna),
              SizedBox(width: 30, height: 30,),
              _bottoneMenu(context, 'Carica Partita', _torna),
              SizedBox(width: 30, height: 30,),
              _bottoneMenu(context, 'Account', _torna),
              SizedBox(width: 30, height: 30,),
              _tolltipBottone(context, 'bottone tool', 'Notifica Testo')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
