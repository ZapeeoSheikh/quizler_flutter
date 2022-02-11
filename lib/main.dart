import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    List<Icon> score = [
      Icon(
        Icons.check,
        color: Colors.green,
      ),
      Icon(
        Icons.check,
        color: Colors.green,
      ),
      Icon(
        Icons.check,
        color: Colors.green,
      ),
      Icon(
        Icons.close,
        color: Colors.red,
      ),
      Icon(
        Icons.check,
        color: Colors.green,
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Quizzler App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "This is where the question goes ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              // flex: 5
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      score.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              // flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      score.add(
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    });
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: score,
            )
          ],
        ),
      ),
    );
  }
}
