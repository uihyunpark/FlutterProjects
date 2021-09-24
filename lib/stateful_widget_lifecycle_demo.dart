import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      title: 'Stateful Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful 위젯 lifecycle 데모')),
        body: _MyStatefulWidget(),

      ),
    )
    );

class _MyStatefulWidget extends StatefulWidget {

  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  String _buttonState = 'OFF';

  @override
  void initState() {
    super.initState();
    print('initState() : 기본값을 설정합니다.\n');
    _buttonState = 'OFF';
//
  }


  @override
  void didChangeDependencies() {
    print('didChangeDependencies() : 호출됨\n');
//
  }


  @override
  Widget build(BuildContext context) {
    print('build() : 호출됨\n');
    return Column(
      children: <Widget>[ElevatedButton(
        child: Text('버튼을 누르세요'),
        onPressed: _onClick,
      ),
        Row(
          children: <Widget>[
            Text('버튼상태 : '),
            Text(_buttonState),
          ],
        )
      ],
    );
  }

  void _onClick(){
    print('_onClick() : 호출됨\n');
    setState((){
      print('setState() : 호출됨\n');
      if (_buttonState == 'OFF'){
        _buttonState = 'ON';
      }
      else _buttonState = 'OFF';
    });
  }

  @override
  void didUpdateWidget(_MyStatefulWidget oldWidget) {
    print('didUpdateWidget()');

  }

  @override
  void deactivate() {
    print('deactivate()');
  }

  @override
  void dispose() {
    print('dispose()');
  }
}


