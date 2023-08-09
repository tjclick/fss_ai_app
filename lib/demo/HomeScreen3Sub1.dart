import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen3Sub1 extends StatefulWidget {
  @override
  _HomeScreen3Sub1State createState() => _HomeScreen3Sub1State();
}

class _HomeScreen3Sub1State extends State<HomeScreen3Sub1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI Prediction Chart',
          style: TextStyle(
            color: Color(0xFFEDEDED),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            color: Color(0xFFEDEDED),
            onPressed: () {
              Get.toNamed("/HomeScreen3");
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
                          Get.toNamed("/HomeScreen3");
                        },
                        child: Image.asset('assets/images/home_gr1_s1.png',
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
    );
  }
}
