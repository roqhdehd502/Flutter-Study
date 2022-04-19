import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //     home: Scaffold(
    //       // 압바 꾸미기
    //       appBar: AppBar(
    //         // 왼쪽에 넣을 아이콘
    //         leading: Icon(Icons.s tar),
    //         // 왼쪽 제목
    //         title: Text('앱임'),
    //         // 우측 아이콘들
    //         actions: [
    //           Icon(Icons.star),
    //           Icon(Icons.star),
    //         ],
    //       ),
    //
    //       body: SizedBox(
    //         // 버튼 꾸미기
    //         /* TextButton 또한 가능  */
    //         // child: ElevatedButton(
    //         //   // 버튼 글자
    //         //   child: Text('버튼 글자'),
    //         //   // 클릭 이벤트 적용
    //         //   onPressed: (){},
    //         //   // 버튼 스타일
    //         //   //style: ButtonStyle(),
    //         // )
    //         child: IconButton(
    //           icon: Icon(Icons.star),
    //           onPressed: (){},
    //         )
    //
    //         // 텍스트 꾸미기
    //         // child: Text('안녕하세요',
    //         //   // 텍스트 스타일
    //         //   style: TextStyle(
    //         //       fontWeight: FontWeight.w700,
    //         //       // Hexa 컬러
    //         //       //color: Color(0xffff4b4b),
    //         //       // RGB 컬러
    //         //       color: Color.fromRGBO(25, 25, 25, 1),
    //         //   ),
    //         // ),
    //       ),
    //     )
    // );


    /**
     * 레이아웃 혼자서도 잘 짜는 법
     * 1. 예시디자인 준비
     * 2. 예시화면에 네모그리기
     * 3. 바깥 네모부터 하나하나 위젯으로
     * 4. 마무리 디자인
     */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('금호동3가',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )
              ),
              Icon(Icons.arrow_drop_down, color: Colors.black,),
            ],
          ),
          actions: [
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.black,),
                    onPressed: (){}
                  ),
                  IconButton(
                      icon: Icon(Icons.search, color: Colors.black,),
                      onPressed: (){}
                  ),
                  IconButton(
                      icon: Icon(Icons.search, color: Colors.black,),
                      onPressed: (){}
                  ),
                ],
              ),
            )
          ],
        ),


        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              // Flexible을 이용한 그리드 비율 설정
              Flexible(child: Container(
                  padding: EdgeInsets.all(3),
                  child: Image.asset('nsu.jpeg',)),
                flex: 6,),

              Flexible(child: Container(
                padding: EdgeInsets.all(3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text('구로구 개봉동 | 끝올 10분 전',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Text('121,687원',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4'),
                      ],
                    )
                  ],
                ),
              ),
                flex: 14,),
            ],
          ),
        )
      ),
    );
  }
}
