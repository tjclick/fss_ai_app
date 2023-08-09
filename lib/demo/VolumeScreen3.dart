import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VolumeScreen3 extends StatefulWidget {
  @override
  _VolumeScreenState createState() => _VolumeScreenState();
}

class _VolumeScreenState extends State<VolumeScreen3> {
  int _selectedIndex = 3;
  
  static List<Widget> _widgetOptions = <Widget>[
    _buildImage('home'),
    _buildImage('company'),
    _buildImage('daily'),
    _buildImage('volume'),
  ];


  static Widget _buildImage(String imagePath) {
    return Container(
      // child: Image.asset(imagePath, fit: BoxFit.fill),
      child: Column(
          children: [
                GestureDetector(
                  onTap: () { Get.toNamed("/", arguments: {"EVENT_TAP": "${imagePath}"});},
                  child: Image.asset('assets/images/demo_${imagePath}_gr1.png', fit: BoxFit.fill),
                ),
                GestureDetector(
                  onTap: () { Get.toNamed("/", arguments: {"EVENT_TAP": "${imagePath}"});},
                  child: Image.asset('assets/images/demo_${imagePath}_gr2.png', fit: BoxFit.fill),
                ),
                GestureDetector(
                  onTap: () { Get.toNamed("/", arguments: {"EVENT_TAP": "${imagePath}"});},
                  child: Image.asset('assets/images/demo_${imagePath}_gr3.png', fit: BoxFit.fill),
                ),

          ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOOD.AI', style: TextStyle(color: Color(0xFFEDEDED),),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Color(0xFFEDEDED),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
        backgroundColor: Color(0xFF292929),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                // 추가적인 위젯들을 여기에 추가할 수 있습니다.
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