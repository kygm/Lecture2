import 'package:flutter/material.dart';
import './widgets/coin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//var declare here
  final text = TextEditingController();

  void _displayText() {
    FocusScope.of(context).unfocus();
    setState(() {
      print(text.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: text,
            ),
            ElevatedButton(
              onPressed: _displayText,
              child: Text("Display Output"),
            ),
            Text(text.text),
            ElevatedButton(
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Coin()));
              },
              child: Text("Navigate to another page"),
            ),
          ],
        ),
      ),
    );
  }
}
