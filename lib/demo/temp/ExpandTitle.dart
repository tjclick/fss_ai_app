import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandTitleTest extends StatefulWidget {
  @override
  _MyExpansionTileDemoState createState() => _MyExpansionTileDemoState();
}

class _MyExpansionTileDemoState extends State<ExpandTitleTest> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile Demo'),
      ),
      body: Container(
        color: Color(0xff292929),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // ExpansionTile의 배경색 지정
              color: Color.fromARGB(255, 29, 29, 29), // 원하는 색상으로 변경 가능
              child: ExpansionTile(
                title: Text(
                  '모비어스 012345',
                  style: TextStyle(
                    color: Color(0xffededed),
                    fontWeight: FontWeight.bold, // bold 스타일 적용
                    fontSize: 14, // 글꼴 크기 14
                  ),
                ),
                // title: SizedBox(
                //   child: Image.asset('assets/images/expand_title.png',
                //       fit: BoxFit.fill),
                // ),
                onExpansionChanged: (expanded) {
                  setState(() {
                    _isExpanded = expanded;
                  });
                },
                children: [
                  _isExpanded
                      ? Container(
                          color: Colors.blue,
                          child: Image.asset('assets/images/expand_data.png',
                              fit: BoxFit.fill), // 이미지 경로를 적절히 수정해주세요.
                        )
                      : SizedBox.shrink(), // 내용이 닫혔을 때는 빈 컨테이너로 처리
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}