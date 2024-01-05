import 'package:flutter/material.dart';
import 'package:flutter_study_test/graient_container.dart';

void main() {
  runApp(const MyApp()); //엡구동  안에는 메인 페이지
}

class MyApp extends StatelessWidget {
  //엡 메인 페이지
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //메인 페이지 디자인
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 36, 3, 94), Color.fromARGB(255, 147, 93, 240)),
      ),
    );
  }
}


/*
아아아ㅏ 테스트 테스트
*/ 