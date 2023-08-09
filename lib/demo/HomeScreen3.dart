import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen3 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen3> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) Get.toNamed("/HomeScreen3");
    if (index == 1) Get.toNamed("/CompanyScreen3");
    if (index == 2) Get.toNamed("/DailyScreen3");
    if (index == 3) Get.toNamed("/VolumeScreen3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GOOD.AI',
          style: TextStyle(
            color: Color(0xFFEDEDED),
            fontWeight: FontWeight.bold,
          ),
        ),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  // child: Image.asset(imagePath, fit: BoxFit.fill),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/HomeScreen3Sub1");
                        },
                        child: Image.asset('assets/images/demo_home_gr1.png',
                            fit: BoxFit.fill),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/CompanyScreen3");
                        },
                        child: Image.asset('assets/images/demo_home_gr2.png',
                            fit: BoxFit.fill),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/CompanyScreen3");
                        },
                        child: Image.asset('assets/images/demo_home_gr3.png',
                            fit: BoxFit.fill),
                      ),
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
