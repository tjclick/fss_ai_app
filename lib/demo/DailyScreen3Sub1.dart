import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyScreen3Sub1 extends StatefulWidget {
  @override
  _DailyScreen3Sub1State createState() => _DailyScreen3Sub1State();
}

class _DailyScreen3Sub1State extends State<DailyScreen3Sub1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(
        //     color: Color.fromARGB(255, 238, 238, 238),//색변경
        //   ),
        title: Text(
          '모비어스 Daily Chart',
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
              Get.toNamed("/DailyScreen3");
            },
          ),
        ],
        backgroundColor: Color(0xFF292929),
        iconTheme: IconThemeData(color: Colors.white, size: 30)
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
                          Get.toNamed("/DailyScreen3");
                        },
                        child: Image.asset('assets/images/daily_gr1_s1.png',
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
