import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReturnPvc extends StatefulWidget {
  const ReturnPvc({Key? key}) : super(key: key);

  @override
  State<ReturnPvc> createState() => _ReturnPvcState();
}

class _ReturnPvcState extends State<ReturnPvc> {
  //final _controller = TextEditingController();
  ScrollController _controller = ScrollController();
  final CalculatorController _calculatorController =
      Get.put(CalculatorController());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Top Area 01 Driver
  Widget _listViewBuild() {
    return GestureDetector(
      onTap: () async {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          //tileColor: Color.fromRGBO(178, 178, 179, 0.49),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(7),
          ),
          title: Text(
            '${Get.arguments["TICKER"]}\n${Get.arguments["NAME"]}',
            style: TextStyle(fontSize: 22),
          ),
          subtitle: Text(
            '\n ● 차량코드 ${Get.arguments["VOLUME"]}\n ● 차량번호 ${Get.arguments["ECONOMIC"]}\n ● 운송사 ${Get.arguments["MARKET"]}\n ● 출하수량 ${Get.arguments["COMPANY"]}\n ● 회수수량 ${Get.arguments["NEWS"]} ',
            style: TextStyle(
              fontSize: 18,
              color: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }

  // Area 02 Center Qty input
  Widget _inputItemQty() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: Color.fromRGBO(178, 178, 179, 0.49),
          //boxShadow: [
          //  BoxShadow(color: Colors.black.withOpacity(0.40), blurRadius: 5)
          //],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' 대PVC 수량',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _calculatorController.minusNumbers(1);
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                // GetX find controller
                Obx(() {
                  return Text(
                    ' ${_calculatorController.result01.value}',
                    style: TextStyle(fontSize: 24),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    _calculatorController.addNumbers(1);
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            // 중 박스 수량
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' 중PVC 수량',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _calculatorController.minusNumbers(2);
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                // GetX find controller
                Obx(() {
                  return Text(
                    ' ${_calculatorController.result02.value}',
                    style: TextStyle(fontSize: 24),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    _calculatorController.addNumbers(2);
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            // 합계 수량
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' 합계 수량',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown,
                  ),
                ),
                // GetX find controller
                Obx(() {
                  return Text(
                    ' ${_calculatorController.total.value}',
                    style: TextStyle(fontSize: 24),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    //_calculatorController.addNumbers(2);
                    Get.defaultDialog(
                        title: 'Test Alert',
                        titlePadding: EdgeInsets.all(10),
                        contentPadding: EdgeInsets.all(15),
                        content: Text("GetX Dialog Test sample ....."),
                        textConfirm: 'OK',
                        textCancel: 'Cancel');
                  },
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //getconnect를 사용한 api연결 예제소스
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PVC 회수 정보'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                _listViewBuild(),
                SizedBox(
                  height: 20,
                ),
                _inputItemQty(),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          Get.toNamed("/");
        },
      ),
    );
  }
}

// GetX 컨트롤러 클래스 생성
class CalculatorController extends GetxController {
  RxInt result01 = 0.obs;
  RxInt result02 = 0.obs;
  RxInt total = 0.obs;

  void addNumbers(int idx) {
    switch (idx) {
      case 1:
        result01++;
        total++;
        break;
      case 2:
        result02++;
        total++;
        break;
    }
  }

  void minusNumbers(int idx) {
    switch (idx) {
      case 1:
        result01--;
        total--;
        break;
      case 2:
        result02--;
        total--;
        break;
    }
  }
}
