import 'dart:convert';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/models/intro_model.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  int selectedItem = -1;
  List<String> answerAbcd = ['A. ', 'B. ', 'C. ', 'D. '];
  final _assetsAudioPlayer = AssetsAudioPlayer();
  bool isVisibleIconSound = false;
  List isVisibleAnswer = [false, false, false, false];

  //Load JSON
  Intro? result;
  Future _loadJson() async {
    String jsonString =
        await rootBundle.loadString('assets/jsonfile/intro.json');
    final jsonData = jsonDecode(jsonString);
    Intro intro = Intro.fromJson(jsonData);

    setState(() {
      result = intro;
    });
  }

  @override
  void initState() {
    openPlayer();
    _loadJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            const SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Tutorial',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${result?.data?.questions?[0].question}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff006699),
                ),
              ),
            ),
            const Spacer(),
            Builder(builder: (context) {
              if (result == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Wrap(
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: result!.data!.questions![0].choices!.map((e) {
                    final index =
                        result!.data!.questions![0].choices!.indexOf(e);
                    return Visibility(
                        visible: isVisibleAnswer[index],
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = index;
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
                                    color: selectedItem == index
                                        ? Colors.green
                                        : Colors.black),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      answerAbcd[index],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${e.value}',
                                        style: const TextStyle(fontSize: 14),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ));
                  }).toList());
            }),
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
                      openPlayer2();
                    },
                    icon: const Icon(Icons.volume_up),
                  ),
                ),
                Visibility(
                  visible: selectedItem >= 0,
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
      Audio('assets/audios/misc_aktivasi_suara.mpeg'),
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
      Audio('assets/audios/tutorial.mp3'),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isVisibleIconSound = false;
      });
    });
    _assetsAudioPlayer.currentPosition.listen((event) {
      setState(() {
        if (7058 <= event.inMilliseconds && event.inMilliseconds <= 8500) {
          isVisibleAnswer[0] = true;
        } else if (8866 <= event.inMilliseconds &&
            event.inMilliseconds <= 9500) {
          isVisibleAnswer[1] = true;
        } else if (11020 <= event.inMilliseconds &&
            event.inMilliseconds <= 11500) {
          isVisibleAnswer[2] = true;
        } else if (13130 <= event.inMilliseconds &&
            event.inMilliseconds <= 13500) {
          isVisibleAnswer[3] = true;
        }
      });
    });
  }
}
