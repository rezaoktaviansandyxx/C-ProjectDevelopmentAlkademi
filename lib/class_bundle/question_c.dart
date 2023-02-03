import 'dart:convert';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/models/soal_c_model.dart';
import 'package:quiz_app/utilities/custom_timer.dart';

class QuestionC extends StatefulWidget {
  const QuestionC({super.key});

  @override
  State<QuestionC> createState() => _QuestionCState();
}

class _QuestionCState extends State<QuestionC> {
  List<String> answerAbcd = ['A. ', 'B. ', 'C. ', 'D. ', 'E. '];
  final _assetAudioPlayer = AssetsAudioPlayer();
  final CtsmTimer timer = CtsmTimer();
  bool isVisibleIconSound = true;
  bool isVisibleAnswer = false;
  int selectedItem = -1;
  int addSoal = 1;
  int arrayIndex = 0;
  //Load JSON
  SoalC? result;
  Future _loadJson() async {
    String jsonString =
        await rootBundle.loadString('assets/jsonfile/soalc.json');
    final jsonData = jsonDecode(jsonString);
    SoalC soalb = SoalC.fromJson(jsonData);

    setState(() {
      result = soalb;
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
        title: Text(
          'SOAL $addSoal',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
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
                        timer.endTimer();
                        // ignore: use_build_context_synchronously
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('End'),
                            content: const Text('Selesai'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/endscreen', (route) => false);
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Builder(
          builder: (context) {
            if (result == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(children: [
              Builder(builder: (context) {
                final checkedImage = result!.data!.questions![arrayIndex].image;
                final checkedQuestion =
                    result?.data?.questions?[arrayIndex].question;
                String questionstring = checkedQuestion!;
                List<String> questionsplit = [];
                if (questionstring.contains("ini! ")) {
                  questionsplit = questionstring.split("ini! ");
                  questionsplit[0] += "ini!";
                } else if (questionstring.contains("ini. ")) {
                  questionsplit = questionstring.split("ini. ");
                  questionsplit[0] += "ini.";
                } else if (questionstring.contains("ini: ")) {
                  questionsplit = questionstring.split("ini: ");
                  questionsplit[0] += "ini:";
                } else if (questionstring.contains("berikut! ")) {
                  questionsplit = questionstring.split("berikut! ");
                  questionsplit[0] += "berikut!";
                } else if (questionstring.contains("satuan panjang. ")) {
                  questionsplit = questionstring.split("satuan panjang. ");
                  questionsplit[0] += "satuan panjang.";
                } else if (questionstring.contains("berikut. ")) {
                  questionsplit = questionstring.split("berikut. ");
                  questionsplit[0] += "berikut.";
                } else if (questionstring.contains("berikut: ")) {
                  questionsplit = questionstring.split("berikut: ");
                  questionsplit[0] += "berikut:";
                } else if (questionstring.contains("adalah sama! ")) {
                  questionsplit = questionstring.split("adalah sama! ");
                  questionsplit[0] += "adalah sama!";
                } else if (questionstring.contains("yang baru. ")) {
                  questionsplit = questionstring.split("yang baru. ");
                  questionsplit[0] += "yang baru.";
                } else if (questionstring.contains("yang berbeda-beda. ")) {
                  questionsplit = questionstring.split("yang berbeda-beda. ");
                  questionsplit[0] += "yang berbeda-beda.";
                } else if (questionstring.contains("sedang bermain puzzle. ")) {
                  questionsplit =
                      questionstring.split("sedang bermain puzzle. ");
                  questionsplit[0] += "sedang bermain puzzle.";
                }
                if (checkedImage!.isNotEmpty == true) {
                  if (questionsplit.length > 1) {
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            questionsplit[0],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/class6/$checkedImage',
                          errorBuilder: (context, error, stackTrace) =>
                              Container(),
                          height: MediaQuery.of(context).size.height * 20 / 100,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            questionsplit[1],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff006699),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      Image.asset(
                        'assets/images/class6/$checkedImage',
                        height: MediaQuery.of(context).size.height * 20 / 100,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          checkedQuestion,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff006699),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    checkedQuestion,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff006699),
                    ),
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
                children:
                    result!.data!.questions![arrayIndex].choices!.map((answer) {
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
                                        'assets/images/class6/${answer.image}',
                                        height: 60,
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
                  Builder(builder: (context) {
                    final isEnd = result!.data!.questions;
                    if (arrayIndex == isEnd!.length - 1) {
                      return Visibility(
                        visible: selectedItem >= 0,
                        child: ElevatedButton(
                          onPressed: () {
                            timer.endTimer();
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/endscreen', (route) => false);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff006699),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                            child: Text('Finish'),
                          ),
                        ),
                      );
                    }
                    return Visibility(
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
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Text('Next'),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ]);
          },
        ),
      ),
    );
  }

  openPlayer() async {
    await _assetAudioPlayer.open(
      Audio(
          'assets/audios/class6/${result?.data?.questions?[arrayIndex].audio}.mp3'),
      autoStart: true,
    );
    _assetAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
        isVisibleAnswer = true;
        timer.startTimer();
      });
    });
  }
}
