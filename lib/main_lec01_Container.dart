import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 실행
}

class MyApp extends StatelessWidget { // 메인페이지
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 디자인 구현부(Material 테마)
    /* Flutter에서 앱 디자인을 넣고 싶으면 위젯 단위로 기능을 구현한다 */
    return MaterialApp(
        // 부모 레이아웃
        home: Center(
          // 자식 레이아웃
          //child: Text('안녕') // 글자위젯
          //child: Icon(Icons.home) // 아이콘위젯(Icon.아이콘이름)
          /* pubspec.yml에서 flutter 서브에 assets를 등록했는지 확인한다 */
          //child: Image.asset('nsu.jpeg') // 이미지위젯(Image.asset('경로'))
          child: Container( width: 50, height: 50, color: Colors.blue) // 박스위젯(SizedBox()도 가능)
        )
    );

  }
}
