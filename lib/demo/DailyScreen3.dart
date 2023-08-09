import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyScreen3 extends StatefulWidget {
  @override
  _DailyScreenState createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen3> {
  int _selectedIndex = 2;
  bool _isExpanded1 = true;
  
  void _onItemTapped(int index) {
      if (index == 0) Get.toNamed("/HomeScreen3" );
      if (index == 1) Get.toNamed("/CompanyScreen3" );
      if (index == 2) Get.toNamed("/DailyScreen3" );
      if (index == 3) Get.toNamed("/VolumeScreen3" );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20,),
                Container(
                // child: Image.asset(imagePath, fit: BoxFit.fill),
                  child: Column(
                      children: [
                            GestureDetector(
                              onTap: () { Get.toNamed("/VolumeScreen3" );},
                              child: Image.asset('assets/images/demo_daily_gr1.png', fit: BoxFit.fill),
                            ),
                            GestureDetector(
                              onTap: () { Get.toNamed("/VolumeScreen3" );},
                              child: Image.asset('assets/images/demo_daily_gr2.png', fit: BoxFit.fill),
                            ),

                      ],
                  ),
                ),

                // ExpandTile ============================================================
                
                Container(
                  // ExpansionTile의 배경색 지정
                  //color: Color.fromARGB(255, 29, 29, 29), // 원하는 색상으로 변경 가능
                  child: ExpansionTile(
                    title: Text(
                      '밸류체인 678901',
                      style: TextStyle(
                        color: Color(0xffededed),
                        fontWeight: FontWeight.bold, // bold 스타일 적용
                        fontSize: 14, // 글꼴 크기 14
                      ),
                    ),
                    onExpansionChanged: (expanded) {
                      setState(() {
                        _isExpanded1 = expanded;
                      });
                    },
                    children: [
                      _isExpanded1
                          ? Container(
                              //color: Colors.blue,
                              child: Image.asset('assets/images/demo_daily_gr2.png',
                                  fit: BoxFit.fill), // 이미지 경로를 적절히 수정해주세요.
                            )
                          : SizedBox.shrink(), // 내용이 닫혔을 때는 빈 컨테이너로 처리
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF292929),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
            backgroundColor: Color(0xFF292929),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Perform',
            backgroundColor: Color(0xFF292929),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
            backgroundColor: Color(0xFF292929),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFededed),
        unselectedItemColor: Color.fromARGB(255, 94, 94, 94),
        onTap: _onItemTapped,
      ),
    );
  }
}