import 'package:flutter/material.dart';

class Question1 extends StatefulWidget {
  const Question1({super.key});

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  List<bool> isPressedList = [false, false, false, false];
  bool isVisibleIconSound = false;
  bool isVisibleAnswerA = false;
  bool isVisibleAnswerB = false;
  bool isVisibleAnswerC = false;
  bool isVisibleAnswerD = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CloseButton(
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        // visible: isVisibleIconSound,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisibleIconSound = false;
                            });
                          },
                          icon: const Icon(Icons.volume_up),
                        ),
                      ),
                      Visibility(
                        visible: isPressedList.contains(true),
                        child: ElevatedButton(
                          onPressed: () {},
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
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 10),
                child: Column(
                  children: [
                    const Text('SOAL 1'),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Perhatikan kumpulan gambar buah jeruk berikut!'),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset('assets/images/kelas2/seta_img_soal_no_1.png'),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                        'Di antara 4 pilihan kumpulan gambar buah jeruk yang tersedia, kumpulan gambar jeruk yang paling banyak jumlahnya dibandingkan dengan kumpulan gambar jeruk pada gambar di atas adalah. ...'),
                    const SizedBox(
                      height: 5,
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
                                        left:
                                            MediaQuery.of(context).size.width / 5,
                                        right: MediaQuery.of(context).size.width /
                                            5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.transparent,
                                      border: Border.all(
                                          width: 3.0,
                                          color: isPressedList[0]
                                              ? Colors.green
                                              : Colors.black),
                                    ),
                                    child: Card(
                                      color: Colors.transparent,
                                      shadowColor:
                                          Colors.transparent.withOpacity(0.1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Wrap(
                                            children: [
                                              const Text(
                                                'A.',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff006699),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/images/kelas2/seta_img_soal_no_1a.png'),
                                            ],
                                          ),
                                        ],
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
                                        left:
                                            MediaQuery.of(context).size.width / 5,
                                        right: MediaQuery.of(context).size.width /
                                            5),
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
                                      shadowColor:
                                          Colors.transparent.withOpacity(0.1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Wrap(
                                            children: [
                                              const Text(
                                                'B.',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff006699),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/images/kelas2/seta_img_soal_no_1b.png'),
                                            ],
                                          ),
                                        ],
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
                                        left:
                                            MediaQuery.of(context).size.width / 5,
                                        right: MediaQuery.of(context).size.width /
                                            5),
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
                                      shadowColor:
                                          Colors.transparent.withOpacity(0.1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Wrap(
                                            children: [
                                              const Text(
                                                'C.',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff006699),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/images/kelas2/seta_img_soal_no_1c.png'),
                                            ],
                                          ),
                                        ],
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
                                        left:
                                            MediaQuery.of(context).size.width / 5,
                                        right: MediaQuery.of(context).size.width /
                                            5),
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
                                      shadowColor:
                                          Colors.transparent.withOpacity(0.1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Wrap(
                                            alignment: WrapAlignment.start,
                                            direction: Axis.vertical,
                                            children: [
                                              const Text(
                                                'D.',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff006699),
                                                ),
                                              ),
                                              Image.asset(
                                                  'assets/images/kelas2/seta_img_soal_no_1d.png'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
