import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// StatlessWidget
// Widget은 레고 블럭이라고 생각 하면 된다.
// Widget이 합쳐져서 앱이 만들어진다. 컴포넌트라고 생각하자
class MainApp extends StatelessWidget {
  const MainApp({super.key});

// CupertinoApp: IOS
// MateiralApp: 안드로이드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hello Flutter!',
          ),
        ),
      ),
    );
  }
}
