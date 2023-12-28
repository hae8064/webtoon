import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';

void main() {
  runApp(const MainApp());
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
        // 색깔 뒤 shade는 채도 조절 가능
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
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
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //     vertical: 20,
                  //     horizontal: 50,
                  //   ),
                  //   child: Text(
                  //     'Transfer',
                  //     style: TextStyle(
                  //       fontSize: 16,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
