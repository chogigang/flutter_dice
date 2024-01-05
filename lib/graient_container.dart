import 'package:flutter/material.dart';
import 'package:flutter_study_test/dice_roller.dart';

//import 'package:flutter_study_test/styled_text.dart';

var statAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // StatelessWidget 아무것도 없는 위젯을 사용시 자동으로 뒤에서 이 클래스의 논리와,데이터를 많이 추가한다 플러터가 요구하는 데이터와 논리를 추가한다.
// class GradientContainer extends StatefulWidget { //  StatefulWidget 그 안에서 상태를 관리 해준다. 시간이 지나면 변할수 있고 렌더링된 UI에 영향을 미칠 수 있다. 데이터가 변하면 인터페이스도 바뀐다.

  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  const GradientContainer.purple({
    super.key,
  })  : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        //컨테이너
        decoration: BoxDecoration(
          //데코래이션
          gradient: LinearGradient(
            //그라데이션  하드코딩으로 기본적으로 리스트로 받아야함.
            colors: [color1, color2],
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight //그라데이션 begin 시작 end 끝
            //변수를 이용한 방법
            begin: statAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: DiceRoller(),
        ));
  }
}

//  const GradientContainer({super.key, required this.color});
//   final List<Color> color;

//   @override
//   Widget build(context) {
//     return Container(
//       //컨테이너
//       decoration: BoxDecoration(
//
//         gradient: LinearGradient(
//
//           colors: color,
//           // begin: Alignment.topLeft,
//           // end: Alignment.bottomRight
//           begin: statAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('hello world! '),
//       ),
//     );
//   }
// }
