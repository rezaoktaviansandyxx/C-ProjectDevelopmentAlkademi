import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  List<bool> isPressedList = [false, false, false, false];
  final _assetsAudioPlayer = AssetsAudioPlayer();
  bool isVisibleIconSound = false;
  bool isVisibleAnswerA = false;
  bool isVisibleAnswerB = false;
  bool isVisibleAnswerC = false;
  bool isVisibleAnswerD = false;
  @override
  void initState() {
    openPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            const SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Tutorial',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
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
                    Visibility(
                      visible: isVisibleAnswerA,
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
                      ),
                    ),
                    Visibility(
                      visible: isVisibleAnswerB,
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
                                'B. 4',
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
                      visible: isVisibleAnswerC,
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
                                'C. 5',
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
                      visible: isVisibleAnswerD,
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
                                'D. 6',
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
                        isVisibleIconSound = false;
                      });
                      openPlayer2();
                    },
                    icon: const Icon(Icons.volume_up),
                  ),
                ),
                Visibility(
                  visible: isPressedList.contains(true),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/startscreen', (route) => false);
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

  openPlayer() async {
    await _assetsAudioPlayer.open(
      Audio('assets/audios/tutorial.m4a'),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = true;
      });
    });
  }

  openPlayer2() async {
    await _assetsAudioPlayer.open(
        Audio('assets/audios/tutorial2.m4a', playSpeed: 0.75),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
      });
    });
    _assetsAudioPlayer.currentPosition.listen((event) {
      setState(() {
        if (3154 <= event.inMilliseconds && event.inMilliseconds <= 3600) {
          isVisibleAnswerA = true;
        } else if (3437 <= event.inMilliseconds &&
            event.inMilliseconds <= 4010) {
          isVisibleAnswerB = true;
        } else if (4051 <= event.inMilliseconds &&
            event.inMilliseconds <= 4500) {
          isVisibleAnswerC = true;
        } else if (4658 <= event.inMilliseconds &&
            event.inMilliseconds <= 5000) {
          isVisibleAnswerD = true;
        }
      });
    });
  }
}
