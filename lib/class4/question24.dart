import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/class2/question2.dart';
import 'package:quiz_app/endscreen.dart';

class Question24Class4 extends StatefulWidget {
  const Question24Class4({super.key});

  @override
  State<Question24Class4> createState() => _Question24Class4State();
}

class _Question24Class4State extends State<Question24Class4> {
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
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content:
                      const Text('Apakah anda yakin ingin mengakhiri kuis?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Tidak',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await _assetAudioPlayer.stop();
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('End'),
                            content: const Text('Selesai'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EndScreen()),
                                      (route) => false);
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text(
                        'Ya',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: Image.asset('assets/images/close_cross.png'),
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
                'Agar taman depan rumah lebih menarik, ibu ingin membuat taman seperti pada gambar berikut.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff006699),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/images/class4/setb_img_soal_no_24.png'),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Untuk membuat taman berbentuk segitiga, setiap 1 meter memerlukan 5 pot tanaman. Apabila ukuran taman segitiga ibu adalah 3 meter, 4 meter, dan a meter dan tanaman yang dibutuhkan ibu adalah 60 pot, maka nilai a adalah ….',
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
                            child: const Expanded(
                              child: Text(
                                'A. 4',
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
                              child: const Expanded(
                                child: Text(
                                  'B. 5',
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
                              child: const Expanded(
                                child: Text(
                                  'C. 7',
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
                              child: const Expanded(
                                child: Text(
                                  'D. 8',
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
                              builder: (context) => const Question2Class2()));
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
      Audio('assets/audios/class4/item6.mp3'),
      autoStart: true,
    );
    _assetAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
      });
    });
    _assetAudioPlayer.currentPosition.listen((event) {
      setState(() {
        if (26600 <= event.inMilliseconds && event.inMilliseconds <= 27000) {
          isVisibleAnswerA = true;
        } else if (29081 <= event.inMilliseconds &&
            event.inMilliseconds <= 31000) {
          isVisibleAnswerB = true;
        } else if (31416 <= event.inMilliseconds &&
            event.inMilliseconds <= 33000) {
          isVisibleAnswerC = true;
        } else if (33564 <= event.inMilliseconds &&
            event.inMilliseconds <= 35000) {
          isVisibleAnswerD = true;
        }
      });
    });
  }
}
