import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  List<bool> isPressedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Tutorial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Berapakah hasil 2 ditambah 2?',
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
                    GestureDetector(
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
                        child: Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'A. 3',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
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
                            'B. 4',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
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
                    GestureDetector(
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
                              color: isPressedList[2] ? Colors.green : Colors.black),
                        ),
                        child: Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'C. 5',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
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
                              color: isPressedList[3] ? Colors.green : Colors.black),
                        ),
                        child: Card(
                          color: Colors.transparent,
                          shadowColor: Colors.transparent.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'D. 6',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_up),
                ),
                ElevatedButton(
                  onPressed: () {
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
