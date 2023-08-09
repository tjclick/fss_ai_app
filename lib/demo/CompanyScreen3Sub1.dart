import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyScreen3Sub1 extends StatefulWidget {
  @override
  _CompanyScreen3Sub1State createState() => _CompanyScreen3Sub1State();
}

class _CompanyScreen3Sub1State extends State<CompanyScreen3Sub1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Chart', style: TextStyle(color: Color(0xFFEDEDED), fontWeight: FontWeight.bold,),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, size: 30),
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
                SizedBox(height: 20,),
                Container(
                // child: Image.asset(imagePath, fit: BoxFit.fill),
                  child: Column(
                      children: [
                            GestureDetector(
                              onTap: () { Get.toNamed("/CompanyScreen3Sub2" );},
                              child: Image.asset('assets/images/demo_company_gr1.png', fit: BoxFit.fill),
                            ),
                            GestureDetector(
                              onTap: () { Get.toNamed("/CompanyScreen3Sub2" );},
                              child: Image.asset('assets/images/demo_company_gr2.png', fit: BoxFit.fill),
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