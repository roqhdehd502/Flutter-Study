import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //   // 레이아웃을 상중하로 나눠준다
    //   home: Scaffold(
    //     // 상단 네비게이션 바
    //     //appBar: AppBar(),
    //     // 바디
    //     // 동등한 레이어에서 여러위젯(Row, Column) 사용
    //     /* ctrl+space로 자동완성 기능 호출 */
    //     body: Row(
    //       // 가로축 가운데 정렬
    //       /* 파라미터 우측에 넣을 것이 기억나지 않는다면 좌측에 있는걸 대문자로 시작해서 자동완성 */
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       // 세로축 가운데 정렬
    //       //crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Icon(Icons.star),
    //         Icon(Icons.star),
    //         Icon(Icons.star),
    //       ]
    //     ),
    //     // 하단 네이게이션 바
    //     // bottomNavigationBar: BottomAppBar(
    //     //   child: Text('Anything'),
    //     // ),
    //   )
    // );




    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('앱임'),
          ),
          body: Container(
            child: Text('안녕'),
          ),
          // bottomNavigationBar: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Icon(Icons.phone),
          //     Icon(Icons.message),
          //     Icon(Icons.contact_page),
          //   ],
          // ),
          bottomNavigationBar: BottomAppBar(
            // 키워드 커서에 전구 버튼으로 SizedBox를 Wrap하기
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            ),
          ),
        )
    );

  }
}
