import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         // 커스텀위젯 호출
//         /* 변수나 함수로도 선언해서 호출가능하다 */
//         //body: ShopItem(),
//         // 리스트 뷰를 이용한 다중 위젯 호출
//         body: ListView(
//           children: [
//             Text('하하'),
//             Text('하하'),
//             Text('하하'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 커스텀 위젯(클래스) 설정
// class ShopItem extends StatelessWidget {
//   const ShopItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Text('안녕'),
//     );
//   }
// }






class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),

        // 리스트 빌더를 이용한 리스트 뷰
        body: ListView.builder(
          padding: EdgeInsets.all(5),
          // 리스트 길이
          itemCount: 30,
          // 아이템 빌더
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Row(
                children: [
                  Icon(Icons.add_location, color: Colors.black,),
                  Text('홍길동'),
                ],
              ),
            );
          },
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 75,
            // 커스텀 위젯 호출
            child: Profile()
          ),
        ),
      ),
    );
  }
}


// 커스텀 위젯 선언
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.phone, color: Colors.black,),
        Icon(Icons.phone, color: Colors.black,),
        Icon(Icons.phone, color: Colors.black,)
      ],
    );
  }
}
