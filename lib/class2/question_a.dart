import 'dart:convert';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/endscreen.dart';
import 'package:quiz_app/model/api_soal_a.dart';

class QuestionA extends StatefulWidget {
  const QuestionA({super.key});

  @override
  State<QuestionA> createState() => _QuestionAState();
}

class _QuestionAState extends State<QuestionA> {
  int selectedItem = -1;
  List<String> answerAbcd = ['A. ', 'B. ', 'C. ', 'D. '];
  final _assetAudioPlayer = AssetsAudioPlayer();
  bool isVisibleIconSound = true;
  bool isVisibleAnswer = false;
  int addSoal = 1;
  int arrayIndex = 0;
  //Load JSON
  SoalA? result;
  Future _loadJson() async {
    String jsonString =
        await rootBundle.loadString('assets/jsonfile/soala.json');
    final jsonData = jsonDecode(jsonString);
    SoalA soala = SoalA.fromJson(jsonData);

    setState(() {
      result = soala;
    });
  }

  @override
  void initState() {
    _loadJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOAL $addSoal',
            style: const TextStyle(
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
                        // ignore: use_build_context_synchronously
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Builder(
            builder: (context) {
              if (result == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(children: [
                Builder(builder: (context) {
                  if (result?.data?.questions?[arrayIndex].image?.isNotEmpty ==
                      true) {
                    final splitQuestion = result
                        ?.data?.questions?[arrayIndex].question
                        ?.split('berikut!');
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            splitQuestion![0],
                          ),
                        ),
                        Image.asset(
                          'assets/images/class2/${result!.data!.questions![arrayIndex].image}',
                          errorBuilder: (context, error, stackTrace) =>
                              Container(),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            splitQuestion[1],
                          ),
                        ),
                      ],
                    );
                  }
                  return Text(
                    '${result?.data?.questions?[arrayIndex].question}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff006699),
                    ),
                  );
                }),
                const SizedBox(
                  height: 5,
                ),
                const Spacer(),
                Wrap(
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: result!.data!.questions![arrayIndex].choices!
                      .map((answer) {
                    final index2 = result!.data!.questions![arrayIndex].choices!
                        .indexOf(answer);
                    return Visibility(
                      visible: isVisibleAnswer,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedItem = index2;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent,
                            border: Border.all(
                                width: 3.0,
                                color: selectedItem == index2
                                    ? Colors.green
                                    : Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  answerAbcd[index2],
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Expanded(
                                  child: answer.image == null ||
                                          answer.image!.isEmpty
                                      ? Text(
                                          '${answer.value}',
                                          textAlign: TextAlign.center,
                                        )
                                      : Image.asset(
                                          'assets/images/class2/${answer.image}',
                                          height: 50,
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
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
                      visible: selectedItem >= 0,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addSoal++;
                            arrayIndex++;
                            isVisibleAnswer = false;
                            isVisibleIconSound = true;
                            selectedItem = -1;
                          });
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
              ]);
            },
          ),
        ),
      ),
    );
  }

  openPlayer() async {
    await _assetAudioPlayer.open(
      Audio(
          'assets/audios/class2/${result?.data?.questions?[arrayIndex].audio}.mp3'),
      autoStart: true,
    );
    _assetAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
        isVisibleAnswer = true;
      });
    });
    // _assetAudioPlayer.currentPosition.listen((event) {
    //   setState(() {
    //     if (26600 <= event.inMilliseconds && event.inMilliseconds <= 27000) {
    //       isVisibleAnswerA = true;
    //     } else if (29081 <= event.inMilliseconds &&
    //         event.inMilliseconds <= 31000) {
    //       isVisibleAnswerB = true;
    //     } else if (31416 <= event.inMilliseconds &&
    //         event.inMilliseconds <= 33000) {
    //       isVisibleAnswerC = true;
    //     } else if (33564 <= event.inMilliseconds &&
    //         event.inMilliseconds <= 35000) {
    //       isVisibleAnswerD = true;
    //     }
    //   });
    // });
  }
}
