import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('앱임'),
          ),
          body: Align(
            // 특정 방향으로 정렬
            alignment: Alignment.topCenter,
            child: Container(
              // double.infinity: 특정 수치를 무한하게
              width: double.infinity,
              height: 50,
              /* padding 또한 방법 비슷함 */
              //margin: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              // 박스에 대한 꾸미기 기능
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue)
              ),
              child: Text('안녕'),
            ),
          ),

        )
    );
  }
}
