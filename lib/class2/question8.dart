import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question9.dart';

class Question8Class2 extends StatefulWidget {
  const Question8Class2({super.key});

  @override
  State<Question8Class2> createState() => _Question8Class2State();
}

class _Question8Class2State extends State<Question8Class2> {
  List<bool> isPressedList = [false, false, false, false];
  final _assetAudioPlayer = AssetsAudioPlayer();
  bool isVisibleIconSound = true;
  bool isVisibleAnswerA = false;
  bool isVisibleAnswerB = false;
  bool isVisibleAnswerC = false;
  bool isVisibleAnswerD = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'SOAL 8',
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
                'Perhatikan keempat gambar yang berwarna merah dan putih pada pilihan di bawah ini! Apabila bagian yang berwarna merah dibandingkan dengan keseluruhan pada setiap gambar, maka gambar yang menunjukkan nilai bilangan pecahan setengah adalah. ...',
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
                            height: MediaQuery.of(context).size.height / 5,
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'A.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff006699),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    'assets/images/class2/seta_img_soal_no_8a.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
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
                            height: MediaQuery.of(context).size.height / 5,
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'B.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff006699),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                      'assets/images/class2/seta_img_soal_no_8b.png',
                                      fit: BoxFit.contain,
                                    ),
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
                            height: MediaQuery.of(context).size.height / 5,
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'C.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff006699),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                      'assets/images/class2/seta_img_soal_no_8c.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
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
                            height: MediaQuery.of(context).size.height / 5,
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'D.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff006699),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                      'assets/images/class2/seta_img_soal_no_8d.png',
                                      fit: BoxFit.contain,
                                    ),
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
                      openPlayer();
                    },
                    icon: const Icon(Icons.volume_up),
                  ),
                ),
                Visibility(
                  visible: isPressedList.contains(true),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Question9Class2()));
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
    await _assetAudioPlayer.open(
      Audio('assets/audios/class2/item8.mp3'),
      autoStart: true,
    );
    _assetAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
      });
    });
    _assetAudioPlayer.currentPosition.listen((event) {
      setState(() {
        if (25769 <= event.inMilliseconds && event.inMilliseconds <= 26500) {
          isVisibleAnswerA = true;
        } else if (27881 <= event.inMilliseconds &&
            event.inMilliseconds <= 28500) {
          isVisibleAnswerB = true;
        } else if (30285 <= event.inMilliseconds &&
            event.inMilliseconds <= 31500) {
          isVisibleAnswerC = true;
        } else if (31798 <= event.inMilliseconds &&
            event.inMilliseconds <= 32500) {
          isVisibleAnswerD = true;
        }
      });
    });
  }
}
