import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen3Sub1 extends StatefulWidget {
  @override
  _HomeScreen3Sub1State createState() => _HomeScreen3Sub1State();
}

class _HomeScreen3Sub1State extends State<HomeScreen3Sub1> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    _buildImage('home'),
    _buildImage('company'),
    _buildImage('daily'),
    _buildImage('volume'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  static Widget _buildImage(String imagePath) {
    return Container(
      // child: Image.asset(imagePath, fit: BoxFit.fill),
      child: Column(
          children: [
                GestureDetector(
                  onTap: () { print('${imagePath} event gr1 '); 
                        Get.toNamed("/HomeSub1", arguments: {"EVENT_TAP": "${imagePath}"});
                  },
                  child: Image.asset('assets/images/demo_${imagePath}_gr1.png', fit: BoxFit.fill),
                ),
                GestureDetector(
                  onTap: () { print('${imagePath} event gr2 ');  
                      Get.toNamed("/HomeSub1", arguments: {"EVENT_TAP": "${imagePath}"});
                  },
                  child: Image.asset('assets/images/demo_${imagePath}_gr2.png', fit: BoxFit.fill),
                ),
                GestureDetector(
                  onTap: () { print('${imagePath} event gr3 ');  
                      Get.toNamed("/HomeSub1", arguments: {"EVENT_TAP": "${imagePath}"});
                  },
                  child: Image.asset('assets/images/demo_${imagePath}_gr3.png', fit: BoxFit.fill),
                ),

          ],
      ),
    );
  }


  
  @override
  void initState() {
    super.initState();
    if (Get.arguments["EVENT_TAP"] != null) {
      if (Get.arguments["EVENT_TAP"] == "home")    _selectedIndex = 1;
      if (Get.arguments["EVENT_TAP"] == "company") _selectedIndex = 2;
      if (Get.arguments["EVENT_TAP"] == "daily")   _selectedIndex = 3;
      if (Get.arguments["EVENT_TAP"] == "volume")  _selectedIndex = 0;
    } else {
      _selectedIndex = 0;
    }
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