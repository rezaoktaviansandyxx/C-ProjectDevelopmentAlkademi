import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/class2/question25.dart';

class Question24Class2 extends StatefulWidget {
  const Question24Class2({super.key});

  @override
  State<Question24Class2> createState() => _Question24Class2State();
}

class _Question24Class2State extends State<Question24Class2> {
  List<bool> isPressedList = [false, false, false, false];
  bool isVisibleIconSound = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'SOAL 24',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CloseButton(
            color: Colors.red,
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Perhatikan gambar botol dan kemasan air mineral berikut ini!',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff006699),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/images/class2/seta_img_soal_no_24.png'),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Berdasarkan gambar di atas, selisih antara volume air dalam botol paling besar dan volume air dalam gelas adalah. ... mililiter (ml)',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff006699),
                ),
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Visibility(
                      // visible: isVisibleAnswerA,
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressedList[0] = true;
                              isPressedList[1] = false;
                              isPressedList[2] = false;
                              isPressedList[3] = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: MediaQuery.of(context).size.width / 5,
                                right: MediaQuery.of(context).size.width / 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 3.0,
                                  color: isPressedList[0]
                                      ? Colors.green
                                      : Colors.black),
                            ),
                            child: const Text(
                              'A. 3.050',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff006699),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      // visible: isVisibleAnswerB,
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressedList[0] = false;
                              isPressedList[1] = true;
                              isPressedList[2] = false;
                              isPressedList[3] = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: MediaQuery.of(context).size.width / 5,
                                right: MediaQuery.of(context).size.width / 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 3.0,
                                  color: isPressedList[1]
                                      ? Colors.green
                                      : Colors.black),
                            ),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'B. 1.260',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff006699),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Visibility(
                      // visible: isVisibleAnswerC,
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressedList[0] = false;
                              isPressedList[1] = false;
                              isPressedList[2] = true;
                              isPressedList[3] = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: MediaQuery.of(context).size.width / 5,
                                right: MediaQuery.of(context).size.width / 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 3.0,
                                  color: isPressedList[2]
                                      ? Colors.green
                                      : Colors.black),
                            ),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'C. 1.830',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff006699),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      // visible: isVisibleAnswerD,
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressedList[0] = false;
                              isPressedList[1] = false;
                              isPressedList[2] = false;
                              isPressedList[3] = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: MediaQuery.of(context).size.width / 5,
                                right: MediaQuery.of(context).size.width / 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 3.0,
                                  color: isPressedList[3]
                                      ? Colors.green
                                      : Colors.black),
                            ),
                            child: Card(
                              color: Colors.transparent,
                              shadowColor: Colors.transparent.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'D. 1.740',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff006699),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: isVisibleIconSound,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        // isVisibleIconSound = false;
                      });
                      // openPlayer();
                    },
                    icon: const Icon(Icons.volume_up),
                  ),
                ),
                Visibility(
                  visible: isPressedList.contains(true),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const Question25Class2());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff006699),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                      child: Text('Next'),
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
}