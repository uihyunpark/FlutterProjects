import 'package:flutter/material.dart';

void main() => runApp(MyButton());

class MyButton extends StatefulWidget {
  @override
  State createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  static const String _title = 'MyButtons';
  String _buttonState = 'OFF';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mybuttons",
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('button1'),
              onPressed: () => setState(() {
                if (_buttonState == 'OFF') {
                  _buttonState = 'ON';
                } else
                  _buttonState = 'OFF';
              }),
            ),
            Text(_buttonState)
          ],
        ),
      ),
    );
  }
}
