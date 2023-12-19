import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// StatlessWidget
// Widget은 레고 블럭이라고 생각 하면 된다.
// Widget이 합쳐져서 앱이 만들어진다. 컴포넌트라고 생각하자
class MainApp extends StatelessWidget {
// CupertinoApp: IOS
// MateiralApp: 안드로이드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 색깔 뒤 shade는 채도 조절 가능
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
